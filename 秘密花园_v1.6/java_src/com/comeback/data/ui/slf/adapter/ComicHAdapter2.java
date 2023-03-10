package com.comeback.data.ui.slf.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.slf.VideoDetailActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class ComicHAdapter2 extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SLFItemBean> f2065c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ SLFItemBean a;

        public a(SLFItemBean sLFItemBean) {
            this.a = sLFItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoDetailActivity.o(ComicHAdapter2.this.a, this.a.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2066c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2067d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2068e;

        public b(ComicHAdapter2 comicHAdapter2, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f2066c = (TextView) view.findViewById(R.id.tv_state);
            this.f2067d = (TextView) view.findViewById(R.id.tv_watch);
            this.f2068e = (TextView) view.findViewById(R.id.tv_collect);
        }
    }

    public ComicHAdapter2(Context context, List<SLFItemBean> list, f.a.a.a.a aVar, boolean z) {
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
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        SLFItemBean sLFItemBean = this.f2065c.get(i2);
        h.P0(sLFItemBean.getImg(), bVar.a, 0);
        bVar.b.setText(sLFItemBean.getName());
        bVar.f2066c.setText(sLFItemBean.getTagStr());
        bVar.f2067d.setText(sLFItemBean.getClick());
        bVar.f2068e.setText(sLFItemBean.getFavorite());
        bVar.itemView.setOnClickListener(new a(sLFItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_comic2_h, viewGroup, false));
    }
}
