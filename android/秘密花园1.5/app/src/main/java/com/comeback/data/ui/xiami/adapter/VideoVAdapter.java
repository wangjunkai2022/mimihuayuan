package com.comeback.data.ui.xiami.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xiami.VideoPlayActivity;
import com.comeback.data.ui.xiami.bean.VideoInfo;
import com.comeback.secret.garden.R;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class VideoVAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<VideoInfo> f2239c;

    /* renamed from: d  reason: collision with root package name */
    public int f2240d = new Random().nextInt(1000);

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ VideoInfo a;

        public a(VideoInfo videoInfo) {
            this.a = videoInfo;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VideoPlayActivity.o(VideoVAdapter.this.a, this.a.getVideoId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f2241c;

        public b(VideoVAdapter videoVAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f2241c = (TextView) view.findViewById(R.id.tv_intro);
        }
    }

    public VideoVAdapter(Context context, List<VideoInfo> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2239c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2239c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.f2240d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            VideoInfo videoInfo = this.f2239c.get(i2);
            h.u0(videoInfo.getVideoImage(), bVar.a);
            bVar.b.setText(videoInfo.getVideoTitle());
            h.k1(bVar.f2241c, videoInfo.getVideoTime());
            bVar.itemView.setOnClickListener(new a(videoInfo));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_xm_video_h, viewGroup, false));
    }
}
