package androidx.customview.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import f.b.a.a.a;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ViewDragHelper {
    public static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final String TAG = "ViewDragHelper";
    public static final Interpolator sInterpolator = new Interpolator() { // from class: androidx.customview.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    };
    public final Callback mCallback;
    public View mCapturedView;
    public int mDragState;
    public int[] mEdgeDragsInProgress;
    public int[] mEdgeDragsLocked;
    public int mEdgeSize;
    public int[] mInitialEdgesTouched;
    public float[] mInitialMotionX;
    public float[] mInitialMotionY;
    public float[] mLastMotionX;
    public float[] mLastMotionY;
    public float mMaxVelocity;
    public float mMinVelocity;
    public final ViewGroup mParentView;
    public int mPointersDown;
    public boolean mReleaseInProgress;
    public OverScroller mScroller;
    public int mTouchSlop;
    public int mTrackingEdges;
    public VelocityTracker mVelocityTracker;
    public int mActivePointerId = -1;
    public final Runnable mSetIdleRunnable = new Runnable() { // from class: androidx.customview.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i2, int i3) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i2, int i3) {
            return 0;
        }

        public int getOrderedChildIndex(int i2) {
            return i2;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i2, int i3) {
        }

        public boolean onEdgeLock(int i2) {
            return false;
        }

        public void onEdgeTouched(int i2, int i3) {
        }

        public void onViewCaptured(@NonNull View view, int i2) {
        }

        public void onViewDragStateChanged(int i2) {
        }

        public void onViewPositionChanged(@NonNull View view, int i2, int i3, @Px int i4, @Px int i5) {
        }

        public void onViewReleased(@NonNull View view, float f2, float f3) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i2);
    }

    public ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (callback != null) {
            this.mParentView = viewGroup;
            this.mCallback = callback;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.mEdgeSize = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
            this.mMaxVelocity = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.mMinVelocity = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.mScroller = new OverScroller(context, sInterpolator);
        } else {
            throw new IllegalArgumentException("Callback may not be null");
        }
    }

    private boolean checkNewEdgeDrag(float f2, float f3, int i2, int i3) {
        float abs = Math.abs(f2);
        float abs2 = Math.abs(f3);
        if ((this.mInitialEdgesTouched[i2] & i3) != i3 || (this.mTrackingEdges & i3) == 0 || (this.mEdgeDragsLocked[i2] & i3) == i3 || (this.mEdgeDragsInProgress[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.mTouchSlop;
        if (abs <= ((float) i4) && abs2 <= ((float) i4)) {
            return false;
        }
        if (abs < abs2 * 0.5f && this.mCallback.onEdgeLock(i3)) {
            int[] iArr = this.mEdgeDragsLocked;
            iArr[i2] = iArr[i2] | i3;
            return false;
        } else if ((this.mEdgeDragsInProgress[i2] & i3) != 0 || abs <= ((float) this.mTouchSlop)) {
            return false;
        } else {
            return true;
        }
    }

    private boolean checkTouchSlop(View view, float f2, float f3) {
        if (view == null) {
            return false;
        }
        boolean z = this.mCallback.getViewHorizontalDragRange(view) > 0;
        boolean z2 = this.mCallback.getViewVerticalDragRange(view) > 0;
        if (z && z2) {
            float f4 = f3 * f3;
            int i2 = this.mTouchSlop;
            if (f4 + (f2 * f2) > ((float) (i2 * i2))) {
                return true;
            }
            return false;
        } else if (z) {
            if (Math.abs(f2) > ((float) this.mTouchSlop)) {
                return true;
            }
            return false;
        } else if (!z2 || Math.abs(f3) <= ((float) this.mTouchSlop)) {
            return false;
        } else {
            return true;
        }
    }

    private int clampMag(int i2, int i3, int i4) {
        int abs = Math.abs(i2);
        if (abs < i3) {
            return 0;
        }
        if (abs > i4) {
            return i2 > 0 ? i4 : -i4;
        }
        return i2;
    }

    private void clearMotionHistory() {
        float[] fArr = this.mInitialMotionX;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
            Arrays.fill(this.mInitialEdgesTouched, 0);
            Arrays.fill(this.mEdgeDragsInProgress, 0);
            Arrays.fill(this.mEdgeDragsLocked, 0);
            this.mPointersDown = 0;
        }
    }

    private int computeAxisDuration(int i2, int i3, int i4) {
        int i5;
        if (i2 == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        float f2 = (float) (width / 2);
        float distanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, ((float) Math.abs(i2)) / ((float) width))) * f2) + f2;
        int abs = Math.abs(i3);
        if (abs > 0) {
            i5 = Math.round(Math.abs(distanceInfluenceForSnapDuration / ((float) abs)) * 1000.0f) * 4;
        } else {
            i5 = (int) (((((float) Math.abs(i2)) / ((float) i4)) + 1.0f) * 256.0f);
        }
        return Math.min(i5, 600);
    }

    private int computeSettleDuration(View view, int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int clampMag = clampMag(i4, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int clampMag2 = clampMag(i5, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int abs = Math.abs(i2);
        int abs2 = Math.abs(i3);
        int abs3 = Math.abs(clampMag);
        int abs4 = Math.abs(clampMag2);
        int i6 = abs3 + abs4;
        int i7 = abs + abs2;
        if (clampMag != 0) {
            f3 = (float) abs3;
            f2 = (float) i6;
        } else {
            f3 = (float) abs;
            f2 = (float) i7;
        }
        float f6 = f3 / f2;
        if (clampMag2 != 0) {
            f5 = (float) abs4;
            f4 = (float) i6;
        } else {
            f5 = (float) abs2;
            f4 = (float) i7;
        }
        int computeAxisDuration = computeAxisDuration(i2, clampMag, this.mCallback.getViewHorizontalDragRange(view));
        return (int) ((((float) computeAxisDuration(i3, clampMag2, this.mCallback.getViewVerticalDragRange(view))) * (f5 / f4)) + (((float) computeAxisDuration) * f6));
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    private void dispatchViewReleased(float f2, float f3) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, f2, f3);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    private float distanceInfluenceForSnapDuration(float f2) {
        return (float) Math.sin((double) ((f2 - 0.5f) * 0.47123894f));
    }

    private void dragTo(int i2, int i3, int i4, int i5) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        if (i4 != 0) {
            i2 = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, i2, i4);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, i2 - left);
        }
        if (i5 != 0) {
            i3 = this.mCallback.clampViewPositionVertical(this.mCapturedView, i3, i5);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, i3 - top);
        }
        if (i4 != 0 || i5 != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, i2, i3, i2 - left, i3 - top);
        }
    }

    private void ensureMotionHistorySizeForId(int i2) {
        float[] fArr = this.mInitialMotionX;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            float[] fArr6 = this.mInitialMotionX;
            if (fArr6 != null) {
                System.arraycopy(fArr6, 0, fArr2, 0, fArr6.length);
                float[] fArr7 = this.mInitialMotionY;
                System.arraycopy(fArr7, 0, fArr3, 0, fArr7.length);
                float[] fArr8 = this.mLastMotionX;
                System.arraycopy(fArr8, 0, fArr4, 0, fArr8.length);
                float[] fArr9 = this.mLastMotionY;
                System.arraycopy(fArr9, 0, fArr5, 0, fArr9.length);
                int[] iArr4 = this.mInitialEdgesTouched;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.mEdgeDragsInProgress;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.mEdgeDragsLocked;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.mInitialMotionX = fArr2;
            this.mInitialMotionY = fArr3;
            this.mLastMotionX = fArr4;
            this.mLastMotionY = fArr5;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
    }

    private boolean forceSettleCapturedViewAt(int i2, int i3, int i4, int i5) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        if (i6 == 0 && i7 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i6, i7, computeSettleDuration(this.mCapturedView, i6, i7, i4, i5));
        setDragState(2);
        return true;
    }

    private int getEdgesTouched(int i2, int i3) {
        int i4 = i2 < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        if (i3 < this.mParentView.getTop() + this.mEdgeSize) {
            i4 |= 4;
        }
        if (i2 > this.mParentView.getRight() - this.mEdgeSize) {
            i4 |= 2;
        }
        return i3 > this.mParentView.getBottom() - this.mEdgeSize ? i4 | 8 : i4;
    }

    private boolean isValidPointerForActionMove(int i2) {
        return isPointerDown(i2);
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        dispatchViewReleased(clampMag(this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(this.mVelocityTracker.getYVelocity(this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void reportNewEdgeDrags(float f2, float f3, int i2) {
        int i3 = 1;
        if (!checkNewEdgeDrag(f2, f3, i2, 1)) {
            i3 = 0;
        }
        if (checkNewEdgeDrag(f3, f2, i2, 4)) {
            i3 |= 4;
        }
        if (checkNewEdgeDrag(f2, f3, i2, 2)) {
            i3 |= 2;
        }
        if (checkNewEdgeDrag(f3, f2, i2, 8)) {
            i3 |= 8;
        }
        if (i3 != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[i2] = iArr[i2] | i3;
            this.mCallback.onEdgeDragStarted(i3, i2);
        }
    }

    private void saveInitialMotion(float f2, float f3, int i2) {
        ensureMotionHistorySizeForId(i2);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[i2] = f2;
        fArr[i2] = f2;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[i2] = f3;
        fArr2[i2] = f3;
        this.mInitialEdgesTouched[i2] = getEdgesTouched((int) f2, (int) f3);
        this.mPointersDown |= 1 << i2;
    }

    private void saveLastMotion(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            if (isValidPointerForActionMove(pointerId)) {
                float x = motionEvent.getX(i2);
                float y = motionEvent.getY(i2);
                this.mLastMotionX[pointerId] = x;
                this.mLastMotionY[pointerId] = y;
            }
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    public boolean canScroll(@NonNull View view, boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i7 = i4 + scrollX;
                if (i7 >= childAt.getLeft() && i7 < childAt.getRight() && (i6 = i5 + scrollY) >= childAt.getTop() && i6 < childAt.getBottom() && canScroll(childAt, true, i2, i3, i7 - childAt.getLeft(), i6 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z || (!view.canScrollHorizontally(-i2) && !view.canScrollVertically(-i3))) {
            return false;
        }
        return true;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void captureChildView(@NonNull View view, int i2) {
        if (view.getParent() == this.mParentView) {
            this.mCapturedView = view;
            this.mActivePointerId = i2;
            this.mCallback.onViewCaptured(view, i2);
            setDragState(1);
            return;
        }
        StringBuilder o = a.o("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (");
        o.append(this.mParentView);
        o.append(")");
        throw new IllegalArgumentException(o.toString());
    }

    public boolean continueSettling(boolean z) {
        if (this.mDragState == 2) {
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (!(left == 0 && top == 0)) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        if (this.mDragState == 2) {
            return true;
        }
        return false;
    }

    @Nullable
    public View findTopChildUnder(int i2, int i3) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int i2, int i3, int i4, int i5) {
        if (this.mReleaseInProgress) {
            this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId), i2, i4, i3, i5);
            setDragState(2);
            return;
        }
        throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    @Nullable
    public View getCapturedView() {
        return this.mCapturedView;
    }

    @Px
    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    @Px
    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public boolean isCapturedViewUnder(int i2, int i3) {
        return isViewUnder(this.mCapturedView, i2, i3);
    }

    public boolean isEdgeTouched(int i2) {
        int length = this.mInitialEdgesTouched.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (isEdgeTouched(i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public boolean isPointerDown(int i2) {
        return ((1 << i2) & this.mPointersDown) != 0;
    }

    public boolean isViewUnder(@Nullable View view, int i2, int i3) {
        if (view != null && i2 >= view.getLeft() && i2 < view.getRight() && i3 >= view.getTop() && i3 < view.getBottom()) {
            return true;
        }
        return false;
    }

    public void processTouchEvent(@NonNull MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i3 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View findTopChildUnder = findTopChildUnder((int) x, (int) y);
            saveInitialMotion(x, y, pointerId);
            tryCaptureViewForDrag(findTopChildUnder, pointerId);
            int i4 = this.mInitialEdgesTouched[pointerId];
            int i5 = this.mTrackingEdges;
            if ((i4 & i5) != 0) {
                this.mCallback.onEdgeTouched(i4 & i5, pointerId);
            }
        } else if (actionMasked == 1) {
            if (this.mDragState == 1) {
                releaseViewForPointerUp();
            }
            cancel();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.mDragState == 1) {
                    dispatchViewReleased(0.0f, 0.0f);
                }
                cancel();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x2 = motionEvent.getX(actionIndex);
                float y2 = motionEvent.getY(actionIndex);
                saveInitialMotion(x2, y2, pointerId2);
                if (this.mDragState == 0) {
                    tryCaptureViewForDrag(findTopChildUnder((int) x2, (int) y2), pointerId2);
                    int i6 = this.mInitialEdgesTouched[pointerId2];
                    int i7 = this.mTrackingEdges;
                    if ((i6 & i7) != 0) {
                        this.mCallback.onEdgeTouched(i6 & i7, pointerId2);
                    }
                } else if (isCapturedViewUnder((int) x2, (int) y2)) {
                    tryCaptureViewForDrag(this.mCapturedView, pointerId2);
                }
            } else if (actionMasked == 6) {
                int pointerId3 = motionEvent.getPointerId(actionIndex);
                if (this.mDragState == 1 && pointerId3 == this.mActivePointerId) {
                    int pointerCount = motionEvent.getPointerCount();
                    while (true) {
                        if (i3 >= pointerCount) {
                            i2 = -1;
                            break;
                        }
                        int pointerId4 = motionEvent.getPointerId(i3);
                        if (pointerId4 != this.mActivePointerId) {
                            View findTopChildUnder2 = findTopChildUnder((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                            View view = this.mCapturedView;
                            if (findTopChildUnder2 == view && tryCaptureViewForDrag(view, pointerId4)) {
                                i2 = this.mActivePointerId;
                                break;
                            }
                        }
                        i3++;
                    }
                    if (i2 == -1) {
                        releaseViewForPointerUp();
                    }
                }
                clearMotionHistory(pointerId3);
            }
        } else if (this.mDragState != 1) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (i3 < pointerCount2) {
                int pointerId5 = motionEvent.getPointerId(i3);
                if (isValidPointerForActionMove(pointerId5)) {
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.mInitialMotionX[pointerId5];
                    float f3 = y3 - this.mInitialMotionY[pointerId5];
                    reportNewEdgeDrags(f2, f3, pointerId5);
                    if (this.mDragState != 1) {
                        View findTopChildUnder3 = findTopChildUnder((int) x3, (int) y3);
                        if (checkTouchSlop(findTopChildUnder3, f2, f3) && tryCaptureViewForDrag(findTopChildUnder3, pointerId5)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i3++;
            }
            saveLastMotion(motionEvent);
        } else if (isValidPointerForActionMove(this.mActivePointerId)) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
            float x4 = motionEvent.getX(findPointerIndex);
            float y4 = motionEvent.getY(findPointerIndex);
            float[] fArr = this.mLastMotionX;
            int i8 = this.mActivePointerId;
            int i9 = (int) (x4 - fArr[i8]);
            int i10 = (int) (y4 - this.mLastMotionY[i8]);
            dragTo(this.mCapturedView.getLeft() + i9, this.mCapturedView.getTop() + i10, i9, i10);
            saveLastMotion(motionEvent);
        }
    }

    public void setDragState(int i2) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != i2) {
            this.mDragState = i2;
            this.mCallback.onViewDragStateChanged(i2);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    public void setEdgeTrackingEnabled(int i2) {
        this.mTrackingEdges = i2;
    }

    public void setMinVelocity(float f2) {
        this.mMinVelocity = f2;
    }

    public boolean settleCapturedViewAt(int i2, int i3) {
        if (this.mReleaseInProgress) {
            return forceSettleCapturedViewAt(i2, i3, (int) this.mVelocityTracker.getXVelocity(this.mActivePointerId), (int) this.mVelocityTracker.getYVelocity(this.mActivePointerId));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00dd, code lost:
        if (r12 != r11) goto L_0x00e6;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean shouldInterceptTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r17) {
        /*
        // Method dump skipped, instructions count: 315
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(@NonNull View view, int i2, int i3) {
        this.mCapturedView = view;
        this.mActivePointerId = -1;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(i2, i3, 0, 0);
        if (!forceSettleCapturedViewAt && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    public boolean tryCaptureViewForDrag(View view, int i2) {
        if (view == this.mCapturedView && this.mActivePointerId == i2) {
            return true;
        }
        if (view == null || !this.mCallback.tryCaptureView(view, i2)) {
            return false;
        }
        this.mActivePointerId = i2;
        captureChildView(view, i2);
        return true;
    }

    private float clampMag(float f2, float f3, float f4) {
        float abs = Math.abs(f2);
        if (abs < f3) {
            return 0.0f;
        }
        if (abs > f4) {
            return f2 > 0.0f ? f4 : -f4;
        }
        return f2;
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f2, @NonNull Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.mTouchSlop = (int) ((1.0f / f2) * ((float) create.mTouchSlop));
        return create;
    }

    public boolean isEdgeTouched(int i2, int i3) {
        return isPointerDown(i3) && (i2 & this.mInitialEdgesTouched[i3]) != 0;
    }

    public boolean checkTouchSlop(int i2) {
        int length = this.mInitialMotionX.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (checkTouchSlop(i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int i2, int i3) {
        if (!isPointerDown(i3)) {
            return false;
        }
        boolean z = (i2 & 1) == 1;
        boolean z2 = (i2 & 2) == 2;
        float f2 = this.mLastMotionX[i3] - this.mInitialMotionX[i3];
        float f3 = this.mLastMotionY[i3] - this.mInitialMotionY[i3];
        if (z && z2) {
            float f4 = f3 * f3;
            int i4 = this.mTouchSlop;
            if (f4 + (f2 * f2) > ((float) (i4 * i4))) {
                return true;
            }
            return false;
        } else if (z) {
            if (Math.abs(f2) > ((float) this.mTouchSlop)) {
                return true;
            }
            return false;
        } else if (!z2 || Math.abs(f3) <= ((float) this.mTouchSlop)) {
            return false;
        } else {
            return true;
        }
    }

    private void clearMotionHistory(int i2) {
        if (this.mInitialMotionX != null && isPointerDown(i2)) {
            this.mInitialMotionX[i2] = 0.0f;
            this.mInitialMotionY[i2] = 0.0f;
            this.mLastMotionX[i2] = 0.0f;
            this.mLastMotionY[i2] = 0.0f;
            this.mInitialEdgesTouched[i2] = 0;
            this.mEdgeDragsInProgress[i2] = 0;
            this.mEdgeDragsLocked[i2] = 0;
            this.mPointersDown = (~(1 << i2)) & this.mPointersDown;
        }
    }
}
