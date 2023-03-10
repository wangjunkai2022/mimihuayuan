package com.comeback.data.base;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.ButterKnife;
/* loaded from: classes.dex */
public abstract class BaseViewHolder<T> extends RecyclerView.ViewHolder {
    public BaseViewHolder(View view) {
        super(view);
        ButterKnife.b(this, view);
    }

    public abstract void a(T t);
}
