package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.ArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import f.b.a.a.a;
import java.lang.Thread;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public static final boolean DEBUG = false;
    public static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    public static final boolean IS_PRE_LOLLIPOP;
    public static final boolean sAlwaysOverrideConfiguration;
    public static boolean sInstalledExceptionHandler;
    public static final Map<Class<?>, Integer> sLocalNightModes = new ArrayMap();
    public static final int[] sWindowBackgroundStyleable;
    public ActionBar mActionBar;
    public ActionMenuPresenterCallback mActionMenuPresenterCallback;
    public ActionMode mActionMode;
    public PopupWindow mActionModePopup;
    public ActionBarContextView mActionModeView;
    public boolean mActivityHandlesUiMode;
    public boolean mActivityHandlesUiModeChecked;
    public final AppCompatCallback mAppCompatCallback;
    public AppCompatViewInflater mAppCompatViewInflater;
    public AppCompatWindowCallback mAppCompatWindowCallback;
    public AutoNightModeManager mAutoBatteryNightModeManager;
    public AutoNightModeManager mAutoTimeNightModeManager;
    public boolean mBaseContextAttached;
    public boolean mClosingActionMenu;
    public final Context mContext;
    public boolean mCreated;
    public DecorContentParent mDecorContentParent;
    public boolean mEnableDefaultActionBarUp;
    public ViewPropertyAnimatorCompat mFadeAnim;
    public boolean mFeatureIndeterminateProgress;
    public boolean mFeatureProgress;
    public boolean mHandleNativeActionModes;
    public boolean mHasActionBar;
    public final Object mHost;
    public int mInvalidatePanelMenuFeatures;
    public boolean mInvalidatePanelMenuPosted;
    public final Runnable mInvalidatePanelMenuRunnable;
    public boolean mIsDestroyed;
    public boolean mIsFloating;
    public int mLocalNightMode;
    public boolean mLongPressBackDown;
    public MenuInflater mMenuInflater;
    public boolean mOverlayActionBar;
    public boolean mOverlayActionMode;
    public PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    public PanelFeatureState[] mPanels;
    public PanelFeatureState mPreparedPanel;
    public Runnable mShowActionModePopup;
    public boolean mStarted;
    public View mStatusGuard;
    public ViewGroup mSubDecor;
    public boolean mSubDecorInstalled;
    public Rect mTempRect1;
    public Rect mTempRect2;
    public int mThemeResId;
    public CharSequence mTitle;
    public TextView mTitleView;
    public Window mWindow;
    public boolean mWindowNoTitle;

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements FitWindowsViewGroup.OnFitSystemWindowsListener {
        public AnonymousClass4() {
        }

        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
        public void onFitSystemWindows(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.updateStatusGuard(rect.top);
        }
    }

    /* loaded from: classes.dex */
    public class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
        public ActionBarDrawableToggleImpl() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return AppCompatDelegateImpl.this.getActionBarThemedContext();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{R.attr.homeAsUpIndicator});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i2) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeActionContentDescription(i2);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i2) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeAsUpIndicator(drawable);
                supportActionBar.setHomeActionContentDescription(i2);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        public ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.checkCloseActionMenu(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback = AppCompatDelegateImpl.this.getWindowCallback();
            if (windowCallback != null) {
                windowCallback.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class ActionModeCallbackWrapperV9 implements ActionMode.Callback {
        public ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.mActionModePopup != null) {
                appCompatDelegateImpl.mWindow.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.mShowActionModePopup);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.mActionModeView != null) {
                appCompatDelegateImpl2.endOnGoingFadeAnimation();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.mFadeAnim = ViewCompat.animate(appCompatDelegateImpl3.mActionModeView).alpha(0.0f);
                AppCompatDelegateImpl.this.mFadeAnim.setListener(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public void onAnimationEnd(View view) {
                        AppCompatDelegateImpl.this.mActionModeView.setVisibility(8);
                        AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
                        PopupWindow popupWindow = appCompatDelegateImpl4.mActionModePopup;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl4.mActionModeView.getParent() instanceof View) {
                            ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.mActionModeView.getParent());
                        }
                        AppCompatDelegateImpl.this.mActionModeView.removeAllViews();
                        AppCompatDelegateImpl.this.mFadeAnim.setListener(null);
                        AppCompatDelegateImpl.this.mFadeAnim = null;
                    }
                });
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AppCompatCallback appCompatCallback = appCompatDelegateImpl4.mAppCompatCallback;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.mActionMode);
            }
            AppCompatDelegateImpl.this.mActionMode = null;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }
    }

    /* loaded from: classes.dex */
    public class AutoBatteryNightModeManager extends AutoNightModeManager {
        public final PowerManager mPowerManager;

        public AutoBatteryNightModeManager(@NonNull Context context) {
            super();
            this.mPowerManager = (PowerManager) context.getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public IntentFilter createIntentFilterForBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int getApplyableNightMode() {
            return this.mPowerManager.isPowerSaveMode() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* loaded from: classes.dex */
    public abstract class AutoNightModeManager {
        public BroadcastReceiver mReceiver;

        public AutoNightModeManager() {
        }

        public void cleanup() {
            BroadcastReceiver broadcastReceiver = this.mReceiver;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.mContext.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.mReceiver = null;
            }
        }

        @Nullable
        public abstract IntentFilter createIntentFilterForBroadcastReceiver();

        public abstract int getApplyableNightMode();

        public boolean isListening() {
            return this.mReceiver != null;
        }

        public abstract void onChange();

        public void setup() {
            cleanup();
            IntentFilter createIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
            if (createIntentFilterForBroadcastReceiver == null || createIntentFilterForBroadcastReceiver.countActions() == 0) {
                return;
            }
            if (this.mReceiver == null) {
                this.mReceiver = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        AutoNightModeManager.this.onChange();
                    }
                };
            }
            AppCompatDelegateImpl.this.mContext.registerReceiver(this.mReceiver, createIntentFilterForBroadcastReceiver);
        }
    }

    /* loaded from: classes.dex */
    public class AutoTimeNightModeManager extends AutoNightModeManager {
        public final TwilightManager mTwilightManager;

        public AutoTimeNightModeManager(@NonNull TwilightManager twilightManager) {
            super();
            this.mTwilightManager = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public IntentFilter createIntentFilterForBroadcastReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public int getApplyableNightMode() {
            return this.mTwilightManager.isNight() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public void onChange() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    /* loaded from: classes.dex */
    public class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        private boolean isOutOfBounds(int i2, int i3) {
            return i2 < -5 || i3 < -5 || i2 > getWidth() + 5 || i3 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && isOutOfBounds((int) motionEvent.getX(), (int) motionEvent.getY())) {
                AppCompatDelegateImpl.this.closePanel(0);
                return true;
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public void setBackgroundResource(int i2) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i2));
        }
    }

    /* loaded from: classes.dex */
    public static final class PanelFeatureState {
        public int background;
        public View createdPanelView;
        public ViewGroup decorView;
        public int featureId;
        public Bundle frozenActionViewState;
        public Bundle frozenMenuState;
        public int gravity;
        public boolean isHandled;
        public boolean isOpen;
        public boolean isPrepared;
        public ListMenuPresenter listMenuPresenter;
        public Context listPresenterContext;
        public MenuBuilder menu;
        public boolean qwertyMode;
        public boolean refreshDecorView = false;
        public boolean refreshMenuContent;
        public View shownPanelView;
        public boolean wasLastOpen;
        public int windowAnimations;
        public int x;
        public int y;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState.SavedState.1
                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }
            };
            public int featureId;
            public boolean isOpen;
            public Bundle menuState;

            public static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.isOpen = z;
                if (z) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        public PanelFeatureState(int i2) {
            this.featureId = i2;
        }

        public void applyFrozenState() {
            Bundle bundle;
            MenuBuilder menuBuilder = this.menu;
            if (menuBuilder == null || (bundle = this.frozenMenuState) == null) {
                return;
            }
            menuBuilder.restorePresenterStates(bundle);
            this.frozenMenuState = null;
        }

        public void clearMenuPresenters() {
            MenuBuilder menuBuilder = this.menu;
            if (menuBuilder != null) {
                menuBuilder.removeMenuPresenter(this.listMenuPresenter);
            }
            this.listMenuPresenter = null;
        }

        public MenuView getListMenuView(MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.listMenuPresenter == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.listPresenterContext, R.layout.abc_list_menu_item_layout);
                this.listMenuPresenter = listMenuPresenter;
                listMenuPresenter.setCallback(callback);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }

        public boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            return this.createdPanelView != null || this.listMenuPresenter.getAdapter().getCount() > 0;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.featureId = savedState.featureId;
            this.wasLastOpen = savedState.isOpen;
            this.frozenMenuState = savedState.menuState;
            this.shownPanelView = null;
            this.decorView = null;
        }

        public Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            if (this.menu != null) {
                Bundle bundle = new Bundle();
                savedState.menuState = bundle;
                this.menu.savePresenterStates(bundle);
            }
            return savedState;
        }

        public void setMenu(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.menu;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.removeMenuPresenter(this.listMenuPresenter);
            }
            this.menu = menuBuilder;
            if (menuBuilder == null || (listMenuPresenter = this.listMenuPresenter) == null) {
                return;
            }
            menuBuilder.addMenuPresenter(listMenuPresenter);
        }

        public void setStyle(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            }
            newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            int i3 = typedValue.resourceId;
            if (i3 != 0) {
                newTheme.applyStyle(i3, true);
            } else {
                newTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.listPresenterContext = contextThemeWrapper;
            TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R.styleable.AppCompatTheme);
            this.background = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_panelBackground, 0);
            this.windowAnimations = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        public PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState findMenuPanel = appCompatDelegateImpl.findMenuPanel(menuBuilder);
            if (findMenuPanel != null) {
                if (z2) {
                    AppCompatDelegateImpl.this.callOnPanelClosed(findMenuPanel.featureId, findMenuPanel, rootMenu);
                    AppCompatDelegateImpl.this.closePanel(findMenuPanel, true);
                    return;
                }
                AppCompatDelegateImpl.this.closePanel(findMenuPanel, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback windowCallback;
            if (menuBuilder == null) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (!appCompatDelegateImpl.mHasActionBar || (windowCallback = appCompatDelegateImpl.getWindowCallback()) == null || AppCompatDelegateImpl.this.mIsDestroyed) {
                    return true;
                }
                windowCallback.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        IS_PRE_LOLLIPOP = false;
        sWindowBackgroundStyleable = new int[]{16842836};
        sAlwaysOverrideConfiguration = i2 <= 25;
        if (!IS_PRE_LOLLIPOP || sInstalledExceptionHandler) {
            return;
        }
        final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.1
            private boolean shouldWrapException(Throwable th) {
                String message;
                if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                    return false;
                }
                return message.contains("drawable") || message.contains("Drawable");
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                if (shouldWrapException(th)) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + AppCompatDelegateImpl.EXCEPTION_HANDLER_MESSAGE_SUFFIX);
                    notFoundException.initCause(th.getCause());
                    notFoundException.setStackTrace(th.getStackTrace());
                    defaultUncaughtExceptionHandler.uncaughtException(thread, notFoundException);
                    return;
                }
                defaultUncaughtExceptionHandler.uncaughtException(thread, th);
            }
        });
        sInstalledExceptionHandler = true;
    }

    public AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }

    private void applyFixedSizeWindow() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.mSubDecor.findViewById(16908290);
        View decorView = this.mWindow.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private void attachToWindow(@NonNull Window window) {
        if (this.mWindow == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof AppCompatWindowCallback)) {
                AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
                this.mAppCompatWindowCallback = appCompatWindowCallback;
                window.setCallback(appCompatWindowCallback);
                TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.mContext, (AttributeSet) null, sWindowBackgroundStyleable);
                Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
                if (drawableIfKnown != null) {
                    window.setBackgroundDrawable(drawableIfKnown);
                }
                obtainStyledAttributes.recycle();
                this.mWindow = window;
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    private int calculateNightMode() {
        int i2 = this.mLocalNightMode;
        return i2 != -100 ? i2 : AppCompatDelegate.getDefaultNightMode();
    }

    private void cleanupAutoManagers() {
        AutoNightModeManager autoNightModeManager = this.mAutoTimeNightModeManager;
        if (autoNightModeManager != null) {
            autoNightModeManager.cleanup();
        }
        AutoNightModeManager autoNightModeManager2 = this.mAutoBatteryNightModeManager;
        if (autoNightModeManager2 != null) {
            autoNightModeManager2.cleanup();
        }
    }

    private ViewGroup createSubDecor() {
        ViewGroup viewGroup;
        Context context;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTheme_windowActionBar)) {
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
                requestWindowFeature(1);
            } else if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBar, false)) {
                requestWindowFeature(108);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                requestWindowFeature(109);
            }
            if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                requestWindowFeature(10);
            }
            this.mIsFloating = obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_android_windowIsFloating, false);
            obtainStyledAttributes.recycle();
            ensureWindow();
            this.mWindow.getDecorView();
            LayoutInflater from = LayoutInflater.from(this.mContext);
            if (!this.mWindowNoTitle) {
                if (this.mIsFloating) {
                    viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
                    this.mOverlayActionBar = false;
                    this.mHasActionBar = false;
                } else if (this.mHasActionBar) {
                    TypedValue typedValue = new TypedValue();
                    this.mContext.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        context = new ContextThemeWrapper(this.mContext, typedValue.resourceId);
                    } else {
                        context = this.mContext;
                    }
                    viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
                    DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(R.id.decor_content_parent);
                    this.mDecorContentParent = decorContentParent;
                    decorContentParent.setWindowCallback(getWindowCallback());
                    if (this.mOverlayActionBar) {
                        this.mDecorContentParent.initFeature(109);
                    }
                    if (this.mFeatureProgress) {
                        this.mDecorContentParent.initFeature(2);
                    }
                    if (this.mFeatureIndeterminateProgress) {
                        this.mDecorContentParent.initFeature(5);
                    }
                } else {
                    viewGroup = null;
                }
            } else {
                if (this.mOverlayActionMode) {
                    viewGroup = (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null);
                } else {
                    viewGroup = (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
                }
                ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
                        int updateStatusGuard = AppCompatDelegateImpl.this.updateStatusGuard(systemWindowInsetTop);
                        if (systemWindowInsetTop != updateStatusGuard) {
                            windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), updateStatusGuard, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                        }
                        return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
                    }
                });
            }
            if (viewGroup != null) {
                if (this.mDecorContentParent == null) {
                    this.mTitleView = (TextView) viewGroup.findViewById(R.id.title);
                }
                ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
                ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
                ViewGroup viewGroup2 = (ViewGroup) this.mWindow.findViewById(16908290);
                if (viewGroup2 != null) {
                    while (viewGroup2.getChildCount() > 0) {
                        View childAt = viewGroup2.getChildAt(0);
                        viewGroup2.removeViewAt(0);
                        contentFrameLayout.addView(childAt);
                    }
                    viewGroup2.setId(-1);
                    contentFrameLayout.setId(16908290);
                    if (viewGroup2 instanceof FrameLayout) {
                        ((FrameLayout) viewGroup2).setForeground(null);
                    }
                }
                this.mWindow.setContentView(viewGroup);
                contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    public void onAttachedFromWindow() {
                    }

                    @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                    public void onDetachedFromWindow() {
                        AppCompatDelegateImpl.this.dismissPopups();
                    }
                });
                return viewGroup;
            }
            StringBuilder o = a.o("AppCompat does not support the current theme features: { windowActionBar: ");
            o.append(this.mHasActionBar);
            o.append(", windowActionBarOverlay: ");
            o.append(this.mOverlayActionBar);
            o.append(", android:windowIsFloating: ");
            o.append(this.mIsFloating);
            o.append(", windowActionModeOverlay: ");
            o.append(this.mOverlayActionMode);
            o.append(", windowNoTitle: ");
            o.append(this.mWindowNoTitle);
            o.append(" }");
            throw new IllegalArgumentException(o.toString());
        }
        obtainStyledAttributes.recycle();
        throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
    }

    private void ensureSubDecor() {
        if (this.mSubDecorInstalled) {
            return;
        }
        this.mSubDecor = createSubDecor();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            DecorContentParent decorContentParent = this.mDecorContentParent;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(title);
            } else if (peekSupportActionBar() != null) {
                peekSupportActionBar().setWindowTitle(title);
            } else {
                TextView textView = this.mTitleView;
                if (textView != null) {
                    textView.setText(title);
                }
            }
        }
        applyFixedSizeWindow();
        onSubDecorInstalled(this.mSubDecor);
        this.mSubDecorInstalled = true;
        PanelFeatureState panelState = getPanelState(0, false);
        if (this.mIsDestroyed) {
            return;
        }
        if (panelState == null || panelState.menu == null) {
            invalidatePanelMenu(108);
        }
    }

    private void ensureWindow() {
        if (this.mWindow == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                attachToWindow(((Activity) obj).getWindow());
            }
        }
        if (this.mWindow == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private AutoNightModeManager getAutoBatteryNightModeManager() {
        if (this.mAutoBatteryNightModeManager == null) {
            this.mAutoBatteryNightModeManager = new AutoBatteryNightModeManager(this.mContext);
        }
        return this.mAutoBatteryNightModeManager;
    }

    private void initWindowDecorActionBar() {
        ensureSubDecor();
        if (this.mHasActionBar && this.mActionBar == null) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                this.mActionBar = new WindowDecorActionBar((Activity) this.mHost, this.mOverlayActionBar);
            } else if (obj instanceof Dialog) {
                this.mActionBar = new WindowDecorActionBar((Dialog) this.mHost);
            }
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
    }

    private boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.createdPanelView;
        if (view != null) {
            panelFeatureState.shownPanelView = view;
            return true;
        } else if (panelFeatureState.menu == null) {
            return false;
        } else {
            if (this.mPanelMenuPresenterCallback == null) {
                this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
            }
            View view2 = (View) panelFeatureState.getListMenuView(this.mPanelMenuPresenterCallback);
            panelFeatureState.shownPanelView = view2;
            return view2 != null;
        }
    }

    private boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.setStyle(getActionBarThemedContext());
        panelFeatureState.decorView = new ListMenuDecorView(panelFeatureState.listPresenterContext);
        panelFeatureState.gravity = 81;
        return true;
    }

    private boolean initializePanelMenu(PanelFeatureState panelFeatureState) {
        Context context = this.mContext;
        int i2 = panelFeatureState.featureId;
        if ((i2 == 0 || i2 == 108) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(theme2);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.setMenu(menuBuilder);
        return true;
    }

    private void invalidatePanelMenu(int i2) {
        this.mInvalidatePanelMenuFeatures = (1 << i2) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted) {
            return;
        }
        ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    private boolean isActivityManifestHandlingUiMode() {
        if (!this.mActivityHandlesUiModeChecked && (this.mHost instanceof Activity)) {
            PackageManager packageManager = this.mContext.getPackageManager();
            if (packageManager == null) {
                return false;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(this.mContext, this.mHost.getClass()), 0);
                this.mActivityHandlesUiMode = (activityInfo == null || (activityInfo.configChanges & 512) == 0) ? false : true;
            } catch (PackageManager.NameNotFoundException unused) {
                this.mActivityHandlesUiMode = false;
            }
        }
        this.mActivityHandlesUiModeChecked = true;
        return this.mActivityHandlesUiMode;
    }

    private boolean onKeyDownPanel(int i2, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() == 0) {
            PanelFeatureState panelState = getPanelState(i2, true);
            if (panelState.isOpen) {
                return false;
            }
            return preparePanel(panelState, keyEvent);
        }
        return false;
    }

    private boolean onKeyUpPanel(int i2, KeyEvent keyEvent) {
        boolean z;
        AudioManager audioManager;
        DecorContentParent decorContentParent;
        if (this.mActionMode != null) {
            return false;
        }
        boolean z2 = true;
        PanelFeatureState panelState = getPanelState(i2, true);
        if (i2 == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) {
            if (!this.mDecorContentParent.isOverflowMenuShowing()) {
                if (!this.mIsDestroyed && preparePanel(panelState, keyEvent)) {
                    z2 = this.mDecorContentParent.showOverflowMenu();
                }
                z2 = false;
            } else {
                z2 = this.mDecorContentParent.hideOverflowMenu();
            }
        } else if (!panelState.isOpen && !panelState.isHandled) {
            if (panelState.isPrepared) {
                if (panelState.refreshMenuContent) {
                    panelState.isPrepared = false;
                    z = preparePanel(panelState, keyEvent);
                } else {
                    z = true;
                }
                if (z) {
                    openPanel(panelState, keyEvent);
                }
            }
            z2 = false;
        } else {
            boolean z3 = panelState.isOpen;
            closePanel(panelState, true);
            z2 = z3;
        }
        if (z2 && (audioManager = (AudioManager) this.mContext.getSystemService("audio")) != null) {
            audioManager.playSoundEffect(0);
        }
        return z2;
    }

    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.isOpen || this.mIsDestroyed) {
            return;
        }
        if (panelFeatureState.featureId == 0) {
            if ((this.mContext.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !windowCallback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
            closePanel(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && preparePanel(panelFeatureState, keyEvent)) {
            if (panelFeatureState.decorView != null && !panelFeatureState.refreshDecorView) {
                View view = panelFeatureState.createdPanelView;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                    panelFeatureState.isHandled = false;
                    WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.x, panelFeatureState.y, PointerIconCompat.TYPE_HAND, 8519680, -3);
                    layoutParams2.gravity = panelFeatureState.gravity;
                    layoutParams2.windowAnimations = panelFeatureState.windowAnimations;
                    windowManager.addView(panelFeatureState.decorView, layoutParams2);
                    panelFeatureState.isOpen = true;
                }
            } else {
                ViewGroup viewGroup = panelFeatureState.decorView;
                if (viewGroup == null) {
                    if (!initializePanelDecor(panelFeatureState) || panelFeatureState.decorView == null) {
                        return;
                    }
                } else if (panelFeatureState.refreshDecorView && viewGroup.getChildCount() > 0) {
                    panelFeatureState.decorView.removeAllViews();
                }
                if (!initializePanelContent(panelFeatureState) || !panelFeatureState.hasPanelItems()) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams3 = panelFeatureState.shownPanelView.getLayoutParams();
                if (layoutParams3 == null) {
                    layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                }
                panelFeatureState.decorView.setBackgroundResource(panelFeatureState.background);
                ViewParent parent = panelFeatureState.shownPanelView.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
                }
                panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams3);
                if (!panelFeatureState.shownPanelView.hasFocus()) {
                    panelFeatureState.shownPanelView.requestFocus();
                }
            }
            i2 = -2;
            panelFeatureState.isHandled = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.x, panelFeatureState.y, PointerIconCompat.TYPE_HAND, 8519680, -3);
            layoutParams22.gravity = panelFeatureState.gravity;
            layoutParams22.windowAnimations = panelFeatureState.windowAnimations;
            windowManager.addView(panelFeatureState.decorView, layoutParams22);
            panelFeatureState.isOpen = true;
        }
    }

    private boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        MenuBuilder menuBuilder;
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.menu) != null) {
            z = menuBuilder.performShortcut(i2, keyEvent, i3);
        }
        if (z && (i3 & 1) == 0 && this.mDecorContentParent == null) {
            closePanel(panelFeatureState, true);
        }
        return z;
    }

    private boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.mIsDestroyed) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            closePanel(panelFeatureState2, false);
        }
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null) {
            panelFeatureState.createdPanelView = windowCallback.onCreatePanelView(panelFeatureState.featureId);
        }
        int i2 = panelFeatureState.featureId;
        boolean z = i2 == 0 || i2 == 108;
        if (z && (decorContentParent3 = this.mDecorContentParent) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (panelFeatureState.createdPanelView == null && (!z || !(peekSupportActionBar() instanceof ToolbarActionBar))) {
            if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                if (panelFeatureState.menu == null && (!initializePanelMenu(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (!windowCallback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.setMenu(null);
                    if (z && (decorContentParent = this.mDecorContentParent) != null) {
                        decorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.frozenActionViewState;
            if (bundle != null) {
                panelFeatureState.menu.restoreActionViewStates(bundle);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!windowCallback.onPreparePanel(0, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z && (decorContentParent2 = this.mDecorContentParent) != null) {
                    decorContentParent2.setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = z2;
            panelFeatureState.menu.setQwertyMode(z2);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    private void reopenMenu(MenuBuilder menuBuilder, boolean z) {
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null && decorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(this.mContext).hasPermanentMenuKey() || this.mDecorContentParent.isOverflowMenuShowPending())) {
            Window.Callback windowCallback = getWindowCallback();
            if (this.mDecorContentParent.isOverflowMenuShowing() && z) {
                this.mDecorContentParent.hideOverflowMenu();
                if (this.mIsDestroyed) {
                    return;
                }
                windowCallback.onPanelClosed(108, getPanelState(0, true).menu);
                return;
            } else if (windowCallback == null || this.mIsDestroyed) {
                return;
            } else {
                if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                    this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                    this.mInvalidatePanelMenuRunnable.run();
                }
                PanelFeatureState panelState = getPanelState(0, true);
                MenuBuilder menuBuilder2 = panelState.menu;
                if (menuBuilder2 == null || panelState.refreshMenuContent || !windowCallback.onPreparePanel(0, panelState.createdPanelView, menuBuilder2)) {
                    return;
                }
                windowCallback.onMenuOpened(108, panelState.menu);
                this.mDecorContentParent.showOverflowMenu();
                return;
            }
        }
        PanelFeatureState panelState2 = getPanelState(0, true);
        panelState2.refreshDecorView = true;
        closePanel(panelState2, false);
        openPanel(panelState2, null);
    }

    private int sanitizeWindowFeatureId(int i2) {
        if (i2 == 8) {
            return 108;
        }
        if (i2 == 9) {
            return 109;
        }
        return i2;
    }

    private boolean shouldInheritContext(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.mWindow.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ViewCompat.isAttachedToWindow((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private void throwFeatureRequestIfSubDecorInstalled() {
        if (this.mSubDecorInstalled) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Nullable
    private AppCompatActivity tryUnwrapContext() {
        for (Context context = this.mContext; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private boolean updateForNightMode(int i2, boolean z) {
        int i3 = this.mContext.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        boolean z2 = true;
        int i4 = i2 != 1 ? i2 != 2 ? i3 : 32 : 16;
        boolean isActivityManifestHandlingUiMode = isActivityManifestHandlingUiMode();
        boolean z3 = false;
        if ((sAlwaysOverrideConfiguration || i4 != i3) && !isActivityManifestHandlingUiMode && !this.mBaseContextAttached && (this.mHost instanceof android.view.ContextThemeWrapper)) {
            Configuration configuration = new Configuration();
            configuration.uiMode = (configuration.uiMode & (-49)) | i4;
            try {
                ((android.view.ContextThemeWrapper) this.mHost).applyOverrideConfiguration(configuration);
                z3 = true;
            } catch (IllegalStateException unused) {
            }
        }
        int i5 = this.mContext.getResources().getConfiguration().uiMode & 48;
        if (!z3 && i5 != i4 && z && !isActivityManifestHandlingUiMode && this.mBaseContextAttached) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                ActivityCompat.recreate((Activity) obj);
                z3 = true;
            }
        }
        if (z3 || i5 == i4) {
            z2 = z3;
        } else {
            updateResourcesConfigurationForNightMode(i4, isActivityManifestHandlingUiMode);
        }
        if (z2) {
            Object obj2 = this.mHost;
            if (obj2 instanceof AppCompatActivity) {
                ((AppCompatActivity) obj2).onNightModeChanged(i2);
            }
        }
        return z2;
    }

    private void updateResourcesConfigurationForNightMode(int i2, boolean z) {
        Resources resources = this.mContext.getResources();
        Configuration configuration = new Configuration(resources.getConfiguration());
        configuration.uiMode = i2 | (resources.getConfiguration().uiMode & (-49));
        resources.updateConfiguration(configuration, null);
        if (Build.VERSION.SDK_INT < 26) {
            ResourcesFlusher.flush(resources);
        }
        int i3 = this.mThemeResId;
        if (i3 != 0) {
            this.mContext.setTheme(i3);
            if (Build.VERSION.SDK_INT >= 23) {
                this.mContext.getTheme().applyStyle(this.mThemeResId, true);
            }
        }
        if (z) {
            Object obj = this.mHost;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity).getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
                        activity.onConfigurationChanged(configuration);
                    }
                } else if (this.mStarted) {
                    activity.onConfigurationChanged(configuration);
                }
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ((ViewGroup) this.mSubDecor.findViewById(16908290)).addView(view, layoutParams);
        this.mAppCompatWindowCallback.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyDayNight() {
        return applyDayNight(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void attachBaseContext(Context context) {
        applyDayNight(false);
        this.mBaseContextAttached = true;
    }

    public void callOnPanelClosed(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.mPanels;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !this.mIsDestroyed) {
            this.mAppCompatWindowCallback.getWrapped().onPanelClosed(i2, menu);
        }
    }

    public void checkCloseActionMenu(MenuBuilder menuBuilder) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback != null && !this.mIsDestroyed) {
            windowCallback.onPanelClosed(108, menuBuilder);
        }
        this.mClosingActionMenu = false;
    }

    public void closePanel(int i2) {
        closePanel(getPanelState(i2, true), true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z;
        boolean z2 = false;
        if (this.mAppCompatViewInflater == null) {
            String string = this.mContext.obtainStyledAttributes(R.styleable.AppCompatTheme).getString(R.styleable.AppCompatTheme_viewInflaterClass);
            if (string != null && !AppCompatViewInflater.class.getName().equals(string)) {
                try {
                    this.mAppCompatViewInflater = (AppCompatViewInflater) Class.forName(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable unused) {
                    this.mAppCompatViewInflater = new AppCompatViewInflater();
                }
            } else {
                this.mAppCompatViewInflater = new AppCompatViewInflater();
            }
        }
        if (IS_PRE_LOLLIPOP) {
            if (attributeSet instanceof XmlPullParser) {
                if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    z2 = true;
                }
            } else {
                z2 = shouldInheritContext((ViewParent) view);
            }
            z = z2;
        } else {
            z = false;
        }
        return this.mAppCompatViewInflater.createView(view, str, context, attributeSet, z, IS_PRE_LOLLIPOP, true, VectorEnabledTintResources.shouldBeUsed());
    }

    public void dismissPopups() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.mActionModePopup = null;
        }
        endOnGoingFadeAnimation();
        PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null || (menuBuilder = panelState.menu) == null) {
            return;
        }
        menuBuilder.close();
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.mHost;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof AppCompatDialog)) && (decorView = this.mWindow.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.mAppCompatWindowCallback.getWrapped().dispatchKeyEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? onKeyDown(keyCode, keyEvent) : onKeyUp(keyCode, keyEvent);
    }

    public void doInvalidatePanelMenu(int i2) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i2, true);
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i2 != 108 && i2 != 0) || this.mDecorContentParent == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.isPrepared = false;
        preparePanel(panelState, null);
    }

    public void endOnGoingFadeAnimation() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mFadeAnim;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    public PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i2) {
        ensureSubDecor();
        return (T) this.mWindow.findViewById(i2);
    }

    public final Context getActionBarThemedContext() {
        ActionBar supportActionBar = getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? this.mContext : themedContext;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final AutoNightModeManager getAutoTimeNightModeManager() {
        if (this.mAutoTimeNightModeManager == null) {
            this.mAutoTimeNightModeManager = new AutoTimeNightModeManager(TwilightManager.getInstance(this.mContext));
        }
        return this.mAutoTimeNightModeManager;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new ActionBarDrawableToggleImpl();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int getLocalNightMode() {
        return this.mLocalNightMode;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            this.mMenuInflater = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.mContext);
        }
        return this.mMenuInflater;
    }

    public PanelFeatureState getPanelState(int i2, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState == null) {
            PanelFeatureState panelFeatureState2 = new PanelFeatureState(i2);
            panelFeatureStateArr[i2] = panelFeatureState2;
            return panelFeatureState2;
        }
        return panelFeatureState;
    }

    public ViewGroup getSubDecor() {
        return this.mSubDecor;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar getSupportActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    public final CharSequence getTitle() {
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            return ((Activity) obj).getTitle();
        }
        return this.mTitle;
    }

    public final Window.Callback getWindowCallback() {
        return this.mWindow.getCallback();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean hasWindowFeature(int i2) {
        boolean z;
        int sanitizeWindowFeatureId = sanitizeWindowFeatureId(i2);
        if (sanitizeWindowFeatureId == 1) {
            z = this.mWindowNoTitle;
        } else if (sanitizeWindowFeatureId == 2) {
            z = this.mFeatureProgress;
        } else if (sanitizeWindowFeatureId == 5) {
            z = this.mFeatureIndeterminateProgress;
        } else if (sanitizeWindowFeatureId == 10) {
            z = this.mOverlayActionMode;
        } else if (sanitizeWindowFeatureId != 108) {
            z = sanitizeWindowFeatureId != 109 ? false : this.mOverlayActionBar;
        } else {
            z = this.mHasActionBar;
        }
        return z || this.mWindow.hasFeature(i2);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.mContext);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(from, this);
        } else {
            boolean z = from.getFactory2() instanceof AppCompatDelegateImpl;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.invalidateOptionsMenu()) {
            invalidatePanelMenu(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.mHandleNativeActionModes;
    }

    public int mapNightMode(int i2) {
        if (i2 != -100) {
            if (i2 != -1) {
                if (i2 == 0) {
                    if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) this.mContext.getSystemService(UiModeManager.class)).getNightMode() != 0) {
                        return getAutoTimeNightModeManager().getApplyableNightMode();
                    }
                    return -1;
                } else if (i2 == 1 || i2 == 2) {
                    return i2;
                } else {
                    if (i2 == 3) {
                        return getAutoBatteryNightModeManager().getApplyableNightMode();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            }
            return i2;
        }
        return -1;
    }

    public boolean onBackPressed() {
        ActionMode actionMode = this.mActionMode;
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.mHasActionBar && this.mSubDecorInstalled && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        applyDayNight(false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        this.mBaseContextAttached = true;
        applyDayNight(false);
        ensureWindow();
        Object obj = this.mHost;
        if (obj instanceof Activity) {
            String str = null;
            try {
                str = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (str != null) {
                ActionBar peekSupportActionBar = peekSupportActionBar();
                if (peekSupportActionBar == null) {
                    this.mEnableDefaultActionBarUp = true;
                } else {
                    peekSupportActionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
        }
        this.mCreated = true;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onDestroy() {
        AppCompatDelegate.markStopped(this);
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        this.mStarted = false;
        this.mIsDestroyed = true;
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        cleanupAutoManagers();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            this.mLongPressBackDown = (keyEvent.getFlags() & 128) != 0;
        } else if (i2 == 82) {
            onKeyDownPanel(0, keyEvent);
            return true;
        }
        return false;
    }

    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar == null || !supportActionBar.onKeyShortcut(i2, keyEvent)) {
            PanelFeatureState panelFeatureState = this.mPreparedPanel;
            if (panelFeatureState != null && performPanelShortcut(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
                PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
                if (panelFeatureState2 != null) {
                    panelFeatureState2.isHandled = true;
                }
                return true;
            }
            if (this.mPreparedPanel == null) {
                PanelFeatureState panelState = getPanelState(0, true);
                preparePanel(panelState, keyEvent);
                boolean performPanelShortcut = performPanelShortcut(panelState, keyEvent.getKeyCode(), keyEvent, 1);
                panelState.isPrepared = false;
                if (performPanelShortcut) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            boolean z = this.mLongPressBackDown;
            this.mLongPressBackDown = false;
            PanelFeatureState panelState = getPanelState(0, false);
            if (panelState != null && panelState.isOpen) {
                if (!z) {
                    closePanel(panelState, true);
                }
                return true;
            } else if (onBackPressed()) {
                return true;
            }
        } else if (i2 == 82) {
            onKeyUpPanel(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState findMenuPanel;
        Window.Callback windowCallback = getWindowCallback();
        if (windowCallback == null || this.mIsDestroyed || (findMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return windowCallback.onMenuItemSelected(findMenuPanel.featureId, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(menuBuilder, true);
    }

    public void onMenuOpened(int i2) {
        ActionBar supportActionBar;
        if (i2 != 108 || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
    }

    public void onPanelClosed(int i2) {
        if (i2 == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
            }
        } else if (i2 == 0) {
            PanelFeatureState panelState = getPanelState(i2, true);
            if (panelState.isOpen) {
                closePanel(panelState, false);
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        ensureSubDecor();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
        if (this.mLocalNightMode != -100) {
            sLocalNightModes.put(this.mHost.getClass(), Integer.valueOf(this.mLocalNightMode));
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStart() {
        this.mStarted = true;
        applyDayNight();
        AppCompatDelegate.markStarted(this);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStop() {
        this.mStarted = false;
        AppCompatDelegate.markStopped(this);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
        if (this.mHost instanceof Dialog) {
            cleanupAutoManagers();
        }
    }

    public void onSubDecorInstalled(ViewGroup viewGroup) {
    }

    public final ActionBar peekSupportActionBar() {
        return this.mActionBar;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean requestWindowFeature(int i2) {
        int sanitizeWindowFeatureId = sanitizeWindowFeatureId(i2);
        if (this.mWindowNoTitle && sanitizeWindowFeatureId == 108) {
            return false;
        }
        if (this.mHasActionBar && sanitizeWindowFeatureId == 1) {
            this.mHasActionBar = false;
        }
        if (sanitizeWindowFeatureId == 1) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mWindowNoTitle = true;
            return true;
        } else if (sanitizeWindowFeatureId == 2) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureProgress = true;
            return true;
        } else if (sanitizeWindowFeatureId == 5) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mFeatureIndeterminateProgress = true;
            return true;
        } else if (sanitizeWindowFeatureId == 10) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mOverlayActionMode = true;
            return true;
        } else if (sanitizeWindowFeatureId == 108) {
            throwFeatureRequestIfSubDecorInstalled();
            this.mHasActionBar = true;
            return true;
        } else if (sanitizeWindowFeatureId != 109) {
            return this.mWindow.requestFeature(sanitizeWindowFeatureId);
        } else {
            throwFeatureRequestIfSubDecorInstalled();
            this.mOverlayActionBar = true;
            return true;
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.mAppCompatWindowCallback.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z) {
        this.mHandleNativeActionModes = z;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setLocalNightMode(int i2) {
        if (this.mLocalNightMode != i2) {
            this.mLocalNightMode = i2;
            applyDayNight();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.mHost instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (!(supportActionBar instanceof WindowDecorActionBar)) {
                this.mMenuInflater = null;
                if (supportActionBar != null) {
                    supportActionBar.onDestroy();
                }
                if (toolbar != null) {
                    ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, getTitle(), this.mAppCompatWindowCallback);
                    this.mActionBar = toolbarActionBar;
                    this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
                } else {
                    this.mActionBar = null;
                    this.mWindow.setCallback(this.mAppCompatWindowCallback);
                }
                invalidateOptionsMenu();
                return;
            }
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setTheme(@StyleRes int i2) {
        this.mThemeResId = i2;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
        } else if (peekSupportActionBar() != null) {
            peekSupportActionBar().setWindowTitle(charSequence);
        } else {
            TextView textView = this.mTitleView;
            if (textView != null) {
                textView.setText(charSequence);
            }
        }
    }

    public final boolean shouldAnimateActionModeView() {
        ViewGroup viewGroup;
        return this.mSubDecorInstalled && (viewGroup = this.mSubDecor) != null && ViewCompat.isLaidOut(viewGroup);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback) {
        AppCompatCallback appCompatCallback;
        if (callback != null) {
            ActionMode actionMode = this.mActionMode;
            if (actionMode != null) {
                actionMode.finish();
            }
            ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                ActionMode startActionMode = supportActionBar.startActionMode(actionModeCallbackWrapperV9);
                this.mActionMode = startActionMode;
                if (startActionMode != null && (appCompatCallback = this.mAppCompatCallback) != null) {
                    appCompatCallback.onSupportActionModeStarted(startActionMode);
                }
            }
            if (this.mActionMode == null) {
                this.mActionMode = startSupportActionModeFromWindow(actionModeCallbackWrapperV9);
            }
            return this.mActionMode;
        }
        throw new IllegalArgumentException("ActionMode callback can not be null.");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.appcompat.view.ActionMode startSupportActionModeFromWindow(@androidx.annotation.NonNull androidx.appcompat.view.ActionMode.Callback r8) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.startSupportActionModeFromWindow(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    public int updateStatusGuard(int i2) {
        boolean z;
        boolean z2;
        ActionBarContextView actionBarContextView = this.mActionModeView;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mActionModeView.getLayoutParams();
            if (this.mActionModeView.isShown()) {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new Rect();
                    this.mTempRect2 = new Rect();
                }
                Rect rect = this.mTempRect1;
                Rect rect2 = this.mTempRect2;
                rect.set(0, i2, 0, 0);
                ViewUtils.computeFitSystemWindows(this.mSubDecor, rect, rect2);
                if (marginLayoutParams.topMargin != (rect2.top == 0 ? i2 : 0)) {
                    marginLayoutParams.topMargin = i2;
                    View view = this.mStatusGuard;
                    if (view == null) {
                        View view2 = new View(this.mContext);
                        this.mStatusGuard = view2;
                        view2.setBackgroundColor(this.mContext.getResources().getColor(R.color.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new ViewGroup.LayoutParams(-1, i2));
                    } else {
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        if (layoutParams.height != i2) {
                            layoutParams.height = i2;
                            this.mStatusGuard.setLayoutParams(layoutParams);
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                }
                r3 = this.mStatusGuard != null;
                if (!this.mOverlayActionMode && r3) {
                    i2 = 0;
                }
                boolean z3 = r3;
                r3 = z2;
                z = z3;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                r3 = false;
            }
            if (r3) {
                this.mActionModeView.setLayoutParams(marginLayoutParams);
            }
        }
        View view3 = this.mStatusGuard;
        if (view3 != null) {
            view3.setVisibility(z ? 0 : 8);
        }
        return i2;
    }

    public AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    private boolean applyDayNight(boolean z) {
        if (this.mIsDestroyed) {
            return false;
        }
        int calculateNightMode = calculateNightMode();
        boolean updateForNightMode = updateForNightMode(mapNightMode(calculateNightMode), z);
        if (calculateNightMode == 0) {
            getAutoTimeNightModeManager().setup();
        } else {
            AutoNightModeManager autoNightModeManager = this.mAutoTimeNightModeManager;
            if (autoNightModeManager != null) {
                autoNightModeManager.cleanup();
            }
        }
        if (calculateNightMode == 3) {
            getAutoBatteryNightModeManager().setup();
        } else {
            AutoNightModeManager autoNightModeManager2 = this.mAutoBatteryNightModeManager;
            if (autoNightModeManager2 != null) {
                autoNightModeManager2.cleanup();
            }
        }
        return updateForNightMode;
    }

    public void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.featureId == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = (WindowManager) this.mContext.getSystemService("window");
        if (windowManager != null && panelFeatureState.isOpen && (viewGroup = panelFeatureState.decorView) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        panelFeatureState.refreshDecorView = true;
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback) {
        this(context, window, appCompatCallback, context);
    }

    /* loaded from: classes.dex */
    public class AppCompatWindowCallback extends WindowCallbackWrapper {
        public AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            AppCompatDelegateImpl.this.onMenuOpened(i2);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i2, Menu menu) {
            super.onPanelClosed(i2, menu);
            AppCompatDelegateImpl.this.onPanelClosed(i2);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i2, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i2 == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(true);
            }
            boolean onPreparePanel = super.onPreparePanel(i2, view, menu);
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(false);
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
            MenuBuilder menuBuilder;
            PanelFeatureState panelState = AppCompatDelegateImpl.this.getPanelState(0, true);
            if (panelState != null && (menuBuilder = panelState.menu) != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i2);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i2);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            if (AppCompatDelegateImpl.this.isHandleNativeActionModesEnabled()) {
                return startAsSupportActionMode(callback);
            }
            return super.onWindowStartingActionMode(callback);
        }

        public final android.view.ActionMode startAsSupportActionMode(ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImpl.this.mContext, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = AppCompatDelegateImpl.this.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(23)
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
            if (AppCompatDelegateImpl.this.isHandleNativeActionModesEnabled() && i2 == 0) {
                return startAsSupportActionMode(callback);
            }
            return super.onWindowStartingActionMode(callback, i2);
        }
    }

    public AppCompatDelegateImpl(Context context, Activity activity, AppCompatCallback appCompatCallback) {
        this(context, null, appCompatCallback, activity);
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        Integer num;
        AppCompatActivity tryUnwrapContext;
        this.mFadeAnim = null;
        this.mHandleNativeActionModes = true;
        this.mLocalNightMode = -100;
        this.mInvalidatePanelMenuRunnable = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
            @Override // java.lang.Runnable
            public void run() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 1) != 0) {
                    appCompatDelegateImpl.doInvalidatePanelMenu(0);
                }
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                if ((appCompatDelegateImpl2.mInvalidatePanelMenuFeatures & 4096) != 0) {
                    appCompatDelegateImpl2.doInvalidatePanelMenu(108);
                }
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.mInvalidatePanelMenuPosted = false;
                appCompatDelegateImpl3.mInvalidatePanelMenuFeatures = 0;
            }
        };
        this.mContext = context;
        this.mAppCompatCallback = appCompatCallback;
        this.mHost = obj;
        if (this.mLocalNightMode == -100 && (obj instanceof Dialog) && (tryUnwrapContext = tryUnwrapContext()) != null) {
            this.mLocalNightMode = tryUnwrapContext.getDelegate().getLocalNightMode();
        }
        if (this.mLocalNightMode == -100 && (num = sLocalNightModes.get(this.mHost.getClass())) != null) {
            this.mLocalNightMode = num.intValue();
            sLocalNightModes.remove(this.mHost.getClass());
        }
        if (window != null) {
            attachToWindow(window);
        }
        AppCompatDrawableManager.preload();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(int i2) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.mContext).inflate(i2, viewGroup);
        this.mAppCompatWindowCallback.getWrapped().onContentChanged();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        ensureSubDecor();
        ViewGroup viewGroup = (ViewGroup) this.mSubDecor.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.mAppCompatWindowCallback.getWrapped().onContentChanged();
    }
}
