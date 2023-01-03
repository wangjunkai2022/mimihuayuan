package com.comeback.data.ui.nana.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.nana.MovieDetailActivity;
import com.comeback.data.ui.nana.adapter.VVideoAdapter;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VVideoAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<VideoListBean.ResponseEntity.VideosEntity> f1783c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1784c;

        public a(VVideoAdapter vVideoAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_time);
            this.f1784c = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public VVideoAdapter(Context context, List<VideoListBean.ResponseEntity.VideosEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1783c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public /* synthetic */ void d(VideoListBean.ResponseEntity.VideosEntity videosEntity, View view) {
        MovieDetailActivity.o(this.a, videosEntity.getVideo_id());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1783c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        VideoListBean.ResponseEntity.VideosEntity videosEntity = this.f1783c.get(i2);
        aVar.f1784c.setText(videosEntity.getTitle());
        h.K0(videosEntity.getCover(), aVar.a);
        aVar.b.setText(h.f1(videosEntity.getVideo_duration()));
        aVar.itemView.setOnClickListener(new View.OnClickListener(videosEntity) { // from class: f.e.a.j.g0.k.a
            public final /* synthetic */ VideoListBean.ResponseEntity.VideosEntity b;

            {
                this.b = r2;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VVideoAdapter.this.d(this.b, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_nana_video, viewGroup, false));
    }
}
