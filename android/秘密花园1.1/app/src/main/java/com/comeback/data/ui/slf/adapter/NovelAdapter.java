package com.comeback.data.ui.slf.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.slf.NovelReadActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class NovelAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SLFItemBean> f2008c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SLFItemBean a;

        public a(SLFItemBean sLFItemBean) {
            this.a = sLFItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.a.getIsVideo()) {
                h.n1(e.a("0fjhgvzF3Yv+gLfUnv7MjbvjhfjilpqDlta7j9fejNap"));
            } else {
                NovelReadActivity.p(NovelAdapter.this.a, this.a.getId());
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2009c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2010d;

        public b(NovelAdapter novelAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_intro);
            this.f2009c = (TextView) view.findViewById(R.id.tv_view);
            this.f2010d = (TextView) view.findViewById(R.id.tv_collect);
        }
    }

    public NovelAdapter(Context context, List<SLFItemBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2008c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2008c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SLFItemBean sLFItemBean = this.f2008c.get(i2);
        bVar.a.setText(sLFItemBean.getName());
        h.k1(bVar.b, sLFItemBean.getDescription());
        bVar.f2009c.setText(sLFItemBean.getClick());
        bVar.f2010d.setText(sLFItemBean.getFavorite());
        bVar.itemView.setOnClickListener(new a(sLFItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_novel, viewGroup, false));
    }
}
