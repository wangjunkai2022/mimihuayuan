package com.alibaba.android.vlayout.extend;

import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
/* loaded from: classes.dex */
public final class InnerRecycledViewPool extends RecyclerView.RecycledViewPool {
    public RecyclerView.RecycledViewPool a;
    public SparseIntArray b;

    /* renamed from: c  reason: collision with root package name */
    public SparseIntArray f88c;

    public InnerRecycledViewPool() {
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.b = new SparseIntArray();
        this.f88c = new SparseIntArray();
        this.a = recycledViewPool;
    }

    public final void a(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        if (view instanceof Closeable) {
            try {
                ((Closeable) view).close();
            } catch (Exception e2) {
                Log.getStackTraceString(e2);
            }
        }
        if (viewHolder instanceof Closeable) {
            try {
                ((Closeable) viewHolder).close();
            } catch (Exception e3) {
                Log.getStackTraceString(e3);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void clear() {
        int size = this.b.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = this.b.keyAt(i2);
            RecyclerView.ViewHolder recycledView = this.a.getRecycledView(keyAt);
            while (recycledView != null) {
                a(recycledView);
                recycledView = this.a.getRecycledView(keyAt);
            }
        }
        this.b.clear();
        super.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public RecyclerView.ViewHolder getRecycledView(int i2) {
        RecyclerView.ViewHolder recycledView = this.a.getRecycledView(i2);
        if (recycledView != null) {
            int i3 = this.b.indexOfKey(i2) >= 0 ? this.b.get(i2) : 0;
            if (i3 > 0) {
                this.b.put(i2, i3 - 1);
            }
        }
        return recycledView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void putRecycledView(RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        if (this.f88c.indexOfKey(itemViewType) < 0) {
            this.f88c.put(itemViewType, 5);
            setMaxRecycledViews(itemViewType, 5);
        }
        int i2 = this.b.indexOfKey(itemViewType) >= 0 ? this.b.get(itemViewType) : 0;
        if (this.f88c.get(itemViewType) > i2) {
            this.a.putRecycledView(viewHolder);
            this.b.put(itemViewType, i2 + 1);
            return;
        }
        a(viewHolder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public void setMaxRecycledViews(int i2, int i3) {
        RecyclerView.ViewHolder recycledView = this.a.getRecycledView(i2);
        while (recycledView != null) {
            a(recycledView);
            recycledView = this.a.getRecycledView(i2);
        }
        this.f88c.put(i2, i3);
        this.b.put(i2, 0);
        this.a.setMaxRecycledViews(i2, i3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.RecycledViewPool
    public int size() {
        int size = this.b.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += this.b.valueAt(i3);
        }
        return i2;
    }
}
