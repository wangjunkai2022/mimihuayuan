package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import f.b.a.a.a;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class NavDestination {
    public static final HashMap<String, Class<?>> sClasses = new HashMap<>();
    public SparseArrayCompat<NavAction> mActions;
    public HashMap<String, NavArgument> mArguments;
    public ArrayList<NavDeepLink> mDeepLinks;
    public int mId;
    public String mIdName;
    public CharSequence mLabel;
    public final String mNavigatorName;
    public NavGraph mParent;

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ClassType {
        Class<?> value();
    }

    /* loaded from: classes.dex */
    public static class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        @NonNull
        public final NavDestination mDestination;
        public final boolean mIsExactDeepLink;
        @NonNull
        public final Bundle mMatchingArgs;

        public DeepLinkMatch(@NonNull NavDestination navDestination, @NonNull Bundle bundle, boolean z) {
            this.mDestination = navDestination;
            this.mMatchingArgs = bundle;
            this.mIsExactDeepLink = z;
        }

        @NonNull
        public NavDestination getDestination() {
            return this.mDestination;
        }

        @NonNull
        public Bundle getMatchingArgs() {
            return this.mMatchingArgs;
        }

        @Override // java.lang.Comparable
        public int compareTo(DeepLinkMatch deepLinkMatch) {
            if (!this.mIsExactDeepLink || deepLinkMatch.mIsExactDeepLink) {
                if (this.mIsExactDeepLink || !deepLinkMatch.mIsExactDeepLink) {
                    return this.mMatchingArgs.size() - deepLinkMatch.mMatchingArgs.size();
                }
                return -1;
            }
            return 1;
        }
    }

    public NavDestination(@NonNull Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.getNameForNavigator(navigator.getClass()));
    }

    @NonNull
    public static String getDisplayName(@NonNull Context context, int i2) {
        try {
            return context.getResources().getResourceName(i2);
        } catch (Resources.NotFoundException unused) {
            return Integer.toString(i2);
        }
    }

    @NonNull
    public static <C> Class<? extends C> parseClassFromName(@NonNull Context context, @NonNull String str, @NonNull Class<? extends C> cls) {
        if (str.charAt(0) == '.') {
            str = context.getPackageName() + str;
        }
        Class<? extends C> cls2 = (Class<? extends C>) sClasses.get(str);
        if (cls2 == null) {
            try {
                cls2 = (Class<? extends C>) Class.forName(str, true, context.getClassLoader());
                sClasses.put(str, cls2);
            } catch (ClassNotFoundException e2) {
                throw new IllegalArgumentException(e2);
            }
        }
        if (cls.isAssignableFrom(cls2)) {
            return cls2;
        }
        throw new IllegalArgumentException(str + " must be a subclass of " + cls);
    }

    public final void addArgument(@NonNull String str, @NonNull NavArgument navArgument) {
        if (this.mArguments == null) {
            this.mArguments = new HashMap<>();
        }
        this.mArguments.put(str, navArgument);
    }

    public final void addDeepLink(@NonNull String str) {
        if (this.mDeepLinks == null) {
            this.mDeepLinks = new ArrayList<>();
        }
        this.mDeepLinks.add(new NavDeepLink(str));
    }

    @Nullable
    public Bundle addInDefaultArgs(@Nullable Bundle bundle) {
        HashMap<String, NavArgument> hashMap;
        if (bundle == null && ((hashMap = this.mArguments) == null || hashMap.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        HashMap<String, NavArgument> hashMap2 = this.mArguments;
        if (hashMap2 != null) {
            for (Map.Entry<String, NavArgument> entry : hashMap2.entrySet()) {
                entry.getValue().putDefaultValue(entry.getKey(), bundle2);
            }
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            HashMap<String, NavArgument> hashMap3 = this.mArguments;
            if (hashMap3 != null) {
                for (Map.Entry<String, NavArgument> entry2 : hashMap3.entrySet()) {
                    if (!entry2.getValue().verify(entry2.getKey(), bundle)) {
                        StringBuilder o = a.o("Wrong argument type for '");
                        o.append(entry2.getKey());
                        o.append("' in argument bundle. ");
                        o.append(entry2.getValue().getType().getName());
                        o.append(" expected.");
                        throw new IllegalArgumentException(o.toString());
                    }
                }
            }
        }
        return bundle2;
    }

    @NonNull
    public int[] buildDeepLinkIds() {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavDestination navDestination = this;
        while (true) {
            NavGraph parent = navDestination.getParent();
            if (parent == null || parent.getStartDestination() != navDestination.getId()) {
                arrayDeque.addFirst(navDestination);
            }
            if (parent == null) {
                break;
            }
            navDestination = parent;
        }
        int[] iArr = new int[arrayDeque.size()];
        int i2 = 0;
        Iterator it = arrayDeque.iterator();
        while (it.hasNext()) {
            iArr[i2] = ((NavDestination) it.next()).getId();
            i2++;
        }
        return iArr;
    }

    @Nullable
    public final NavAction getAction(@IdRes int i2) {
        SparseArrayCompat<NavAction> sparseArrayCompat = this.mActions;
        NavAction navAction = sparseArrayCompat == null ? null : sparseArrayCompat.get(i2);
        if (navAction != null) {
            return navAction;
        }
        if (getParent() != null) {
            return getParent().getAction(i2);
        }
        return null;
    }

    @NonNull
    public final Map<String, NavArgument> getArguments() {
        HashMap<String, NavArgument> hashMap = this.mArguments;
        return hashMap == null ? Collections.emptyMap() : Collections.unmodifiableMap(hashMap);
    }

    @IdRes
    public final int getId() {
        return this.mId;
    }

    @Nullable
    public final CharSequence getLabel() {
        return this.mLabel;
    }

    @NonNull
    public final String getNavigatorName() {
        return this.mNavigatorName;
    }

    @Nullable
    public final NavGraph getParent() {
        return this.mParent;
    }

    public boolean hasDeepLink(@NonNull Uri uri) {
        return matchDeepLink(uri) != null;
    }

    @Nullable
    public DeepLinkMatch matchDeepLink(@NonNull Uri uri) {
        ArrayList<NavDeepLink> arrayList = this.mDeepLinks;
        DeepLinkMatch deepLinkMatch = null;
        if (arrayList == null) {
            return null;
        }
        Iterator<NavDeepLink> it = arrayList.iterator();
        while (it.hasNext()) {
            NavDeepLink next = it.next();
            Bundle matchingArguments = next.getMatchingArguments(uri, getArguments());
            if (matchingArguments != null) {
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, next.isExactDeepLink());
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    @CallSuper
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.Navigator);
        setId(obtainAttributes.getResourceId(androidx.navigation.common.R.styleable.Navigator_android_id, 0));
        this.mIdName = getDisplayName(context, this.mId);
        setLabel(obtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label));
        obtainAttributes.recycle();
    }

    public final void putAction(@IdRes int i2, @IdRes int i3) {
        putAction(i2, new NavAction(i3));
    }

    public final void removeAction(@IdRes int i2) {
        SparseArrayCompat<NavAction> sparseArrayCompat = this.mActions;
        if (sparseArrayCompat == null) {
            return;
        }
        sparseArrayCompat.delete(i2);
    }

    public final void removeArgument(@NonNull String str) {
        HashMap<String, NavArgument> hashMap = this.mArguments;
        if (hashMap == null) {
            return;
        }
        hashMap.remove(str);
    }

    public final void setId(@IdRes int i2) {
        this.mId = i2;
        this.mIdName = null;
    }

    public final void setLabel(@Nullable CharSequence charSequence) {
        this.mLabel = charSequence;
    }

    public final void setParent(NavGraph navGraph) {
        this.mParent = navGraph;
    }

    public boolean supportsActions() {
        return true;
    }

    public NavDestination(@NonNull String str) {
        this.mNavigatorName = str;
    }

    public final void putAction(@IdRes int i2, @NonNull NavAction navAction) {
        if (supportsActions()) {
            if (i2 != 0) {
                if (this.mActions == null) {
                    this.mActions = new SparseArrayCompat<>();
                }
                this.mActions.put(i2, navAction);
                return;
            }
            throw new IllegalArgumentException("Cannot have an action with actionId 0");
        }
        throw new UnsupportedOperationException("Cannot add action " + i2 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    @NonNull
    public String getDisplayName() {
        if (this.mIdName == null) {
            this.mIdName = Integer.toString(this.mId);
        }
        return this.mIdName;
    }
}
