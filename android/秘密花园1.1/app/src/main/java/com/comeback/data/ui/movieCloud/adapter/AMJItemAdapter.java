package com.comeback.data.ui.movieCloud.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.movieCloud.PlayActivity;
import com.comeback.data.ui.movieCloud.adapter.AMJItemAdapter;
import com.comeback.data.ui.movieCloud.bean.AMJList;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class AMJItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<AMJList.DataBean> f1742c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1743c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1744d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f1745e;

        public a(AMJItemAdapter aMJItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_state);
            this.f1744d = (TextView) view.findViewById(R.id.tv_title);
            this.f1743c = (TextView) view.findViewById(R.id.tv_area);
            this.f1745e = (TextView) view.findViewById(R.id.tv_detail);
        }
    }

    public AMJItemAdapter(Context context, List<AMJList.DataBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1742c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public /* synthetic */ void d(AMJList.DataBean dataBean, View view) {
        PlayActivity.o(this.a, dataBean.getId());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1742c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        final AMJList.DataBean dataBean = this.f1742c.get(i2);
        aVar.f1744d.setText(dataBean.getName());
        h.u0(dataBean.getPic(), aVar.a);
        aVar.b.setText(dataBean.getState());
        aVar.f1743c.setText(dataBean.getType());
        aVar.f1745e.setVisibility(8);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.f0.g.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AMJItemAdapter.this.d(dataBean, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_movie_cloud, viewGroup, false));
    }
}
