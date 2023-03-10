package com.comeback.data.base;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class BaseAbstractAdapter<T> extends RecyclerView.Adapter<BaseViewHolder<T>> {
    public final Context a;
    public List<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final LayoutInflater f107c;

    public BaseAbstractAdapter(Context context) {
        getClass().getSimpleName();
        this.b = new ArrayList();
        this.a = context;
        this.f107c = LayoutInflater.from(context);
    }

    public void a(List<T> list) {
        b(list, this.b.size());
    }

    public void b(List<T> list, int i2) {
        if (i2 < 0 || i2 > this.b.size() || list == null || list.size() <= 0) {
            return;
        }
        this.b.addAll(i2, list);
        notifyItemRangeChanged(i2, list.size());
    }

    public void c() {
        int size = this.b.size();
        if (size > 0) {
            this.b.clear();
            notifyItemRangeRemoved(0, size);
        }
    }

    public T d(int i2) {
        if (i2 < 0 || i2 >= this.b.size()) {
            return null;
        }
        return this.b.get(i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@NonNull BaseViewHolder<T> baseViewHolder, int i2) {
        baseViewHolder.a(d(i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
