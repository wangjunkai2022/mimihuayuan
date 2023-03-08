package com.comeback.data.ui.maomi.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.maomi.MovieDetailActivity;
import com.comeback.data.ui.maomi.bean.HomeData;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class MovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public HomeData.DataBean f1670c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ HomeData.DataBean.VideosBean a;

        public a(HomeData.DataBean.VideosBean videosBean) {
            this.a = videosBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MovieItemAdapter.this.f1670c.isComic()) {
                h.n1(e.a("0d7Ig//I"));
            } else {
                MovieDetailActivity.l(MovieItemAdapter.this.a, this.a.getId());
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1671c;

        public b(MovieItemAdapter movieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_tag);
            this.f1671c = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public MovieItemAdapter(Context context, HomeData.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f1670c = dataBean;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1670c.getVideos().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        HomeData.DataBean.VideosBean videosBean = this.f1670c.getVideos().get(i2);
        bVar.f1671c.setText(videosBean.getName());
        h.L0(videosBean.getImage(), bVar.a, 8);
        bVar.b.setText(videosBean.getRate());
        bVar.itemView.setOnClickListener(new a(videosBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mm_home, viewGroup, false));
    }
}
