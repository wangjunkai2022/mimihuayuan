package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes.dex */
public abstract class AutoScrollHelper implements View.OnTouchListener {
    public static final int DEFAULT_ACTIVATION_DELAY = ViewConfiguration.getTapTimeout();
    public static final int DEFAULT_EDGE_TYPE = 1;
    public static final float DEFAULT_MAXIMUM_EDGE = Float.MAX_VALUE;
    public static final int DEFAULT_MAXIMUM_VELOCITY_DIPS = 1575;
    public static final int DEFAULT_MINIMUM_VELOCITY_DIPS = 315;
    public static final int DEFAULT_RAMP_DOWN_DURATION = 500;
    public static final int DEFAULT_RAMP_UP_DURATION = 500;
    public static final float DEFAULT_RELATIVE_EDGE = 0.2f;
    public static final float DEFAULT_RELATIVE_VELOCITY = 1.0f;
    public static final int EDGE_TYPE_INSIDE = 0;
    public static final int EDGE_TYPE_INSIDE_EXTEND = 1;
    public static final int EDGE_TYPE_OUTSIDE = 2;
    public static final int HORIZONTAL = 0;
    public static final float NO_MAX = Float.MAX_VALUE;
    public static final float NO_MIN = 0.0f;
    public static final float RELATIVE_UNSPECIFIED = 0.0f;
    public static final int VERTICAL = 1;
    public int mActivationDelay;
    public boolean mAlreadyDelayed;
    public boolean mAnimating;
    public int mEdgeType;
    public boolean mEnabled;
    public boolean mExclusive;
    public boolean mNeedsCancel;
    public boolean mNeedsReset;
    public Runnable mRunnable;
    public final View mTarget;
    public final ClampedScroller mScroller = new ClampedScroller();
    public final Interpolator mEdgeInterpolator = new AccelerateInterpolator();
    public float[] mRelativeEdges = {0.0f, 0.0f};
    public float[] mMaximumEdges = {Float.MAX_VALUE, Float.MAX_VALUE};
    public float[] mRelativeVelocity = {0.0f, 0.0f};
    public float[] mMinimumVelocity = {0.0f, 0.0f};
    public float[] mMaximumVelocity = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* loaded from: classes.dex */
    public static class ClampedScroller {
        public int mEffectiveRampDown;
        public int mRampDownDuration;
        public int mRampUpDuration;
        public float mStopValue;
        public float mTargetVelocityX;
        public float mTargetVelocityY;
        public long mStartTime = Long.MIN_VALUE;
        public long mStopTime = -1;
        public long mDeltaTime = 0;
        public int mDeltaX = 0;
        public int mDeltaY = 0;

        private float getValueAt(long j2) {
            if (j2 < this.mStartTime) {
                return 0.0f;
            }
            long j3 = this.mStopTime;
            if (j3 >= 0 && j2 >= j3) {
                long j4 = j2 - j3;
                float f2 = this.mStopValue;
                return (AutoScrollHelper.constrain(((float) j4) / this.mEffectiveRampDown, 0.0f, 1.0f) * f2) + (1.0f - f2);
            }
            return AutoScrollHelper.constrain(((float) (j2 - this.mStartTime)) / this.mRampUpDuration, 0.0f, 1.0f) * 0.5f;
        }

        private float interpolateValue(float f2) {
            return (f2 * 4.0f) + ((-4.0f) * f2 * f2);
        }

