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
    public Paint f2269c;

    public RecycleGridDivider() {
        this(1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int i2;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            i2 = ((StaggeredGridLayoutManager) layoutManager).getSpanCount();
        } else if (layoutManager instanceof GridLayoutManager) {
            i2 = ((GridLayoutManager) layoutManager).getSpanCount();
        } else {
            return;
        }
        recyclerView.getChildCount();
        int i3 = this.a / 2;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        if (childAdapterPosition < i2) {
            int i4 = childAdapterPosition % i2;
            if (i4 == 0) {
                rect.set(0, 0, i3, 0);
            } else if (i4 == i2 - 1) {
                rect.set(i3, 0, 0, 0);
            } else {
                rect.set(i3, 0, i3, 0);
            }
        } else {
            int i5 = childAdapterPosition % i2;
            if (i5 == 0) {
                rect.set(0, this.a, i3, 0);
            } else if (i5 == i2 - 1) {
                rect.set(i3, this.a, 0, 0);
            } else {
                rect.set(i3, this.a, i3, 0);
            }
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
        this.f2269c = paint;
        paint.setColor(this.b);
        this.f2269c.setStyle(Paint.Style.FILL);
        this.f2269c.setStrokeWidth((float) this.a);
    }
}
