package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.adapter.VTitle2Adapter;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VTitle2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public String b;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public a(VTitle2Adapter vTitle2Adapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public VTitle2Adapter(Context context, String str, f.a.a.a.a aVar) {
        this.a = aVar;
        this.b = str;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    public /* synthetic */ void d(View view) {
        h.n1(this.b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        aVar.a.setText(this.b);
        aVar.b.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VTitle2Adapter.this.d(view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_title2, viewGroup, false));
    }
}
