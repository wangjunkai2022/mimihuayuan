package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar<B extends BaseTransientBottomBar<B>> {
    public static final int ANIMATION_DURATION = 250;
    public static final int ANIMATION_FADE_DURATION = 180;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    public static final int MSG_DISMISS = 1;
    public static final int MSG_SHOW = 0;
    public static final boolean USE_OFFSET_API = false;
    public final AccessibilityManager accessibilityManager;
    public Behavior behavior;
    public List<BaseCallback<B>> callbacks;
    public final ContentViewCallback contentViewCallback;
    public final Context context;
    public int duration;
    public final SnackbarManager.Callback managerCallback = new SnackbarManager.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.4
        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void dismiss(int i2) {
            Handler handler2 = BaseTransientBottomBar.handler;
            handler2.sendMessage(handler2.obtainMessage(1, i2, 0, BaseTransientBottomBar.this));
        }

        @Override // com.google.android.material.snackbar.SnackbarManager.Callback
        public void show() {
            Handler handler2 = BaseTransientBottomBar.handler;
            handler2.sendMessage(handler2.obtainMessage(0, BaseTransientBottomBar.this));
        }
    };
    public final ViewGroup targetParent;
    public final SnackbarBaseLayout view;
    public static final int[] SNACKBAR_STYLE_ATTR = {R.attr.snackbarStyle};
    public static final Handler handler = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                ((BaseTransientBottomBar) message.obj).showView();
                return true;
            } else if (i2 != 1) {
                return false;
            } else {
                ((BaseTransientBottomBar) message.obj).hideView(message.arg1);
                return true;
            }
        }
    });

    /* loaded from: classes.dex */
    public static abstract class BaseCallback<B> {
        public static final int DISMISS_EVENT_ACTION = 1;
        public static final int DISMISS_EVENT_CONSECUTIVE = 4;
        public static final int DISMISS_EVENT_MANUAL = 3;
        public static final int DISMISS_EVENT_SWIPE = 0;
        public static final int DISMISS_EVENT_TIMEOUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface DismissEvent {
        }

        public void onDismissed(B b, int i2) {
        }

        public void onShown(B b) {
        }
    }

    /* loaded from: classes.dex */
    public static class Behavior extends SwipeDismissBehavior<View> {
        public final BehaviorDelegate delegate = new BehaviorDelegate(this);

        /* access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.delegate.setBaseTransientBottomBar(baseTransientBottomBar);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public boolean canSwipeDismissView(View view) {
            return this.delegate.canSwipeDismissView(view);
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            this.delegate.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class BehaviorDelegate {
        public SnackbarManager.Callback managerCallback;

        public BehaviorDelegate(SwipeDismissBehavior<?> swipeDismissBehavior) {
            swipeDismissBehavior.setStartAlphaSwipeDistance(0.1f);
            swipeDismissBehavior.setEndAlphaSwipeDistance(0.6f);
            swipeDismissBehavior.setSwipeDirection(0);
        }

        public boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarBaseLayout;
        }

        public void onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    SnackbarManager.getInstance().restoreTimeoutIfPaused(this.managerCallback);
                }
            } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                SnackbarManager.getInstance().pauseTimeout(this.managerCallback);
            }
        }

        public void setBaseTransientBottomBar(BaseTransientBottomBar<?> baseTransientBottomBar) {
            this.managerCallback = baseTransientBottomBar.managerCallback;
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface ContentViewCallback extends ContentViewCallback {
    }

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public @interface Duration {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public interface OnAttachStateChangeListener {
        void onViewAttachedToWindow(View view);

        void onViewDetachedFromWindow(View view);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public interface OnLayoutChangeListener {
        void onLayoutChange(View view, int i2, int i3, int i4, int i5);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class SnackbarBaseLayout extends FrameLayout {
        public final AccessibilityManager accessibilityManager;
        public OnAttachStateChangeListener onAttachStateChangeListener;
        public OnLayoutChangeListener onLayoutChangeListener;
        public final AccessibilityManagerCompat.TouchExplorationStateChangeListener touchExplorationStateChangeListener;

        public SnackbarBaseLayout(Context context) {
            this(context, null);
        }

        /* access modifiers changed from: private */
        public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
            setClickable(!z);
            setFocusable(z);
        }

        @Override // android.view.View, android.view.ViewGroup
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.onAttachStateChangeListener;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewAttachedToWindow(this);
            }
            ViewCompat.requestApplyInsets(this);
        }

        @Override // android.view.View, android.view.ViewGroup
        public void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            OnAttachStateChangeListener onAttachStateChangeListener = this.onAttachStateChangeListener;
            if (onAttachStateChangeListener != null) {
                onAttachStateChangeListener.onViewDetachedFromWindow(this);
            }
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(this.accessibilityManager, this.touchExplorationStateChangeListener);
        }

        @Override // android.widget.FrameLayout, android.view.View, android.view.ViewGroup
        public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
            super.onLayout(z, i2, i3, i4, i5);
            OnLayoutChangeListener onLayoutChangeListener = this.onLayoutChangeListener;
            if (onLayoutChangeListener != null) {
                onLayoutChangeListener.onLayoutChange(this, i2, i3, i4, i5);
            }
        }

        public void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.onAttachStateChangeListener = onAttachStateChangeListener;
        }

        public void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.onLayoutChangeListener = onLayoutChangeListener;
        }

        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, (float) obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            AnonymousClass1 r3 = new AccessibilityManagerCompat.TouchExplorationStateChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.1
                @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
                public void onTouchExplorationStateChanged(boolean z) {
                    SnackbarBaseLayout.this.setClickableOrFocusableBasedOnAccessibility(z);
                }
            };
            this.touchExplorationStateChangeListener = r3;
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(this.accessibilityManager, r3);
            setClickableOrFocusableBasedOnAccessibility(this.accessibilityManager.isTouchExplorationEnabled());
        }
    }

    public BaseTransientBottomBar(@NonNull ViewGroup viewGroup, @NonNull View view, @NonNull ContentViewCallback contentViewCallback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        } else if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        } else if (contentViewCallback != null) {
            this.targetParent = viewGroup;
            this.contentViewCallback = contentViewCallback;
            Context context = viewGroup.getContext();
            this.context = context;
            ThemeEnforcement.checkAppCompatTheme(context);
            SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) LayoutInflater.from(this.context).inflate(getSnackbarBaseLayoutResId(), this.targetParent, false);
            this.view = snackbarBaseLayout;
            snackbarBaseLayout.addView(view);
            ViewCompat.setAccessibilityLiveRegion(this.view, 1);
            ViewCompat.setImportantForAccessibility(this.view, 1);
            ViewCompat.setFitsSystemWindows(this.view, true);
            ViewCompat.setOnApplyWindowInsetsListener(this.view, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.2
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    view2.setPadding(view2.getPaddingLeft(), view2.getPaddingTop(), view2.getPaddingRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                    return windowInsetsCompat;
                }
            });
            ViewCompat.setAccessibilityDelegate(this.view, new AccessibilityDelegateCompat() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.3
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.addAction(1048576);
                    accessibilityNodeInfoCompat.setDismissable(true);
                }

                @Override // androidx.core.view.AccessibilityDelegateCompat
                public boolean performAccessibilityAction(View view2, int i2, Bundle bundle) {
                    if (i2 != 1048576) {
                        return super.performAccessibilityAction(view2, i2, bundle);
                    }
                    BaseTransientBottomBar.this.dismiss();
                    return true;
                }
            });
            this.accessibilityManager = (AccessibilityManager) this.context.getSystemService("accessibility");
        } else {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
    }

    private void animateViewOut(final int i2) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, getTranslationYBottom());
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewHidden(i2);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentOut(0, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.11
            public int previousAnimatedIntValue = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
                } else {
                    BaseTransientBottomBar.this.view.setTranslationY((float) intValue);
                }
                this.previousAnimatedIntValue = intValue;
            }
        });
        valueAnimator.start();
    }

    private int getTranslationYBottom() {
        int height = this.view.getHeight();
        ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? height + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin : height;
    }

    @NonNull
    public B addCallback(@NonNull BaseCallback<B> baseCallback) {
        if (baseCallback == null) {
            return this;
        }
        if (this.callbacks == null) {
            this.callbacks = new ArrayList();
        }
        this.callbacks.add(baseCallback);
        return this;
    }

    public void animateViewIn() {
        final int translationYBottom = getTranslationYBottom();
        if (USE_OFFSET_API) {
            ViewCompat.offsetTopAndBottom(this.view, translationYBottom);
        } else {
            this.view.setTranslationY((float) translationYBottom);
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(translationYBottom, 0);
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BaseTransientBottomBar.this.onViewShown();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BaseTransientBottomBar.this.contentViewCallback.animateContentIn(70, 180);
            }
        });
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.9
            public int previousAnimatedIntValue;

            {
                this.previousAnimatedIntValue = translationYBottom;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                int intValue = ((Integer) valueAnimator2.getAnimatedValue()).intValue();
                if (BaseTransientBottomBar.USE_OFFSET_API) {
                    ViewCompat.offsetTopAndBottom(BaseTransientBottomBar.this.view, intValue - this.previousAnimatedIntValue);
                } else {
                    BaseTransientBottomBar.this.view.setTranslationY((float) intValue);
                }
                this.previousAnimatedIntValue = intValue;
            }
        });
        valueAnimator.start();
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public void dispatchDismiss(int i2) {
        SnackbarManager.getInstance().dismiss(this.managerCallback, i2);
    }

    public Behavior getBehavior() {
        return this.behavior;
    }

    @NonNull
    public Context getContext() {
        return this.context;
    }

    public int getDuration() {
        return this.duration;
    }

    public SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new Behavior();
    }

    @LayoutRes
    public int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    @NonNull
    public View getView() {
        return this.view;
    }

    public boolean hasSnackbarStyleAttr() {
        TypedArray obtainStyledAttributes = this.context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        if (resourceId != -1) {
            return true;
        }
        return false;
    }

    public final void hideView(int i2) {
        if (!shouldAnimate() || this.view.getVisibility() != 0) {
            onViewHidden(i2);
        } else {
            animateViewOut(i2);
        }
    }

    public boolean isShown() {
        return SnackbarManager.getInstance().isCurrent(this.managerCallback);
    }

    public boolean isShownOrQueued() {
        return SnackbarManager.getInstance().isCurrentOrNext(this.managerCallback);
    }

    public void onViewHidden(int i2) {
        SnackbarManager.getInstance().onDismissed(this.managerCallback);
        List<BaseCallback<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onDismissed(this, i2);
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    public void onViewShown() {
        SnackbarManager.getInstance().onShown(this.managerCallback);
        List<BaseCallback<B>> list = this.callbacks;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.callbacks.get(size).onShown(this);
            }
        }
    }

    @NonNull
    public B removeCallback(@NonNull BaseCallback<B> baseCallback) {
        List<BaseCallback<B>> list;
        if (baseCallback == null || (list = this.callbacks) == null) {
            return this;
        }
        list.remove(baseCallback);
        return this;
    }

    public B setBehavior(Behavior behavior) {
        this.behavior = behavior;
        return this;
    }

    @NonNull
    public B setDuration(int i2) {
        this.duration = i2;
        return this;
    }

    public boolean shouldAnimate() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList = this.accessibilityManager.getEnabledAccessibilityServiceList(1);
        if (enabledAccessibilityServiceList == null || !enabledAccessibilityServiceList.isEmpty()) {
            return false;
        }
        return true;
    }

    public void show() {
        SnackbarManager.getInstance().show(getDuration(), this.managerCallback);
    }

    public final void showView() {
        if (this.view.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                SwipeDismissBehavior<? extends View> swipeDismissBehavior = this.behavior;
                if (swipeDismissBehavior == null) {
                    swipeDismissBehavior = getNewBehavior();
                }
                if (swipeDismissBehavior instanceof Behavior) {
                    ((Behavior) swipeDismissBehavior).setBaseTransientBottomBar(this);
                }
                swipeDismissBehavior.setListener(new SwipeDismissBehavior.OnDismissListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.5
                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                    public void onDismiss(View view) {
                        view.setVisibility(8);
                        BaseTransientBottomBar.this.dispatchDismiss(0);
                    }

                    @Override // com.google.android.material.behavior.SwipeDismissBehavior.OnDismissListener
                    public void onDragStateChanged(int i2) {
                        if (i2 == 0) {
                            SnackbarManager.getInstance().restoreTimeoutIfPaused(BaseTransientBottomBar.this.managerCallback);
                        } else if (i2 == 1 || i2 == 2) {
                            SnackbarManager.getInstance().pauseTimeout(BaseTransientBottomBar.this.managerCallback);
                        }
                    }
                });
                layoutParams2.setBehavior(swipeDismissBehavior);
                layoutParams2.insetEdge = 80;
            }
            this.targetParent.addView(this.view);
        }
        this.view.setOnAttachStateChangeListener(new OnAttachStateChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6
            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                if (BaseTransientBottomBar.this.isShownOrQueued()) {
                    BaseTransientBottomBar.handler.post(new Runnable() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseTransientBottomBar.this.onViewHidden(3);
                        }
                    });
                }
            }
        });
        if (!ViewCompat.isLaidOut(this.view)) {
            this.view.setOnLayoutChangeListener(new OnLayoutChangeListener() { // from class: com.google.android.material.snackbar.BaseTransientBottomBar.7
                @Override // com.google.android.material.snackbar.BaseTransientBottomBar.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5) {
                    BaseTransientBottomBar.this.view.setOnLayoutChangeListener(null);
                    if (BaseTransientBottomBar.this.shouldAnimate()) {
                        BaseTransientBottomBar.this.animateViewIn();
                    } else {
                        BaseTransientBottomBar.this.onViewShown();
                    }
                }
            });
        } else if (shouldAnimate()) {
            animateViewIn();
        } else {
            onViewShown();
        }
    }
}
