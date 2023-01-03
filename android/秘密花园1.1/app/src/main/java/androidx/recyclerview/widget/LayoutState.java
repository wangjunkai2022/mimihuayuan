package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import f.b.a.a.a;

/* loaded from: classes.dex */
public class LayoutState {
    public static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    public static final int ITEM_DIRECTION_HEAD = -1;
    public static final int ITEM_DIRECTION_TAIL = 1;
    public static final int LAYOUT_END = 1;
    public static final int LAYOUT_START = -1;
    public int mAvailable;
    public int mCurrentPosition;
    public boolean mInfinite;
    public int mItemDirection;
    public int mLayoutDirection;
    public boolean mStopInFocusable;
    public boolean mRecycle = true;
    public int mStartLine = 0;
    public int mEndLine = 0;

    public boolean hasMore(RecyclerView.State state) {
        int i2 = this.mCurrentPosition;
        return i2 >= 0 && i2 < state.getItemCount();
    }

    public View next(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    public String toString() {
        StringBuilder o = a.o("LayoutState{mAvailable=");
        o.append(this.mAvailable);
        o.append(", mCurrentPosition=");
        o.append(this.mCurrentPosition);
        o.append(", mItemDirection=");
        o.append(this.mItemDirection);
        o.append(", mLayoutDirection=");
        o.append(this.mLayoutDirection);
        o.append(", mStartLine=");
        o.append(this.mStartLine);
        o.append(", mEndLine=");
        o.append(this.mEndLine);
        o.append('}');
        return o.toString();
    }
}
