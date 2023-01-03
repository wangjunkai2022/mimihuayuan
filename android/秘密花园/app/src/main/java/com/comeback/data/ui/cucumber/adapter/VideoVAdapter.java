package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.bean.SelectionQuery;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import java.util.List;

/* loaded from: classes.dex */
public class VideoVAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<Video> f482c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ Video a;

        public a(Video video) {
            this.a = video;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MovieDetailActivity.p(VideoVAdapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f483c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f484d;

        public b(VideoVAdapter videoVAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.f483c = (TextView) view.findViewById(R.id.tv_duration);
            this.f484d = (TextView) view.findViewById(R.id.tv_pay);
        }
    }

    public VideoVAdapter(Context context, List<Video> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f482c = list;
        this.b = aVar;
    }

    public static DelegateAdapter.Adapter d(Context context, SelectionQuery.DataBean dataBean) {
        if (dataBean.getSelectionType() == 2) {
            g m2 = f.b.a.a.a.m(2, 15, 16);
            m2.s = false;
            return new VideoHAdapter(context, dataBean.getMovList(), m2);
        }
        g m3 = f.b.a.a.a.m(3, 15, 16);
        m3.s = false;
        return new VideoVAdapter(context, dataBean.getMovList(), m3);
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f482c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        Video video = this.f482c.get(i2);
        h.u0(video.getAllCovers().getVertical_small(), bVar.a);
        bVar.b.setText(video.getMovName());
        bVar.f483c.setText(video.getMins());
        bVar.itemView.setOnClickListener(new a(video));
        bVar.f484d.setVisibility(video.getMovPackageId() == 1 ? 0 : 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_cucumber_video_v, viewGroup, false));
    }
}
