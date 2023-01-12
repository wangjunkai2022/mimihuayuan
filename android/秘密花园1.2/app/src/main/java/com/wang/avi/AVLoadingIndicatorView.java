package com.wang.avi;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.wang.avi.indicators.BallPulseIndicator;

/* loaded from: classes.dex */
public class AVLoadingIndicatorView extends View {
    public static final BallPulseIndicator DEFAULT_INDICATOR = new BallPulseIndicator();
    public static final int MIN_DELAY = 500;
    public static final int MIN_SHOW_TIME = 500;
    public static final String TAG = "AVLoadingIndicatorView";
    public final Runnable mDelayedHide;
    public final Runnable mDelayedShow;
    public boolean mDismissed;
    public Indicator mIndicator;
    public int mIndicatorColor;
    public int mMaxHeight;
    public int mMaxWidth;
    public int mMinHeight;
    public int mMinWidth;
    public boolean mPostedHide;
    public boolean mPostedShow;
    public boolean mShouldStartAnimationDrawable;
    public long mStartTime;

    public AVLoadingIndicatorView(Context context) {
        super(context);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, null, 0, 0);
    }

    private void init(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.mMinWidth = 24;
        this.mMaxWidth = 48;
        this.mMinHeight = 24;
        this.mMaxHeight = 48;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AVLoadingIndicatorView, i2, i3);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minWidth, this.mMinWidth);
        this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxWidth, this.mMaxWidth);
        this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_minHeight, this.mMinHeight);
        this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AVLoadingIndicatorView_maxHeight, this.mMaxHeight);
        String string = obtainStyledAttributes.getString(R.styleable.AVLoadingIndicatorView_indicatorName);
        this.mIndicatorColor = obtainStyledAttributes.getColor(R.styleable.AVLoadingIndicatorView_indicatorColor, -1);
        setIndicator(string);
        if (this.mIndicator == null) {
            setIndicator(DEFAULT_INDICATOR);
        }
        obtainStyledAttributes.recycle();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    private void updateDrawableBounds(int i2, int i3) {
        Indicator indicator;
        int i4;
        int paddingLeft = i2 - (getPaddingLeft() + getPaddingRight());
        int paddingBottom = i3 - (getPaddingBottom() + getPaddingTop());
        if (this.mIndicator != null) {
            float intrinsicWidth = indicator.getIntrinsicWidth() / this.mIndicator.getIntrinsicHeight();
            float f2 = paddingLeft;
            float f3 = paddingBottom;
            float f4 = f2 / f3;
            int i5 = 0;
            if (intrinsicWidth != f4) {
                if (f4 > intrinsicWidth) {
                    int i6 = (int) (f3 * intrinsicWidth);
                    int i7 = (paddingLeft - i6) / 2;
                    i5 = i7;
                    paddingLeft = i6 + i7;
                } else {
                    int i8 = (int) ((1.0f / intrinsicWidth) * f2);
                    int i9 = (paddingBottom - i8) / 2;
                    int i10 = i8 + i9;
                    i4 = i9;
                    paddingBottom = i10;
                    this.mIndicator.setBounds(i5, i4, paddingLeft, paddingBottom);
                }
            }
            i4 = 0;
            this.mIndicator.setBounds(i5, i4, paddingLeft, paddingBottom);
        }
    }

    private void updateDrawableState() {
        int[] drawableState = getDrawableState();
        Indicator indicator = this.mIndicator;
        if (indicator == null || !indicator.isStateful()) {
            return;
        }
        this.mIndicator.setState(drawableState);
    }

    public void drawTrack(Canvas canvas) {
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            indicator.draw(canvas);
            canvas.restoreToCount(save);
            if (this.mShouldStartAnimationDrawable) {
                indicator.start();
                this.mShouldStartAnimationDrawable = false;
            }
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            indicator.setHotspot(f2, f3);
        }
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        updateDrawableState();
    }

    public Indicator getIndicator() {
        return this.mIndicator;
    }

    public void hide() {
        this.mDismissed = true;
        removeCallbacks(this.mDelayedShow);
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = this.mStartTime;
        long j3 = currentTimeMillis - j2;
        if (j3 < 500 && j2 != -1) {
            if (this.mPostedHide) {
                return;
            }
            postDelayed(this.mDelayedHide, 500 - j3);
            this.mPostedHide = true;
            return;
        }
        setVisibility(8);
    }

    @Override // android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        if (verifyDrawable(drawable)) {
            Rect bounds = drawable.getBounds();
            int paddingLeft = getPaddingLeft() + getScrollX();
            int paddingTop = getPaddingTop() + getScrollY();
            invalidate(bounds.left + paddingLeft, bounds.top + paddingTop, bounds.right + paddingLeft, bounds.bottom + paddingTop);
            return;
        }
        super.invalidateDrawable(drawable);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        startAnimation();
        removeCallbacks();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        stopAnimation();
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    @Override // android.view.View
    public synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawTrack(canvas);
    }

    @Override // android.view.View
    public synchronized void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        Indicator indicator = this.mIndicator;
        if (indicator != null) {
            i5 = Math.max(this.mMinWidth, Math.min(this.mMaxWidth, indicator.getIntrinsicWidth()));
            i4 = Math.max(this.mMinHeight, Math.min(this.mMaxHeight, indicator.getIntrinsicHeight()));
        } else {
            i4 = 0;
            i5 = 0;
        }
        updateDrawableState();
        setMeasuredDimension(View.resolveSizeAndState(getPaddingLeft() + getPaddingRight() + i5, i2, 0), View.resolveSizeAndState(getPaddingTop() + getPaddingBottom() + i4, i3, 0));
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        updateDrawableBounds(i2, i3);
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (i2 != 8 && i2 != 4) {
            startAnimation();
        } else {
            stopAnimation();
        }
    }

    public void setIndicator(Indicator indicator) {
        Indicator indicator2 = this.mIndicator;
        if (indicator2 != indicator) {
            if (indicator2 != null) {
                indicator2.setCallback(null);
                unscheduleDrawable(this.mIndicator);
            }
            this.mIndicator = indicator;
            setIndicatorColor(this.mIndicatorColor);
            if (indicator != null) {
                indicator.setCallback(this);
            }
            postInvalidate();
        }
    }

    public void setIndicatorColor(int i2) {
        this.mIndicatorColor = i2;
        this.mIndicator.setColor(i2);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        if (getVisibility() != i2) {
            super.setVisibility(i2);
            if (i2 != 8 && i2 != 4) {
                startAnimation();
            } else {
                stopAnimation();
            }
        }
    }

    public void show() {
        this.mStartTime = -1L;
        this.mDismissed = false;
        removeCallbacks(this.mDelayedHide);
        if (this.mPostedShow) {
            return;
        }
        postDelayed(this.mDelayedShow, 500L);
        this.mPostedShow = true;
    }

    public void smoothToHide() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432577));
        setVisibility(8);
    }

    public void smoothToShow() {
        startAnimation(AnimationUtils.loadAnimation(getContext(), 17432576));
        setVisibility(0);
    }

    public void startAnimation() {
        if (getVisibility() != 0) {
            return;
        }
        if (this.mIndicator instanceof Animatable) {
            this.mShouldStartAnimationDrawable = true;
        }
        postInvalidate();
    }

    public void stopAnimation() {
        Indicator indicator = this.mIndicator;
        if (indicator instanceof Animatable) {
            indicator.stop();
            this.mShouldStartAnimationDrawable = false;
        }
        postInvalidate();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mIndicator || super.verifyDrawable(drawable);
    }

    public void setIndicator(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (!str.contains(".")) {
            sb.append(AVLoadingIndicatorView.class.getPackage().getName());
            sb.append(".indicators");
            sb.append(".");
        }
        sb.append(str);
        try {
            setIndicator((Indicator) Class.forName(sb.toString()).newInstance());
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, 0, R.style.AVLoadingIndicatorView);
    }

    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i2, R.style.AVLoadingIndicatorView);
    }

    @TargetApi(21)
    public AVLoadingIndicatorView(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.1
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedHide = false;
                AVLoadingIndicatorView.this.mStartTime = -1L;
                AVLoadingIndicatorView.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.wang.avi.AVLoadingIndicatorView.2
            @Override // java.lang.Runnable
            public void run() {
                AVLoadingIndicatorView.this.mPostedShow = false;
                if (AVLoadingIndicatorView.this.mDismissed) {
                    return;
                }
                AVLoadingIndicatorView.this.mStartTime = System.currentTimeMillis();
                AVLoadingIndicatorView.this.setVisibility(0);
            }
        };
        init(context, attributeSet, i2, R.style.AVLoadingIndicatorView);
    }
}
