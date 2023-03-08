package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.PlayActivity;
import com.comeback.data.ui.xj.adapter.VMovieItemAdapter;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class VMovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<VideoBean> f2314c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public ImageView b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f2315c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f2316d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2317e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f2318f;

        public a(VMovieItemAdapter vMovieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.ivVideoCover);
            this.b = (ImageView) view.findViewById(R.id.ivVip);
            this.f2317e = (TextView) view.findViewById(R.id.tvVideoTitle);
            this.f2318f = (TextView) view.findViewById(R.id.tvVideoDurtion);
            this.f2315c = (ImageView) view.findViewById(R.id.ivExclusive);
            this.f2316d = (ImageView) view.findViewById(R.id.ivclear);
        }
    }

    public VMovieItemAdapter(Context context, List<VideoBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2314c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public /* synthetic */ void d(VideoBean videoBean, View view) {
        PlayActivity.l(this.a, videoBean.getVodid(), videoBean.getDefinition());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2314c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        final VideoBean videoBean = this.f2314c.get(i2);
        aVar.f2317e.setText(videoBean.getTitle());
        h.B0(videoBean.getCoverpic(), aVar.a);
        aVar.b.setVisibility(videoBean.isVip() ? 0 : 8);
        aVar.f2318f.setText(videoBean.getDuration());
        aVar.f2315c.setVisibility(videoBean.getExclusive() == 1 ? 0 : 8);
        if (videoBean.getDefinition().equals(e.a("BA=="))) {
            aVar.f2316d.setImageResource(R.mipmap.icon_720);
        } else if (videoBean.getDefinition().equals(e.a("Aw=="))) {
            aVar.f2316d.setImageResource(R.mipmap.icon_1080p);
        } else {
            aVar.f2316d.setImageResource(0);
        }
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.s0.e.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VMovieItemAdapter.this.d(videoBean, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_video_channel, viewGroup, false));
    }
}
