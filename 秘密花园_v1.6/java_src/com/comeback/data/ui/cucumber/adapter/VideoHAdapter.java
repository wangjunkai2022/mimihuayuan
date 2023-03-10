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
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class VideoHAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<Video> f469c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ Video a;

        public a(Video video) {
            this.a = video;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MovieDetailActivity.p(VideoHAdapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f470c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f471d;

        public b(VideoHAdapter videoHAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.f470c = (TextView) view.findViewById(R.id.tv_duration);
            this.f471d = (TextView) view.findViewById(R.id.tv_pay);
        }
    }

    public VideoHAdapter(Context context, List<Video> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f469c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f469c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        Video video = this.f469c.get(i2);
        h.u0(video.getAllCovers().getHorizontal_small(), bVar.a);
        bVar.b.setText(video.getMovName());
        bVar.f470c.setText(video.getMins());
        bVar.itemView.setOnClickListener(new a(video));
        bVar.f471d.setVisibility(video.getMovPackageId() == 1 ? 0 : 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_cucumber_video_h, viewGroup, false));
    }
}
