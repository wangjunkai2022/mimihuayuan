package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.math.MathUtils;
import androidx.core.util.ObjectsCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;

/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public static final int DEFAULT_SCRIM_ANIMATION_DURATION = 600;
    public final CollapsingTextHelper collapsingTextHelper;
    public boolean collapsingTitleEnabled;
    public Drawable contentScrim;
    public int currentOffset;
    public boolean drawCollapsingTitle;
    public View dummyView;
    public int expandedMarginBottom;
    public int expandedMarginEnd;
    public int expandedMarginStart;
    public int expandedMarginTop;
    public WindowInsetsCompat lastInsets;
    public AppBarLayout.OnOffsetChangedListener onOffsetChangedListener;
    public boolean refreshToolbar;
    public int scrimAlpha;
    public long scrimAnimationDuration;
    public ValueAnimator scrimAnimator;
    public int scrimVisibleHeightTrigger;
    public boolean scrimsAreShown;
    public Drawable statusBarScrim;
    public final Rect tmpRect;
    public Toolbar toolbar;
    public View toolbarDirectChild;
    public int toolbarId;

    /* loaded from: classes.dex */
    public class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        public OffsetUpdateListener() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
        public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.currentOffset = i2;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.lastInsets;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                int i4 = layoutParams.collapseMode;
                if (i4 == 1) {
                    viewOffsetHelper.setTopAndBottomOffset(MathUtils.clamp(-i2, 0, CollapsingToolbarLayout.this.getMaxOffsetForPinChild(childAt)));
                } else if (i4 == 2) {
                    viewOffsetHelper.setTopAndBottomOffset(Math.round(((float) (-i2)) * layoutParams.parallaxMult));
                }
            }
            CollapsingToolbarLayout.this.updateScrimVisibility();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.statusBarScrim != null && systemWindowInsetTop > 0) {
                ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout2);
            }
            CollapsingToolbarLayout.this.collapsingTextHelper.setExpansionFraction(((float) Math.abs(i2)) / ((float) ((CollapsingToolbarLayout.this.getHeight() - ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this)) - systemWindowInsetTop)));
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    private void animateScrim(int i2) {
        ensureToolbar();
        ValueAnimator valueAnimator = this.scrimAnimator;
        if (valueAnimator == null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            this.scrimAnimator = valueAnimator2;
            valueAnimator2.setDuration(this.scrimAnimationDuration);
            this.scrimAnimator.setInterpolator(i2 > this.scrimAlpha ? AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR : AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
            this.scrimAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    CollapsingToolbarLayout.this.setScrimAlpha(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
        } else if (valueAnimator.isRunning()) {
            this.scrimAnimator.cancel();
        }
        this.scrimAnimator.setIntValues(this.scrimAlpha, i2);
        this.scrimAnimator.start();
    }

    private void ensureToolbar() {
        if (this.refreshToolbar) {
            Toolbar toolbar = null;
            this.toolbar = null;
            this.toolbarDirectChild = null;
            int i2 = this.toolbarId;
            if (i2 != -1) {
                Toolbar toolbar2 = (Toolbar) findViewById(i2);
                this.toolbar = toolbar2;
                if (toolbar2 != null) {
                    this.toolbarDirectChild = findDirectChild(toolbar2);
                }
            }
            if (this.toolbar == null) {
                int childCount = getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i3);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i3++;
                }
                this.toolbar = toolbar;
            }
            updateDummyView();
            this.refreshToolbar = false;
        }
    }

    private View findDirectChild(View view) {
        ViewParent parent = view.getParent();
        while (parent != this && parent != null) {
            if (parent instanceof View) {
                view = (View) parent;
            }
            parent = parent.getParent();
        }
        return view;
    }

    public static int getHeightWithMargins(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(R.id.view_offset_helper);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
        view.setTag(R.id.view_offset_helper, viewOffsetHelper2);
        return viewOffsetHelper2;
    }

    private boolean isToolbarChild(View view) {
        View view2 = this.toolbarDirectChild;
        if (view2 == null || view2 == this) {
            if (view == this.toolbar) {
                return true;
            }
        } else if (view == view2) {
            return true;
        }
        return false;
    }

    private void updateContentDescriptionFromTitle() {
        setContentDescription(getTitle());
    }

    private void updateDummyView() {
        View view;
        if (!this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.dummyView);
            }
        }
        if (this.collapsingTitleEnabled && this.toolbar != null) {
            if (this.dummyView == null) {
                this.dummyView = new View(getContext());
            }
            if (this.dummyView.getParent() == null) {
                this.toolbar.addView(this.dummyView, -1, -1);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        ensureToolbar();
        if (this.toolbar == null && (drawable = this.contentScrim) != null && this.scrimAlpha > 0) {
            drawable.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
        }
        if (this.collapsingTitleEnabled && this.drawCollapsingTitle) {
            this.collapsingTextHelper.draw(canvas);
        }
        if (this.statusBarScrim != null && this.scrimAlpha > 0) {
            WindowInsetsCompat windowInsetsCompat = this.lastInsets;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            if (systemWindowInsetTop > 0) {
                this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), systemWindowInsetTop - this.currentOffset);
                this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
                this.statusBarScrim.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        boolean z;
        if (this.contentScrim == null || this.scrimAlpha <= 0 || !isToolbarChild(view)) {
            z = false;
        } else {
            this.contentScrim.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
            z = true;
        }
        if (super.drawChild(canvas, view, j2) || z) {
            return true;
        }
        return false;
    }

    @Override // android.view.View, android.view.ViewGroup
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper != null) {
            z |= collapsingTextHelper.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTextHelper.getCollapsedTextGravity();
    }

    @NonNull
    public Typeface getCollapsedTitleTypeface() {
        return this.collapsingTextHelper.getCollapsedTypeface();
    }

    @Nullable
    public Drawable getContentScrim() {
        return this.contentScrim;
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTextHelper.getExpandedTextGravity();
    }

    public int getExpandedTitleMarginBottom() {
        return this.expandedMarginBottom;
    }

    public int getExpandedTitleMarginEnd() {
        return this.expandedMarginEnd;
    }

    public int getExpandedTitleMarginStart() {
        return this.expandedMarginStart;
    }

    public int getExpandedTitleMarginTop() {
        return this.expandedMarginTop;
    }

    @NonNull
    public Typeface getExpandedTitleTypeface() {
        return this.collapsingTextHelper.getExpandedTypeface();
    }

    public final int getMaxOffsetForPinChild(View view) {
        return ((getHeight() - getViewOffsetHelper(view).getLayoutTop()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    public int getScrimAlpha() {
        return this.scrimAlpha;
    }

    public long getScrimAnimationDuration() {
        return this.scrimAnimationDuration;
    }

    public int getScrimVisibleHeightTrigger() {
        int i2 = this.scrimVisibleHeightTrigger;
        if (i2 >= 0) {
            return i2;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight > 0) {
            return Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight());
        }
        return getHeight() / 3;
    }

    @Nullable
    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    @Nullable
    public CharSequence getTitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingTextHelper.getText();
        }
        return null;
    }

    public boolean isTitleEnabled() {
        return this.collapsingTitleEnabled;
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            ViewCompat.setFitsSystemWindows(this, ViewCompat.getFitsSystemWindows((View) parent));
            if (this.onOffsetChangedListener == null) {
                this.onOffsetChangedListener = new OffsetUpdateListener();
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.onOffsetChangedListener);
            ViewCompat.requestApplyInsets(this);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.OnOffsetChangedListener onOffsetChangedListener = this.onOffsetChangedListener;
        if (onOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(onOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.View, android.view.ViewGroup
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View view;
        super.onLayout(z, i2, i3, i4, i5);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                if (!ViewCompat.getFitsSystemWindows(childAt) && childAt.getTop() < systemWindowInsetTop) {
                    ViewCompat.offsetTopAndBottom(childAt, systemWindowInsetTop);
                }
            }
        }
        if (this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            boolean z2 = true;
            boolean z3 = ViewCompat.isAttachedToWindow(view) && this.dummyView.getVisibility() == 0;
            this.drawCollapsingTitle = z3;
            if (z3) {
                if (ViewCompat.getLayoutDirection(this) != 1) {
                    z2 = false;
                }
                View view2 = this.toolbarDirectChild;
                if (view2 == null) {
                    view2 = this.toolbar;
                }
                int maxOffsetForPinChild = getMaxOffsetForPinChild(view2);
                DescendantOffsetUtils.getDescendantRect(this, this.dummyView, this.tmpRect);
                this.collapsingTextHelper.setCollapsedBounds(this.tmpRect.left + (z2 ? this.toolbar.getTitleMarginEnd() : this.toolbar.getTitleMarginStart()), this.toolbar.getTitleMarginTop() + this.tmpRect.top + maxOffsetForPinChild, this.tmpRect.right + (z2 ? this.toolbar.getTitleMarginStart() : this.toolbar.getTitleMarginEnd()), (this.tmpRect.bottom + maxOffsetForPinChild) - this.toolbar.getTitleMarginBottom());
                this.collapsingTextHelper.setExpandedBounds(z2 ? this.expandedMarginEnd : this.expandedMarginStart, this.tmpRect.top + this.expandedMarginTop, (i4 - i2) - (z2 ? this.expandedMarginStart : this.expandedMarginEnd), (i5 - i3) - this.expandedMarginBottom);
                this.collapsingTextHelper.recalculate();
            }
        }
        int childCount2 = getChildCount();
        for (int i7 = 0; i7 < childCount2; i7++) {
            getViewOffsetHelper(getChildAt(i7)).onViewLayout();
        }
        if (this.toolbar != null) {
            if (this.collapsingTitleEnabled && TextUtils.isEmpty(this.collapsingTextHelper.getText())) {
                setTitle(this.toolbar.getTitle());
            }
            View view3 = this.toolbarDirectChild;
            if (view3 == null || view3 == this) {
                setMinimumHeight(getHeightWithMargins(this.toolbar));
            } else {
                setMinimumHeight(getHeightWithMargins(view3));
            }
        }
        updateScrimVisibility();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i2, int i3) {
        ensureToolbar();
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (mode == 0 && systemWindowInsetTop > 0) {
            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.contentScrim;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    public WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            requestLayout();
        }
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    public void setCollapsedTitleGravity(int i2) {
        this.collapsingTextHelper.setCollapsedTextGravity(i2);
    }

    public void setCollapsedTitleTextAppearance(@StyleRes int i2) {
        this.collapsingTextHelper.setCollapsedTextAppearance(i2);
    }

    public void setCollapsedTitleTextColor(@ColorInt int i2) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setCollapsedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.setCollapsedTypeface(typeface);
    }

    public void setContentScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.contentScrim = drawable3;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getWidth(), getHeight());
                this.contentScrim.setCallback(this);
                this.contentScrim.setAlpha(this.scrimAlpha);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setContentScrimColor(@ColorInt int i2) {
        setContentScrim(new ColorDrawable(i2));
    }

    public void setContentScrimResource(@DrawableRes int i2) {
        setContentScrim(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setExpandedTitleColor(@ColorInt int i2) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setExpandedTitleGravity(int i2) {
        this.collapsingTextHelper.setExpandedTextGravity(i2);
    }

    public void setExpandedTitleMargin(int i2, int i3, int i4, int i5) {
        this.expandedMarginStart = i2;
        this.expandedMarginTop = i3;
        this.expandedMarginEnd = i4;
        this.expandedMarginBottom = i5;
        requestLayout();
    }

    public void setExpandedTitleMarginBottom(int i2) {
        this.expandedMarginBottom = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i2) {
        this.expandedMarginEnd = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i2) {
        this.expandedMarginStart = i2;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i2) {
        this.expandedMarginTop = i2;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(@StyleRes int i2) {
        this.collapsingTextHelper.setExpandedTextAppearance(i2);
    }

    public void setExpandedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.setExpandedTextColor(colorStateList);
    }

    public void setExpandedTitleTypeface(@Nullable Typeface typeface) {
        this.collapsingTextHelper.setExpandedTypeface(typeface);
    }

    public void setScrimAlpha(int i2) {
        Toolbar toolbar;
        if (i2 != this.scrimAlpha) {
            if (!(this.contentScrim == null || (toolbar = this.toolbar) == null)) {
                ViewCompat.postInvalidateOnAnimation(toolbar);
            }
            this.scrimAlpha = i2;
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setScrimAnimationDuration(@IntRange(from = 0) long j2) {
        this.scrimAnimationDuration = j2;
    }

    public void setScrimVisibleHeightTrigger(@IntRange(from = 0) int i2) {
        if (this.scrimVisibleHeightTrigger != i2) {
            this.scrimVisibleHeightTrigger = i2;
            updateScrimVisibility();
        }
    }

    public void setScrimsShown(boolean z) {
        setScrimsShown(z, ViewCompat.isLaidOut(this) && !isInEditMode());
    }

    public void setStatusBarScrim(@Nullable Drawable drawable) {
        Drawable drawable2 = this.statusBarScrim;
        if (drawable2 != drawable) {
            Drawable drawable3 = null;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            if (drawable != null) {
                drawable3 = drawable.mutate();
            }
            this.statusBarScrim = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.statusBarScrim, ViewCompat.getLayoutDirection(this));
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarScrimColor(@ColorInt int i2) {
        setStatusBarScrim(new ColorDrawable(i2));
    }

    public void setStatusBarScrimResource(@DrawableRes int i2) {
        setStatusBarScrim(ContextCompat.getDrawable(getContext(), i2));
    }

    public void setTitle(@Nullable CharSequence charSequence) {
        this.collapsingTextHelper.setText(charSequence);
        updateContentDescriptionFromTitle();
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.collapsingTitleEnabled) {
            this.collapsingTitleEnabled = z;
            updateContentDescriptionFromTitle();
            updateDummyView();
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.statusBarScrim;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.statusBarScrim.setVisible(z, false);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.contentScrim.setVisible(z, false);
        }
    }

    public final void updateScrimVisibility() {
        if (this.contentScrim != null || this.statusBarScrim != null) {
            setScrimsShown(getHeight() + this.currentOffset < getScrimVisibleHeightTrigger());
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.contentScrim || drawable == this.statusBarScrim;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setCollapsedTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.collapsingTextHelper.setCollapsedTextColor(colorStateList);
    }

    public void setScrimsShown(boolean z, boolean z2) {
        if (this.scrimsAreShown != z) {
            int i2 = 255;
            if (z2) {
                if (!z) {
                    i2 = 0;
                }
                animateScrim(i2);
            } else {
                if (!z) {
                    i2 = 0;
                }
                setScrimAlpha(i2);
            }
            this.scrimsAreShown = z;
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTextHelper = collapsingTextHelper;
        collapsingTextHelper.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.CollapsingToolbarLayout, i2, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        this.collapsingTextHelper.setExpandedTextGravity(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
        this.collapsingTextHelper.setCollapsedTextGravity(obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.expandedMarginBottom = dimensionPixelSize;
        this.expandedMarginEnd = dimensionPixelSize;
        this.expandedMarginTop = dimensionPixelSize;
        this.expandedMarginStart = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            this.expandedMarginStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            this.expandedMarginEnd = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.expandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.expandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.collapsingTitleEnabled = obtainStyledAttributes.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
        setTitle(obtainStyledAttributes.getText(R.styleable.CollapsingToolbarLayout_title));
        this.collapsingTextHelper.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        this.collapsingTextHelper.setCollapsedTextAppearance(androidx.appcompat.R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
            this.collapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
            this.collapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
        }
        this.scrimVisibleHeightTrigger = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_scrimVisibleHeightTrigger, -1);
        this.scrimAnimationDuration = (long) obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_scrimAnimationDuration, 600);
        setContentScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
        this.toolbarId = obtainStyledAttributes.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.appbar.CollapsingToolbarLayout.1
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return CollapsingToolbarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;
        public static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5f;
        public int collapseMode;
        public float parallaxMult;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsingToolbarLayout_Layout);
            this.collapseMode = obtainStyledAttributes.getInt(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseMode, 0);
            setParallaxMultiplier(obtainStyledAttributes.getFloat(R.styleable.CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier, 0.5f));
            obtainStyledAttributes.recycle();
        }

        public int getCollapseMode() {
            return this.collapseMode;
        }

        public float getParallaxMultiplier() {
            return this.parallaxMult;
        }

        public void setCollapseMode(int i2) {
            this.collapseMode = i2;
        }

        public void setParallaxMultiplier(float f2) {
            this.parallaxMult = f2;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(int i2, int i3, int i4) {
            super(i2, i3, i4);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }

        @RequiresApi(19)
        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.collapseMode = 0;
            this.parallaxMult = 0.5f;
        }
    }
}