        public void computeScrollDelta() {
            if (this.mDeltaTime != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float interpolateValue = interpolateValue(getValueAt(currentAnimationTimeMillis));
                this.mDeltaTime = currentAnimationTimeMillis;
                float f2 = ((float) (currentAnimationTimeMillis - this.mDeltaTime)) * interpolateValue;
                this.mDeltaX = (int) (this.mTargetVelocityX * f2);
                this.mDeltaY = (int) (f2 * this.mTargetVelocityY);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int getDeltaX() {
            return this.mDeltaX;
        }

        public int getDeltaY() {
            return this.mDeltaY;
        }

        public int getHorizontalDirection() {
            float f2 = this.mTargetVelocityX;
            return (int) (f2 / Math.abs(f2));
        }

        public int getVerticalDirection() {
            float f2 = this.mTargetVelocityY;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean isFinished() {
            return this.mStopTime > 0 && AnimationUtils.currentAnimationTimeMillis() > this.mStopTime + ((long) this.mEffectiveRampDown);
        }

        public void requestStop() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mEffectiveRampDown = AutoScrollHelper.constrain((int) (currentAnimationTimeMillis - this.mStartTime), 0, this.mRampDownDuration);
            this.mStopValue = getValueAt(currentAnimationTimeMillis);
            this.mStopTime = currentAnimationTimeMillis;
        }

        public void setRampDownDuration(int i2) {
            this.mRampDownDuration = i2;
        }

        public void setRampUpDuration(int i2) {
            this.mRampUpDuration = i2;
        }

        public void setTargetVelocity(float f2, float f3) {
            this.mTargetVelocityX = f2;
            this.mTargetVelocityY = f3;
        }

        public void start() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.mStartTime = currentAnimationTimeMillis;
            this.mStopTime = -1L;
            this.mDeltaTime = currentAnimationTimeMillis;
            this.mStopValue = 0.5f;
            this.mDeltaX = 0;
            this.mDeltaY = 0;
        }
    }

    /* loaded from: classes.dex */
    public class ScrollAnimationRunnable implements Runnable {
        public ScrollAnimationRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollHelper autoScrollHelper = AutoScrollHelper.this;
            if (autoScrollHelper.mAnimating) {
                if (autoScrollHelper.mNeedsReset) {
                    autoScrollHelper.mNeedsReset = false;
                    autoScrollHelper.mScroller.start();
                }
                ClampedScroller clampedScroller = AutoScrollHelper.this.mScroller;
                if (!clampedScroller.isFinished() && AutoScrollHelper.this.shouldAnimate()) {
                    AutoScrollHelper autoScrollHelper2 = AutoScrollHelper.this;
                    if (autoScrollHelper2.mNeedsCancel) {
                        autoScrollHelper2.mNeedsCancel = false;
                        autoScrollHelper2.cancelTargetTouch();
                    }
                    clampedScroller.computeScrollDelta();
                    AutoScrollHelper.this.scrollTargetBy(clampedScroller.getDeltaX(), clampedScroller.getDeltaY());
                    ViewCompat.postOnAnimation(AutoScrollHelper.this.mTarget, this);
                    return;
                }
                AutoScrollHelper.this.mAnimating = false;
            }
        }
    }

    public AutoScrollHelper(@NonNull View view) {
        this.mTarget = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float f3 = (int) ((1575.0f * f2) + 0.5f);
        setMaximumVelocity(f3, f3);
        float f4 = (int) ((f2 * 315.0f) + 0.5f);
        setMinimumVelocity(f4, f4);
        setEdgeType(1);
        setMaximumEdges(Float.MAX_VALUE, Float.MAX_VALUE);
        setRelativeEdges(0.2f, 0.2f);
        setRelativeVelocity(1.0f, 1.0f);
        setActivationDelay(DEFAULT_ACTIVATION_DELAY);
        setRampUpDuration(500);
        setRampDownDuration(500);
    }

    private float computeTargetVelocity(int i2, float f2, float f3, float f4) {
        float edgeValue = getEdgeValue(this.mRelativeEdges[i2], f3, this.mMaximumEdges[i2], f2);
        int i3 = (edgeValue > 0.0f ? 1 : (edgeValue == 0.0f ? 0 : -1));
        if (i3 == 0) {
            return 0.0f;
        }
        float f5 = this.mRelativeVelocity[i2];
        float f6 = this.mMinimumVelocity[i2];
        float f7 = this.mMaximumVelocity[i2];
        float f8 = f5 * f4;
        if (i3 > 0) {
            return constrain(edgeValue * f8, f6, f7);
        }
        return -constrain((-edgeValue) * f8, f6, f7);
    }

