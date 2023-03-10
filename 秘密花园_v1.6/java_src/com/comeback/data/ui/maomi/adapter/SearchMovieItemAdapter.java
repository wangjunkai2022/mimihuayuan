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
import java.util.List;
/* loaded from: classes.dex */
public class SearchMovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<HomeData.DataBean.VideosBean> f1678c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ HomeData.DataBean.VideosBean a;

        public a(HomeData.DataBean.VideosBean videosBean) {
            this.a = videosBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MovieDetailActivity.l(SearchMovieItemAdapter.this.a, this.a.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1679c;

        public b(SearchMovieItemAdapter searchMovieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_tag);
            this.f1679c = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public SearchMovieItemAdapter(Context context, List<HomeData.DataBean.VideosBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1678c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1678c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        HomeData.DataBean.VideosBean videosBean = this.f1678c.get(i2);
        bVar.f1679c.setText(videosBean.getName());
        h.N0(videosBean.getImage(), bVar.a, 8);
        bVar.b.setText(videosBean.getRate());
        bVar.itemView.setOnClickListener(new a(videosBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mm_home, viewGroup, false));
    }
}
