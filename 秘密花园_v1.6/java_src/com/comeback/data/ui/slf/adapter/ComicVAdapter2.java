package com.comeback.data.ui.slf.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.slf.ComicDetailActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;
/* loaded from: classes.dex */
public class ComicVAdapter2 extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SLFItemBean> f2073c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2074d;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SLFItemBean a;

        public a(SLFItemBean sLFItemBean) {
            this.a = sLFItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicVAdapter2 comicVAdapter2 = ComicVAdapter2.this;
            if (comicVAdapter2.f2074d) {
                return;
            }
            ComicDetailActivity.n(comicVAdapter2.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2075c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2076d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2077e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f2078f;

        public b(ComicVAdapter2 comicVAdapter2, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f2075c = (TextView) view.findViewById(R.id.tv_intro);
            this.f2076d = (TextView) view.findViewById(R.id.tv_state);
            this.f2077e = (TextView) view.findViewById(R.id.tv_watch);
            this.f2078f = (TextView) view.findViewById(R.id.tv_collect);
        }
    }

    public ComicVAdapter2(Context context, List<SLFItemBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2073c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2073c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SLFItemBean sLFItemBean = this.f2073c.get(i2);
        h.P0(sLFItemBean.getImg(), bVar.a, 0);
        bVar.b.setText(sLFItemBean.getName());
        h.m1(bVar.f2075c, sLFItemBean.getSummary());
        TextView textView = bVar.f2076d;
        textView.setText(sLFItemBean.getTagStr() + e.a("F01D") + sLFItemBean.getDescription());
        bVar.f2077e.setText(sLFItemBean.getClick());
        bVar.f2078f.setText(sLFItemBean.getFavorite());
        bVar.itemView.setOnClickListener(new a(sLFItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_comic2_v, viewGroup, false));
    }
}
