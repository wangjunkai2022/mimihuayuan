package com.comeback.data.base;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseHeaderAdapter<T> extends BaseAbstractAdapter<T> {

    /* renamed from: d  reason: collision with root package name */
    public int f112d = 0;

    public BaseHeaderAdapter(Context context) {
        super(context);
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public void a(List<T> list) {
        b(list, this.b.size());
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public void b(List<T> list, int i2) {
        if (i2 >= 0 && i2 <= this.b.size() && list != null && list.size() > 0) {
            this.b.addAll(i2, list);
            notifyItemRangeChanged(i2 + this.f112d, list.size());
        }
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public void c() {
        int size = this.b.size();
        if (size > 0) {
            this.b.clear();
            notifyItemRangeRemoved(this.f112d, size);
        }
    }

    @Override // com.comeback.data.base.BaseAbstractAdapter
    public T d(int i2) {
        if (i2 < 0 || i2 >= this.b.size()) {
            return null;
        }
        return this.b.get(i2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: com.comeback.data.base.BaseViewHolder */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.comeback.data.base.BaseAbstractAdapter
    /* renamed from: e */
    public void onBindViewHolder(@NonNull BaseViewHolder baseViewHolder, int i2) {
        int i3 = this.f112d;
        if (i2 < i3) {
            baseViewHolder.a(f(i2));
        } else {
            baseViewHolder.a(d(i2 - i3));
        }
    }

    public Object f(int i2) {
        return null;
    }

    public abstract BaseViewHolder g(ViewGroup viewGroup, int i2);

    @Override // com.comeback.data.base.BaseAbstractAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> list = this.b;
        if (list == null) {
            return this.f112d;
        }
        return list.size() + this.f112d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return i2 < this.f112d ? 0 : 1;
    }

    public BaseViewHolder h(ViewGroup viewGroup, int i2) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            return h(viewGroup, i2);
        }
        return g(viewGroup, i2);
    }
}
