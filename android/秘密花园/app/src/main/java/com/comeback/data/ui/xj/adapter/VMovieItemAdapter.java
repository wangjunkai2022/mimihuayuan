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
    public List<VideoBean> f2239c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public ImageView b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f2240c;

        /* renamed from: d  reason: collision with root package name */
        public ImageView f2241d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2242e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f2243f;

        public a(VMovieItemAdapter vMovieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.ivVideoCover);
            this.b = (ImageView) view.findViewById(R.id.ivVip);
            this.f2242e = (TextView) view.findViewById(R.id.tvVideoTitle);
            this.f2243f = (TextView) view.findViewById(R.id.tvVideoDurtion);
            this.f2240c = (ImageView) view.findViewById(R.id.ivExclusive);
            this.f2241d = (ImageView) view.findViewById(R.id.ivclear);
        }
    }

    public VMovieItemAdapter(Context context, List<VideoBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2239c = list;
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
        return this.f2239c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        VideoBean videoBean = this.f2239c.get(i2);
        aVar.f2242e.setText(videoBean.getTitle());
        h.B0(videoBean.getCoverpic(), aVar.a);
        int i3 = 8;
        aVar.b.setVisibility(videoBean.isVip() ? 0 : 8);
        aVar.f2243f.setText(videoBean.getDuration());
        boolean z = true;
        if (videoBean.getExclusive() != 1) {
            z = false;
        }
        ImageView imageView = aVar.f2240c;
        if (z) {
            i3 = 0;
        }
        imageView.setVisibility(i3);
        if (videoBean.getDefinition().equals(e.a("BA=="))) {
            aVar.f2241d.setImageResource(R.mipmap.icon_720);
        } else if (videoBean.getDefinition().equals(e.a("Aw=="))) {
            aVar.f2241d.setImageResource(R.mipmap.icon_1080p);
        } else {
            aVar.f2241d.setImageResource(0);
        }
        aVar.itemView.setOnClickListener(new View.OnClickListener(videoBean) { // from class: f.e.a.j.r0.d.l
            public final /* synthetic */ VideoBean b;

            {
                this.b = r2;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VMovieItemAdapter.this.d(this.b, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_video_channel, viewGroup, false));
    }
}
