package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.adapter.VSpecialHeadAdapter;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VSpecialHeadAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public Channel.DataBean.RowsBean b;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public ImageView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2246c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2247d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2248e;

        public a(VSpecialHeadAdapter vSpecialHeadAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.f2246c = (TextView) view.findViewById(R.id.tv_name);
            this.f2247d = (TextView) view.findViewById(R.id.tv_intro);
            this.b = (ImageView) view.findViewById(R.id.iv_like);
            this.f2248e = (TextView) view.findViewById(R.id.tv_like_num);
        }
    }

    public VSpecialHeadAdapter(Context context, f.a.a.a.a aVar, Channel.DataBean.RowsBean rowsBean) {
        this.a = aVar;
        this.b = rowsBean;
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
        a aVar = (a) viewHolder;
        h.B0(this.b.getCoverpic(), aVar.a);
        aVar.f2246c.setText(this.b.getSpname());
        aVar.f2247d.setText(this.b.getIntro());
        aVar.f2248e.setText(this.b.getUpnum());
        aVar.b.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VSpecialHeadAdapter.a.this.b.setImageResource(R.mipmap.icon_sc_1);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_special_head, viewGroup, false));
    }
}
