package com.comeback.data.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public class RecycleGridDivider extends RecyclerView.ItemDecoration {
    public int a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public Paint f2344c;

    public RecycleGridDivider() {
        this(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int spanCount;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            spanCount = ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        } else if (!(layoutManager instanceof GridLayoutManager)) {
            return;
        } else {
            spanCount = ((GridLayoutManager) layoutManager).getSpanCount();
        }
        recyclerView.getChildCount();
        int i2 = this.a / 2;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition < spanCount) {
            int i3 = childAdapterPosition % spanCount;
            if (i3 == 0) {
                rect.set(0, 0, i2, 0);
                return;
            } else if (i3 == spanCount - 1) {
                rect.set(i2, 0, 0, 0);
                return;
            } else {
                rect.set(i2, 0, i2, 0);
                return;
            }
        }
        int i4 = childAdapterPosition % spanCount;
        if (i4 == 0) {
            rect.set(0, this.a, i2, 0);
        } else if (i4 == spanCount - 1) {
            rect.set(i2, this.a, 0, 0);
        } else {
            rect.set(i2, this.a, i2, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        super.onDraw(canvas, recyclerView, state);
    }

    public RecycleGridDivider(int i2) {
        this.a = i2;
        this.b = 0;
        Paint paint = new Paint(1);
        this.f2344c = paint;
        paint.setColor(this.b);
        this.f2344c.setStyle(Paint.Style.FILL);
        this.f2344c.setStrokeWidth(this.a);
    }
}
