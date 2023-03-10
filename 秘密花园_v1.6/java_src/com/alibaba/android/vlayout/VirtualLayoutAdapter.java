package com.alibaba.android.vlayout;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
/* loaded from: classes.dex */
public abstract class VirtualLayoutAdapter<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    @NonNull
    public VirtualLayoutManager a;

    public VirtualLayoutAdapter(@NonNull VirtualLayoutManager virtualLayoutManager) {
        this.a = virtualLayoutManager;
    }
}
