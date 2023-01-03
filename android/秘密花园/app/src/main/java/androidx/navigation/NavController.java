package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.TaskStackBuilder;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import f.b.a.a.a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class NavController {
    public static final String KEY_BACK_STACK_ARGS = "android-support-nav:controller:backStackArgs";
    public static final String KEY_BACK_STACK_IDS = "android-support-nav:controller:backStackIds";
    public static final String KEY_BACK_STACK_UUIDS = "android-support-nav:controller:backStackUUIDs";
    public static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";
    public static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";
    public static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";
    @NonNull
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    public static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    public static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    public static final String TAG = "NavController";
    public Activity mActivity;
    public Parcelable[] mBackStackArgsToRestore;
    public int[] mBackStackIdsToRestore;
    public String[] mBackStackUUIDsToRestore;
    public final Context mContext;
    public boolean mDeepLinkHandled;
    public NavGraph mGraph;
    public NavInflater mInflater;
    public LifecycleOwner mLifecycleOwner;
    public Bundle mNavigatorStateToRestore;
    public NavControllerViewModel mViewModel;
    public final Deque<NavBackStackEntry> mBackStack = new ArrayDeque();
    public final NavigatorProvider mNavigatorProvider = new NavigatorProvider();
    public final CopyOnWriteArrayList<OnDestinationChangedListener> mOnDestinationChangedListeners = new CopyOnWriteArrayList<>();
    public final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(false) { // from class: androidx.navigation.NavController.1
        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            NavController.this.popBackStack();
        }
    };
    public boolean mEnableOnBackPressedCallback = true;

    /* loaded from: classes.dex */
    public interface OnDestinationChangedListener {
        void onDestinationChanged(@NonNull NavController navController, @NonNull NavDestination navDestination, @Nullable Bundle bundle);
    }

    public NavController(@NonNull Context context) {
        this.mContext = context;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            } else if (context instanceof Activity) {
                this.mActivity = (Activity) context;
                break;
            } else {
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        NavigatorProvider navigatorProvider = this.mNavigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this.mNavigatorProvider.addNavigator(new ActivityNavigator(this.mContext));
    }

    private boolean dispatchOnDestinationChanged() {
        while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof NavGraph) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
        }
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        NavBackStackEntry peekLast = this.mBackStack.peekLast();
        Iterator<OnDestinationChangedListener> it = this.mOnDestinationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestinationChanged(this, peekLast.getDestination(), peekLast.getArguments());
        }
        return true;
    }

    @Nullable
    private String findInvalidDestinationDisplayNameInDeepLink(@NonNull int[] iArr) {
        NavGraph navGraph;
        NavGraph navGraph2 = this.mGraph;
        int i2 = 0;
        while (i2 < iArr.length) {
            int i3 = iArr[i2];
            NavDestination findNode = i2 == 0 ? this.mGraph : navGraph2.findNode(i3);
            if (findNode == null) {
                return NavDestination.getDisplayName(this.mContext, i3);
            }
            if (i2 != iArr.length - 1) {
                while (true) {
                    navGraph = (NavGraph) findNode;
                    if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                        break;
                    }
                    findNode = navGraph.findNode(navGraph.getStartDestination());
                }
                navGraph2 = navGraph;
            }
            i2++;
        }
        return null;
    }

    private int getDestinationCountOnBackStack() {
        int i2 = 0;
        for (NavBackStackEntry navBackStackEntry : this.mBackStack) {
            if (!(navBackStackEntry.getDestination() instanceof NavGraph)) {
                i2++;
            }
        }
        return i2;
    }

    private void onGraphCreated(@Nullable Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.mNavigatorStateToRestore;
        if (!(bundle2 == null || (stringArrayList = bundle2.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) == null)) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Navigator navigator = this.mNavigatorProvider.getNavigator(next);
                Bundle bundle3 = this.mNavigatorStateToRestore.getBundle(next);
                if (bundle3 != null) {
                    navigator.onRestoreState(bundle3);
                }
            }
        }
        boolean z = false;
        if (this.mBackStackUUIDsToRestore != null) {
            int i2 = 0;
            while (true) {
                String[] strArr = this.mBackStackUUIDsToRestore;
                if (i2 >= strArr.length) {
                    updateOnBackPressedCallbackEnabled();
                    this.mBackStackUUIDsToRestore = null;
                    this.mBackStackIdsToRestore = null;
                    this.mBackStackArgsToRestore = null;
                    break;
                }
                UUID fromString = UUID.fromString(strArr[i2]);
                int i3 = this.mBackStackIdsToRestore[i2];
                Bundle bundle4 = (Bundle) this.mBackStackArgsToRestore[i2];
                NavDestination findDestination = findDestination(i3);
                if (findDestination != null) {
                    if (bundle4 != null) {
                        bundle4.setClassLoader(this.mContext.getClassLoader());
                    }
                    this.mBackStack.add(new NavBackStackEntry(fromString, findDestination, bundle4, this.mViewModel));
                    i2++;
                } else {
                    StringBuilder o = a.o("unknown destination during restore: ");
                    o.append(this.mContext.getResources().getResourceName(i3));
                    throw new IllegalStateException(o.toString());
                }
            }
        }
        if (this.mGraph != null && this.mBackStack.isEmpty()) {
            if (!this.mDeepLinkHandled && (activity = this.mActivity) != null && handleDeepLink(activity.getIntent())) {
                z = true;
            }
            if (!z) {
                navigate(this.mGraph, bundle, (NavOptions) null, (Navigator.Extras) null);
            }
        }
    }

    private void updateOnBackPressedCallbackEnabled() {
        OnBackPressedCallback onBackPressedCallback = this.mOnBackPressedCallback;
        boolean z = true;
        if (!this.mEnableOnBackPressedCallback || getDestinationCountOnBackStack() <= 1) {
            z = false;
        }
        onBackPressedCallback.setEnabled(z);
    }

    public void addOnDestinationChangedListener(@NonNull OnDestinationChangedListener onDestinationChangedListener) {
        if (!this.mBackStack.isEmpty()) {
            NavBackStackEntry peekLast = this.mBackStack.peekLast();
            onDestinationChangedListener.onDestinationChanged(this, peekLast.getDestination(), peekLast.getArguments());
        }
        this.mOnDestinationChangedListeners.add(onDestinationChangedListener);
    }

    @NonNull
    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    public void enableOnBackPressed(boolean z) {
        this.mEnableOnBackPressedCallback = z;
        updateOnBackPressedCallbackEnabled();
    }

    public NavDestination findDestination(@IdRes int i2) {
        NavDestination navDestination;
        NavGraph navGraph;
        NavGraph navGraph2 = this.mGraph;
        if (navGraph2 == null) {
            return null;
        }
        if (navGraph2.getId() == i2) {
            return this.mGraph;
        }
        if (this.mBackStack.isEmpty()) {
            navDestination = this.mGraph;
        } else {
            navDestination = this.mBackStack.getLast().getDestination();
        }
        if (navDestination instanceof NavGraph) {
            navGraph = navDestination;
        } else {
            navGraph = navDestination.getParent();
        }
        return navGraph.findNode(i2);
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @Nullable
    public NavDestination getCurrentDestination() {
        if (this.mBackStack.isEmpty()) {
            return null;
        }
        return this.mBackStack.getLast().getDestination();
    }

    @NonNull
    public NavGraph getGraph() {
        NavGraph navGraph = this.mGraph;
        if (navGraph != null) {
            return navGraph;
        }
        throw new IllegalStateException("You must call setGraph() before calling getGraph()");
    }

    @NonNull
    public NavInflater getNavInflater() {
        if (this.mInflater == null) {
            this.mInflater = new NavInflater(this.mContext, this.mNavigatorProvider);
        }
        return this.mInflater;
    }

    @NonNull
    public NavigatorProvider getNavigatorProvider() {
        return this.mNavigatorProvider;
    }

    @NonNull
    public ViewModelStoreOwner getViewModelStoreOwner(@IdRes int i2) {
        if (this.mViewModel != null) {
            NavBackStackEntry navBackStackEntry = null;
            Iterator<NavBackStackEntry> descendingIterator = this.mBackStack.descendingIterator();
            while (true) {
                if (!descendingIterator.hasNext()) {
                    break;
                }
                NavBackStackEntry next = descendingIterator.next();
                NavDestination destination = next.getDestination();
                if ((destination instanceof NavGraph) && destination.getId() == i2) {
                    navBackStackEntry = next;
                    break;
                }
            }
            if (navBackStackEntry != null) {
                return navBackStackEntry;
            }
            throw new IllegalArgumentException(a.K("No NavGraph with ID ", i2, " is on the NavController's back stack"));
        }
        throw new IllegalStateException("You must call setViewModelStore() before calling getViewModelStoreOwner().");
    }

    public boolean handleDeepLink(@Nullable Intent intent) {
        NavGraph navGraph;
        NavDestination.DeepLinkMatch matchDeepLink;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null;
        Bundle bundle = new Bundle();
        Bundle bundle2 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (!((intArray != null && intArray.length != 0) || intent.getData() == null || (matchDeepLink = this.mGraph.matchDeepLink(intent.getData())) == null)) {
            intArray = matchDeepLink.getDestination().buildDeepLinkIds();
            bundle.putAll(matchDeepLink.getMatchingArgs());
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String findInvalidDestinationDisplayNameInDeepLink = findInvalidDestinationDisplayNameInDeepLink(intArray);
        if (findInvalidDestinationDisplayNameInDeepLink != null) {
            String str = "Could not find destination " + findInvalidDestinationDisplayNameInDeepLink + " in the navigation graph, ignoring the deep link from " + intent;
            return false;
        }
        bundle.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        int flags = intent.getFlags();
        int i2 = 268435456 & flags;
        if (i2 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            TaskStackBuilder.create(this.mContext).addNextIntentWithParentStack(intent).startActivities();
            Activity activity = this.mActivity;
            if (activity != null) {
                activity.finish();
                this.mActivity.overridePendingTransition(0, 0);
            }
            return true;
        } else if (i2 != 0) {
            if (!this.mBackStack.isEmpty()) {
                popBackStackInternal(this.mGraph.getId(), true);
            }
            int i3 = 0;
            while (i3 < intArray.length) {
                int i4 = i3 + 1;
                int i5 = intArray[i3];
                NavDestination findDestination = findDestination(i5);
                if (findDestination != null) {
                    navigate(findDestination, bundle, new NavOptions.Builder().setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
                    i3 = i4;
                } else {
                    StringBuilder o = a.o("unknown destination during deep link: ");
                    o.append(NavDestination.getDisplayName(this.mContext, i5));
                    throw new IllegalStateException(o.toString());
                }
            }
            return true;
        } else {
            NavGraph navGraph2 = this.mGraph;
            int i6 = 0;
            while (i6 < intArray.length) {
                int i7 = intArray[i6];
                NavDestination findNode = i6 == 0 ? this.mGraph : navGraph2.findNode(i7);
                if (findNode != null) {
                    if (i6 != intArray.length - 1) {
                        while (true) {
                            navGraph = (NavGraph) findNode;
                            if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                                break;
                            }
                            findNode = navGraph.findNode(navGraph.getStartDestination());
                        }
                        navGraph2 = navGraph;
                    } else {
                        navigate(findNode, findNode.addInDefaultArgs(bundle), new NavOptions.Builder().setPopUpTo(this.mGraph.getId(), true).setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
                    }
                    i6++;
                } else {
                    StringBuilder o2 = a.o("unknown destination during deep link: ");
                    o2.append(NavDestination.getDisplayName(this.mContext, i7));
                    throw new IllegalStateException(o2.toString());
                }
            }
            this.mDeepLinkHandled = true;
            return true;
        }
    }

    public void navigate(@IdRes int i2) {
        navigate(i2, (Bundle) null);
    }

    public boolean navigateUp() {
        if (getDestinationCountOnBackStack() != 1) {
            return popBackStack();
        }
        NavDestination currentDestination = getCurrentDestination();
        int id = currentDestination.getId();
        for (NavGraph parent = currentDestination.getParent(); parent != null; parent = parent.getParent()) {
            if (parent.getStartDestination() != id) {
                new NavDeepLinkBuilder(this).setDestination(parent.getId()).createTaskStackBuilder().startActivities();
                Activity activity = this.mActivity;
                if (activity != null) {
                    activity.finish();
                }
                return true;
            }
            id = parent.getId();
        }
        return false;
    }

    public boolean popBackStack() {
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        return popBackStack(getCurrentDestination().getId(), true);
    }

    public boolean popBackStackInternal(@IdRes int i2, boolean z) {
        boolean z2;
        boolean z3 = false;
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<NavBackStackEntry> descendingIterator = this.mBackStack.descendingIterator();
        while (true) {
            if (!descendingIterator.hasNext()) {
                z2 = false;
                break;
            }
            NavDestination destination = descendingIterator.next().getDestination();
            Navigator navigator = this.mNavigatorProvider.getNavigator(destination.getNavigatorName());
            if (z || destination.getId() != i2) {
                arrayList.add(navigator);
            }
            if (destination.getId() == i2) {
                z2 = true;
                break;
            }
        }
        if (!z2) {
            NavDestination.getDisplayName(this.mContext, i2);
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext() && ((Navigator) it.next()).popBackStack()) {
            NavBackStackEntry removeLast = this.mBackStack.removeLast();
            NavControllerViewModel navControllerViewModel = this.mViewModel;
            if (navControllerViewModel != null) {
                navControllerViewModel.clear(removeLast.mId);
            }
            z3 = true;
        }
        updateOnBackPressedCallbackEnabled();
        return z3;
    }

    public void removeOnDestinationChangedListener(@NonNull OnDestinationChangedListener onDestinationChangedListener) {
        this.mOnDestinationChangedListeners.remove(onDestinationChangedListener);
    }

    @CallSuper
    public void restoreState(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(this.mContext.getClassLoader());
            this.mNavigatorStateToRestore = bundle.getBundle(KEY_NAVIGATOR_STATE);
            this.mBackStackUUIDsToRestore = bundle.getStringArray(KEY_BACK_STACK_UUIDS);
            this.mBackStackIdsToRestore = bundle.getIntArray(KEY_BACK_STACK_IDS);
            this.mBackStackArgsToRestore = bundle.getParcelableArray(KEY_BACK_STACK_ARGS);
            this.mDeepLinkHandled = bundle.getBoolean(KEY_DEEP_LINK_HANDLED);
        }
    }

    @Nullable
    @CallSuper
    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this.mNavigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle onSaveState = entry.getValue().onSaveState();
            if (onSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, onSaveState);
            }
        }
        if (!arrayList.isEmpty()) {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        } else {
            bundle = null;
        }
        if (!this.mBackStack.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            String[] strArr = new String[this.mBackStack.size()];
            int[] iArr = new int[this.mBackStack.size()];
            Parcelable[] parcelableArr = new Parcelable[this.mBackStack.size()];
            int i2 = 0;
            for (NavBackStackEntry navBackStackEntry : this.mBackStack) {
                strArr[i2] = navBackStackEntry.mId.toString();
                iArr[i2] = navBackStackEntry.getDestination().getId();
                parcelableArr[i2] = navBackStackEntry.getArguments();
                i2++;
            }
            bundle.putStringArray(KEY_BACK_STACK_UUIDS, strArr);
            bundle.putIntArray(KEY_BACK_STACK_IDS, iArr);
            bundle.putParcelableArray(KEY_BACK_STACK_ARGS, parcelableArr);
        }
        if (this.mDeepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.mDeepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    public void setGraph(@NavigationRes int i2) {
        setGraph(i2, (Bundle) null);
    }

    public void setLifecycleOwner(@NonNull LifecycleOwner lifecycleOwner) {
        this.mLifecycleOwner = lifecycleOwner;
    }

    public void setOnBackPressedDispatcher(@NonNull OnBackPressedDispatcher onBackPressedDispatcher) {
        if (this.mLifecycleOwner != null) {
            this.mOnBackPressedCallback.remove();
            onBackPressedDispatcher.addCallback(this.mLifecycleOwner, this.mOnBackPressedCallback);
            return;
        }
        throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
    }

    public void setViewModelStore(@NonNull ViewModelStore viewModelStore) {
        this.mViewModel = NavControllerViewModel.getInstance(viewModelStore);
        for (NavBackStackEntry navBackStackEntry : this.mBackStack) {
            navBackStackEntry.setNavControllerViewModel(this.mViewModel);
        }
    }

    public void navigate(@IdRes int i2, @Nullable Bundle bundle) {
        navigate(i2, bundle, (NavOptions) null);
    }

    @CallSuper
    public void setGraph(@NavigationRes int i2, @Nullable Bundle bundle) {
        setGraph(getNavInflater().inflate(i2), bundle);
    }

    public void navigate(@IdRes int i2, @Nullable Bundle bundle, @Nullable NavOptions navOptions) {
        navigate(i2, bundle, navOptions, (Navigator.Extras) null);
    }

    public boolean popBackStack(@IdRes int i2, boolean z) {
        return popBackStackInternal(i2, z) && dispatchOnDestinationChanged();
    }

    @CallSuper
    public void setGraph(@NonNull NavGraph navGraph) {
        setGraph(navGraph, (Bundle) null);
    }

    public void navigate(@IdRes int i2, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        NavDestination navDestination;
        int i3;
        String str;
        if (this.mBackStack.isEmpty()) {
            navDestination = this.mGraph;
        } else {
            navDestination = this.mBackStack.getLast().getDestination();
        }
        if (navDestination != null) {
            NavAction action = navDestination.getAction(i2);
            Bundle bundle2 = null;
            if (action != null) {
                if (navOptions == null) {
                    navOptions = action.getNavOptions();
                }
                i3 = action.getDestinationId();
                Bundle defaultArguments = action.getDefaultArguments();
                if (defaultArguments != null) {
                    bundle2 = new Bundle();
                    bundle2.putAll(defaultArguments);
                }
            } else {
                i3 = i2;
            }
            if (bundle != null) {
                if (bundle2 == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putAll(bundle);
            }
            if (i3 == 0 && navOptions != null && navOptions.getPopUpTo() != -1) {
                popBackStack(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
            } else if (i3 != 0) {
                NavDestination findDestination = findDestination(i3);
                if (findDestination == null) {
                    StringBuilder r = a.r("navigation destination ", NavDestination.getDisplayName(this.mContext, i3));
                    if (action != null) {
                        StringBuilder o = a.o(" referenced from action ");
                        o.append(NavDestination.getDisplayName(this.mContext, i2));
                        str = o.toString();
                    } else {
                        str = "";
                    }
                    throw new IllegalArgumentException(a.l(r, str, " is unknown to this NavController"));
                }
                navigate(findDestination, bundle2, navOptions, extras);
            } else {
                throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
            }
        } else {
            throw new IllegalStateException("no current navigation node");
        }
    }

    @CallSuper
    public void setGraph(@NonNull NavGraph navGraph, @Nullable Bundle bundle) {
        NavGraph navGraph2 = this.mGraph;
        if (navGraph2 != null) {
            popBackStackInternal(navGraph2.getId(), true);
        }
        this.mGraph = navGraph;
        onGraphCreated(bundle);
    }

    public void navigate(@NonNull Uri uri) {
        navigate(uri, (NavOptions) null);
    }

    public void navigate(@NonNull Uri uri, @Nullable NavOptions navOptions) {
        navigate(uri, navOptions, (Navigator.Extras) null);
    }

    public void navigate(@NonNull Uri uri, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        NavDestination.DeepLinkMatch matchDeepLink = this.mGraph.matchDeepLink(uri);
        if (matchDeepLink != null) {
            navigate(matchDeepLink.getDestination(), matchDeepLink.getMatchingArgs(), navOptions, extras);
            return;
        }
        throw new IllegalArgumentException("navigation destination with deepLink " + uri + " is unknown to this NavController");
    }

    private void navigate(@NonNull NavDestination navDestination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        boolean popBackStackInternal = (navOptions == null || navOptions.getPopUpTo() == -1) ? false : popBackStackInternal(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
        Navigator navigator = this.mNavigatorProvider.getNavigator(navDestination.getNavigatorName());
        Bundle addInDefaultArgs = navDestination.addInDefaultArgs(bundle);
        NavDestination navigate = navigator.navigate(navDestination, addInDefaultArgs, navOptions, extras);
        if (navigate != null) {
            if (!(navigate instanceof FloatingWindow)) {
                while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof FloatingWindow) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
                }
            }
            if (this.mBackStack.isEmpty()) {
                this.mBackStack.add(new NavBackStackEntry(this.mGraph, addInDefaultArgs, this.mViewModel));
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            NavGraph navGraph = navigate;
            while (navGraph != null && findDestination(navGraph.getId()) == null) {
                navGraph = navGraph.getParent();
                if (navGraph != null) {
                    arrayDeque.addFirst(new NavBackStackEntry(navGraph, addInDefaultArgs, this.mViewModel));
                }
            }
            this.mBackStack.addAll(arrayDeque);
            this.mBackStack.add(new NavBackStackEntry(navigate, navigate.addInDefaultArgs(addInDefaultArgs), this.mViewModel));
        }
        updateOnBackPressedCallbackEnabled();
        if (popBackStackInternal || navigate != null) {
            dispatchOnDestinationChanged();
        }
    }

    public void navigate(@NonNull NavDirections navDirections) {
        navigate(navDirections.getActionId(), navDirections.getArguments());
    }

    public void navigate(@NonNull NavDirections navDirections, @Nullable NavOptions navOptions) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), navOptions);
    }

    public void navigate(@NonNull NavDirections navDirections, @NonNull Navigator.Extras extras) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), (NavOptions) null, extras);
    }
}