    public static float constrain(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    public static int constrain(int i2, int i3, int i4) {
        return i2 > i4 ? i4 : i2 < i3 ? i3 : i2;
    }

    private float constrainEdgeValue(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.mEdgeType;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                if (this.mAnimating && this.mEdgeType == 1) {
                    return 1.0f;
                }
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
        return 0.0f;
    }

    private float getEdgeValue(float f2, float f3, float f4, float f5) {
        float interpolation;
        float constrain = constrain(f2 * f3, 0.0f, f4);
        float constrainEdgeValue = constrainEdgeValue(f3 - f5, constrain) - constrainEdgeValue(f5, constrain);
        if (constrainEdgeValue < 0.0f) {
            interpolation = -this.mEdgeInterpolator.getInterpolation(-constrainEdgeValue);
        } else if (constrainEdgeValue <= 0.0f) {
            return 0.0f;
        } else {
            interpolation = this.mEdgeInterpolator.getInterpolation(constrainEdgeValue);
        }
        return constrain(interpolation, -1.0f, 1.0f);
    }

    private void requestStop() {
        if (this.mNeedsReset) {
            this.mAnimating = false;
        } else {
            this.mScroller.requestStop();
        }
    }

    private void startAnimating() {
        int i2;
        if (this.mRunnable == null) {
            this.mRunnable = new ScrollAnimationRunnable();
        }
        this.mAnimating = true;
        this.mNeedsReset = true;
        if (!this.mAlreadyDelayed && (i2 = this.mActivationDelay) > 0) {
            ViewCompat.postOnAnimationDelayed(this.mTarget, this.mRunnable, i2);
        } else {
            this.mRunnable.run();
        }
        this.mAlreadyDelayed = true;
    }

    public abstract boolean canTargetScrollHorizontally(int i2);

    public abstract boolean canTargetScrollVertically(int i2);

    public void cancelTargetTouch() {
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        this.mTarget.onTouchEvent(obtain);
        obtain.recycle();
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public boolean isExclusive() {
        return this.mExclusive;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.mEnabled
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.requestStop()
            goto L58
        L1a:
            r5.mNeedsCancel = r2
            r5.mAlreadyDelayed = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.mTarget
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.computeTargetVelocity(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.mTarget
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.computeTargetVelocity(r2, r7, r6, r3)
            androidx.core.widget.AutoScrollHelper$ClampedScroller r7 = r5.mScroller
            r7.setTargetVelocity(r0, r6)
            boolean r6 = r5.mAnimating
            if (r6 != 0) goto L58
            boolean r6 = r5.shouldAnimate()
            if (r6 == 0) goto L58
            r5.startAnimating()
        L58:
            boolean r6 = r5.mExclusive
            if (r6 == 0) goto L61
            boolean r6 = r5.mAnimating
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.AutoScrollHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void scrollTargetBy(int i2, int i3);

    @NonNull
    public AutoScrollHelper setActivationDelay(int i2) {
        this.mActivationDelay = i2;
        return this;
    }

    @NonNull
    public AutoScrollHelper setEdgeType(int i2) {
        this.mEdgeType = i2;
        return this;
    }

    public AutoScrollHelper setEnabled(boolean z) {
        if (this.mEnabled && !z) {
            requestStop();
        }
        this.mEnabled = z;
        return this;
    }

    public AutoScrollHelper setExclusive(boolean z) {
        this.mExclusive = z;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumEdges(float f2, float f3) {
        float[] fArr = this.mMaximumEdges;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMaximumVelocity(float f2, float f3) {
        float[] fArr = this.mMaximumVelocity;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setMinimumVelocity(float f2, float f3) {
        float[] fArr = this.mMinimumVelocity;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampDownDuration(int i2) {
        this.mScroller.setRampDownDuration(i2);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRampUpDuration(int i2) {
        this.mScroller.setRampUpDuration(i2);
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeEdges(float f2, float f3) {
        float[] fArr = this.mRelativeEdges;
        fArr[0] = f2;
        fArr[1] = f3;
        return this;
    }

    @NonNull
    public AutoScrollHelper setRelativeVelocity(float f2, float f3) {
        float[] fArr = this.mRelativeVelocity;
        fArr[0] = f2 / 1000.0f;
        fArr[1] = f3 / 1000.0f;
        return this;
    }

    public boolean shouldAnimate() {
        ClampedScroller clampedScroller = this.mScroller;
        int verticalDirection = clampedScroller.getVerticalDirection();
        int horizontalDirection = clampedScroller.getHorizontalDirection();
        return (verticalDirection != 0 && canTargetScrollVertically(verticalDirection)) || (horizontalDirection != 0 && canTargetScrollHorizontally(horizontalDirection));
    }
}
