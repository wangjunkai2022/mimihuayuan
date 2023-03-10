package com.comeback.data.ui.bale.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class StarTitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public String b;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public TextView a;

        public a(StarTitleAdapter starTitleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
        }
    }

    public StarTitleAdapter(Context context, String str, f.a.a.a.a aVar) {
        this.b = str;
        this.a = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ((a) viewHolder).a.setText(this.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_bale_title2, viewGroup, false));
    }
}
