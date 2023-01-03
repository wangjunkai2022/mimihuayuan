package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ChildHelper {
    public static final boolean DEBUG = false;
    public static final String TAG = "ChildrenHelper";
    public final Callback mCallback;
    public final Bucket mBucket = new Bucket();
    public final List<View> mHiddenViews = new ArrayList();

    /* loaded from: classes.dex */
    public static class Bucket {
        public static final int BITS_PER_WORD = 64;
        public static final long LAST_BIT = Long.MIN_VALUE;
        public long mData = 0;
        public Bucket mNext;

        private void ensureNext() {
            if (this.mNext == null) {
                this.mNext = new Bucket();
            }
        }

        public void clear(int i2) {
            if (i2 >= 64) {
                Bucket bucket = this.mNext;
                if (bucket != null) {
                    bucket.clear(i2 - 64);
                    return;
                }
                return;
            }
            this.mData &= ~(1 << i2);
        }

        public int countOnesBefore(int i2) {
            Bucket bucket = this.mNext;
            if (bucket == null) {
                if (i2 >= 64) {
                    return Long.bitCount(this.mData);
                }
                return Long.bitCount(this.mData & ((1 << i2) - 1));
            } else if (i2 < 64) {
                return Long.bitCount(this.mData & ((1 << i2) - 1));
            } else {
                return Long.bitCount(this.mData) + bucket.countOnesBefore(i2 - 64);
            }
        }

        public boolean get(int i2) {
            if (i2 < 64) {
                return (this.mData & (1 << i2)) != 0;
            }
            ensureNext();
            return this.mNext.get(i2 - 64);
        }

        public void insert(int i2, boolean z) {
            if (i2 >= 64) {
                ensureNext();
                this.mNext.insert(i2 - 64, z);
                return;
            }
            boolean z2 = (this.mData & Long.MIN_VALUE) != 0;
            long j2 = (1 << i2) - 1;
            long j3 = this.mData;
            this.mData = ((j3 & (~j2)) << 1) | (j3 & j2);
            if (z) {
                set(i2);
            } else {
                clear(i2);
            }
            if (z2 || this.mNext != null) {
                ensureNext();
                this.mNext.insert(0, z2);
            }
        }

        public boolean remove(int i2) {
            if (i2 >= 64) {
                ensureNext();
                return this.mNext.remove(i2 - 64);
            }
            long j2 = 1 << i2;
            boolean z = (this.mData & j2) != 0;
            long j3 = this.mData & (~j2);
            this.mData = j3;
            long j4 = j2 - 1;
            this.mData = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
            Bucket bucket = this.mNext;
            if (bucket != null) {
                if (bucket.get(0)) {
                    set(63);
                }
                this.mNext.remove(0);
            }
            return z;
        }

        public void reset() {
            this.mData = 0;
            Bucket bucket = this.mNext;
            if (bucket != null) {
                bucket.reset();
            }
        }

        public void set(int i2) {
            if (i2 >= 64) {
                ensureNext();
                this.mNext.set(i2 - 64);
                return;
            }
            this.mData |= 1 << i2;
        }

        public String toString() {
            if (this.mNext == null) {
                return Long.toBinaryString(this.mData);
            }
            return this.mNext.toString() + "xx" + Long.toBinaryString(this.mData);
        }
    }

    /* loaded from: classes.dex */
    public interface Callback {
        void addView(View view, int i2);

        void attachViewToParent(View view, int i2, ViewGroup.LayoutParams layoutParams);

        void detachViewFromParent(int i2);

        View getChildAt(int i2);

        int getChildCount();

        RecyclerView.ViewHolder getChildViewHolder(View view);

        int indexOfChild(View view);

        void onEnteredHiddenState(View view);

        void onLeftHiddenState(View view);

        void removeAllViews();

        void removeViewAt(int i2);
    }

    public ChildHelper(Callback callback) {
        this.mCallback = callback;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001f, code lost:
        if (r4.mBucket.get(r2) == false) goto L_0x0024;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0024, code lost:
        return r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int getOffset(int r5) {
        /*
            r4 = this;
            r0 = -1
            if (r5 >= 0) goto L_0x0004
            return r0
        L_0x0004:
            androidx.recyclerview.widget.ChildHelper$Callback r1 = r4.mCallback
            int r1 = r1.getChildCount()
            r2 = r5
        L_0x000b:
            if (r2 >= r1) goto L_0x0027
            androidx.recyclerview.widget.ChildHelper$Bucket r3 = r4.mBucket
            int r3 = r3.countOnesBefore(r2)
            int r3 = r2 - r3
            int r3 = r5 - r3
            if (r3 != 0) goto L_0x0025
        L_0x0019:
            androidx.recyclerview.widget.ChildHelper$Bucket r5 = r4.mBucket
            boolean r5 = r5.get(r2)
            if (r5 == 0) goto L_0x0024
            int r2 = r2 + 1
            goto L_0x0019
        L_0x0024:
            return r2
        L_0x0025:
            int r2 = r2 + r3
            goto L_0x000b
        L_0x0027:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ChildHelper.getOffset(int):int");
    }

    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    public void addView(View view, boolean z) {
        addView(view, -1, z);
    }

    public void attachViewToParent(View view, int i2, ViewGroup.LayoutParams layoutParams, boolean z) {
        int i3;
        if (i2 < 0) {
            i3 = this.mCallback.getChildCount();
        } else {
            i3 = getOffset(i2);
        }
        this.mBucket.insert(i3, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, i3, layoutParams);
    }

    public void detachViewFromParent(int i2) {
        int offset = getOffset(i2);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    public View findHiddenNonRemovedView(int i2) {
        int size = this.mHiddenViews.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.mHiddenViews.get(i3);
            RecyclerView.ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (!(childViewHolder.getLayoutPosition() != i2 || childViewHolder.isInvalid() || childViewHolder.isRemoved())) {
                return view;
            }
        }
        return null;
    }

    public View getChildAt(int i2) {
        return this.mCallback.getChildAt(getOffset(i2));
    }

    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    public View getUnfilteredChildAt(int i2) {
        return this.mCallback.getChildAt(i2);
    }

    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    public void hide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            this.mBucket.set(indexOfChild);
            hideViewInternal(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    public int indexOfChild(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild != -1 && !this.mBucket.get(indexOfChild)) {
            return indexOfChild - this.mBucket.countOnesBefore(indexOfChild);
        }
        return -1;
    }

    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            this.mCallback.onLeftHiddenState(this.mHiddenViews.get(size));
            this.mHiddenViews.remove(size);
        }
        this.mCallback.removeAllViews();
    }

    public void removeView(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.mBucket.remove(indexOfChild)) {
                unhideViewInternal(view);
            }
            this.mCallback.removeViewAt(indexOfChild);
        }
    }

    public void removeViewAt(int i2) {
        int offset = getOffset(i2);
        View childAt = this.mCallback.getChildAt(offset);
        if (childAt != null) {
            if (this.mBucket.remove(offset)) {
                unhideViewInternal(childAt);
            }
            this.mCallback.removeViewAt(offset);
        }
    }

    public boolean removeViewIfHidden(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild == -1) {
            unhideViewInternal(view);
            return true;
        } else if (!this.mBucket.get(indexOfChild)) {
            return false;
        } else {
            this.mBucket.remove(indexOfChild);
            unhideViewInternal(view);
            this.mCallback.removeViewAt(indexOfChild);
            return true;
        }
    }

    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    public void unhide(View view) {
        int indexOfChild = this.mCallback.indexOfChild(view);
        if (indexOfChild < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.mBucket.get(indexOfChild)) {
            this.mBucket.clear(indexOfChild);
            unhideViewInternal(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public void addView(View view, int i2, boolean z) {
        int i3;
        if (i2 < 0) {
            i3 = this.mCallback.getChildCount();
        } else {
            i3 = getOffset(i2);
        }
        this.mBucket.insert(i3, z);
        if (z) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, i3);
    }
}
