package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.customview.widget.ViewDragHelper;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    public static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    public static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    public boolean interceptingEvents;
    public OnDismissListener listener;
    public boolean sensitivitySet;
    public ViewDragHelper viewDragHelper;
    public float sensitivity = 0.0f;
    public int swipeDirection = 2;
    public float dragDismissThreshold = 0.5f;
    public float alphaStartSwipeDistance = 0.0f;
    public float alphaEndSwipeDistance = 0.5f;
    public final ViewDragHelper.Callback dragCallback = new ViewDragHelper.Callback() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        public static final int INVALID_POINTER_ID = -1;
        public int activePointerId = -1;
        public int originalCapturedViewLeft;

        private boolean shouldDismiss(View view, float f2) {
            int i2 = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
            if (i2 != 0) {
                boolean z = ViewCompat.getLayoutDirection(view) == 1;
                int i3 = SwipeDismissBehavior.this.swipeDirection;
                if (i3 == 2) {
                    return true;
                }
                if (i3 == 0) {
                    if (z) {
                        if (f2 >= 0.0f) {
                            return false;
                        }
                    } else if (i2 <= 0) {
                        return false;
                    }
                    return true;
                } else if (i3 != 1) {
                    return false;
                } else {
                    if (z) {
                        if (i2 <= 0) {
                            return false;
                        }
                    } else if (f2 >= 0.0f) {
                        return false;
                    }
                    return true;
                }
            } else {
                if (Math.abs(view.getLeft() - this.originalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.dragDismissThreshold)) {
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i2, int i3) {
            int i4;
            int i5;
            int width;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i6 = SwipeDismissBehavior.this.swipeDirection;
            if (i6 == 0) {
                if (z) {
                    i4 = this.originalCapturedViewLeft - view.getWidth();
                    i5 = this.originalCapturedViewLeft;
                } else {
                    i4 = this.originalCapturedViewLeft;
                    width = view.getWidth();
                    i5 = width + i4;
                }
            } else if (i6 != 1) {
                i4 = this.originalCapturedViewLeft - view.getWidth();
                i5 = view.getWidth() + this.originalCapturedViewLeft;
            } else if (z) {
                i4 = this.originalCapturedViewLeft;
                width = view.getWidth();
                i5 = width + i4;
            } else {
                i4 = this.originalCapturedViewLeft - view.getWidth();
                i5 = this.originalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(i4, i2, i5);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i2, int i3) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i2) {
            this.activePointerId = i2;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i2) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.listener;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i2, int i3, int i4, int i5) {
            float width = (((float) view.getWidth()) * SwipeDismissBehavior.this.alphaStartSwipeDistance) + ((float) this.originalCapturedViewLeft);
            float width2 = (((float) view.getWidth()) * SwipeDismissBehavior.this.alphaEndSwipeDistance) + ((float) this.originalCapturedViewLeft);
            float f2 = (float) i2;
            if (f2 <= width) {
                view.setAlpha(1.0f);
            } else if (f2 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.clamp(0.0f, 1.0f - SwipeDismissBehavior.fraction(width, width2, f2), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f2, float f3) {
            boolean z;
            int i2;
            OnDismissListener onDismissListener;
            this.activePointerId = -1;
            int width = view.getWidth();
            if (shouldDismiss(view, f2)) {
                int left = view.getLeft();
                int i3 = this.originalCapturedViewLeft;
                i2 = left < i3 ? i3 - width : i3 + width;
                z = true;
            } else {
                i2 = this.originalCapturedViewLeft;
                z = false;
            }
            if (SwipeDismissBehavior.this.viewDragHelper.settleCapturedViewAt(i2, view.getTop())) {
                ViewCompat.postOnAnimation(view, new SettleRunnable(view, z));
            } else if (z && (onDismissListener = SwipeDismissBehavior.this.listener) != null) {
                onDismissListener.onDismiss(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i2) {
            return this.activePointerId == -1 && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    /* loaded from: classes.dex */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i2);
    }

    /* loaded from: classes.dex */
    public class SettleRunnable implements Runnable {
        public final boolean dismiss;
        public final View view;

        public SettleRunnable(View view, boolean z) {
            this.view = view;
            this.dismiss = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.viewDragHelper;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.view, this);
            } else if (this.dismiss && (onDismissListener = SwipeDismissBehavior.this.listener) != null) {
                onDismissListener.onDismiss(this.view);
            }
        }
    }

    public static float clamp(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        ViewDragHelper viewDragHelper;
        if (this.viewDragHelper == null) {
            if (this.sensitivitySet) {
                viewDragHelper = ViewDragHelper.create(viewGroup, this.sensitivity, this.dragCallback);
            } else {
                viewDragHelper = ViewDragHelper.create(viewGroup, this.dragCallback);
            }
            this.viewDragHelper = viewDragHelper;
        }
    }

    public static float fraction(float f2, float f3, float f4) {
        return (f4 - f2) / (f3 - f2);
    }

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (!z) {
            return false;
        }
        ensureViewDragHelper(coordinatorLayout);
        return this.viewDragHelper.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        ViewDragHelper viewDragHelper = this.viewDragHelper;
        if (viewDragHelper == null) {
            return false;
        }
        viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f2) {
        this.dragDismissThreshold = clamp(0.0f, f2, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f2) {
        this.alphaEndSwipeDistance = clamp(0.0f, f2, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.listener = onDismissListener;
    }

    public void setSensitivity(float f2) {
        this.sensitivity = f2;
        this.sensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f2) {
        this.alphaStartSwipeDistance = clamp(0.0f, f2, 1.0f);
    }

    public void setSwipeDirection(int i2) {
        this.swipeDirection = i2;
    }

    public static int clamp(int i2, int i3, int i4) {
        return Math.min(Math.max(i2, i3), i4);
    }
}
