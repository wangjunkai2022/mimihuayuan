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
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class ComicVAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SLFItemBean> f2065c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2066d;

    /* renamed from: e  reason: collision with root package name */
    public int f2067e = new Random().nextInt(1000);

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SLFItemBean a;

        public a(SLFItemBean sLFItemBean) {
            this.a = sLFItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicVAdapter comicVAdapter = ComicVAdapter.this;
            if (comicVAdapter.f2066d) {
                return;
            }
            ComicDetailActivity.n(comicVAdapter.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2068c;

        public b(ComicVAdapter comicVAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f2068c = (TextView) view.findViewById(R.id.tv_intro);
        }
    }

    public ComicVAdapter(Context context, List<SLFItemBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2065c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2065c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.f2067e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SLFItemBean sLFItemBean = this.f2065c.get(i2);
        h.N0(sLFItemBean.getImg(), bVar.a, 0);
        bVar.b.setText(sLFItemBean.getName());
        h.k1(bVar.f2068c, sLFItemBean.getDescription());
        bVar.itemView.setOnClickListener(new a(sLFItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_comic_v, viewGroup, false));
    }
}
