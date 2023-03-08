package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.SpecialDetailActivity;
import com.comeback.data.ui.xj.adapter.VTitle1Adapter;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VTitle1Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public Channel.DataBean.RowsBean f2325c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public a(VTitle1Adapter vTitle1Adapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public VTitle1Adapter(Context context, Channel.DataBean.RowsBean rowsBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f2325c = rowsBean;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public /* synthetic */ void d(View view) {
        SpecialDetailActivity.w(this.a, this.f2325c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        aVar.a.setText(this.f2325c.getSpname());
        aVar.b.setText(this.f2325c.getItemcount());
        aVar.b.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.s0.e.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VTitle1Adapter.this.d(view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_title, viewGroup, false));
    }
}
