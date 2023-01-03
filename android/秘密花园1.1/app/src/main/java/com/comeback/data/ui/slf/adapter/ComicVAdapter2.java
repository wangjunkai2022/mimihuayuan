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
    public List<SLFItemBean> f1994c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1995d;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SLFItemBean a;

        public a(SLFItemBean sLFItemBean) {
            this.a = sLFItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicVAdapter2 comicVAdapter2 = ComicVAdapter2.this;
            if (comicVAdapter2.f1995d) {
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
        public TextView f1996c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1997d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f1998e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f1999f;

        public b(ComicVAdapter2 comicVAdapter2, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f1996c = (TextView) view.findViewById(R.id.tv_intro);
            this.f1997d = (TextView) view.findViewById(R.id.tv_state);
            this.f1998e = (TextView) view.findViewById(R.id.tv_watch);
            this.f1999f = (TextView) view.findViewById(R.id.tv_collect);
        }
    }

    public ComicVAdapter2(Context context, List<SLFItemBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1994c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1994c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SLFItemBean sLFItemBean = this.f1994c.get(i2);
        h.N0(sLFItemBean.getImg(), bVar.a, 0);
        bVar.b.setText(sLFItemBean.getName());
        h.k1(bVar.f1996c, sLFItemBean.getSummary());
        TextView textView = bVar.f1997d;
        textView.setText(sLFItemBean.getTagStr() + e.a("F01D") + sLFItemBean.getDescription());
        bVar.f1998e.setText(sLFItemBean.getClick());
        bVar.f1999f.setText(sLFItemBean.getFavorite());
        bVar.itemView.setOnClickListener(new a(sLFItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_comic2_v, viewGroup, false));
    }
}
