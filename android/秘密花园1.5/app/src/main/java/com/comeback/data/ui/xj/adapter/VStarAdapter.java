package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VStarAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<Channel.DataBean.RowsBean> f2324c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public RecyclerView a;

        public a(VStarAdapter vStarAdapter, View view) {
            super(view);
            this.a = (RecyclerView) view.findViewById(R.id.rv_list);
        }
    }

    public VStarAdapter(Context context, f.a.a.a.a aVar, List<Channel.DataBean.RowsBean> list) {
        this.a = context;
        this.b = aVar;
        this.f2324c = list;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        aVar.a.setLayoutManager(new LinearLayoutManager(this.a, 0, false));
        StarAdapter starAdapter = new StarAdapter(this.a);
        aVar.a.setAdapter(starAdapter);
        starAdapter.a(this.f2324c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_star_rv, viewGroup, false));
    }
}
