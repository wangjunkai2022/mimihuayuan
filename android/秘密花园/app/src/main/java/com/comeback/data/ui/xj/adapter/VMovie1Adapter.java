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
import com.comeback.data.ui.xj.adapter.VMovie1Adapter;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VMovie1Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<VideoBean> f2235c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public ImageView b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f2236c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2237d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2238e;

        public a(VMovie1Adapter vMovie1Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.ivVideoCover);
            this.b = (ImageView) view.findViewById(R.id.ivVip);
            this.f2237d = (TextView) view.findViewById(R.id.tvVideoTitle);
            this.f2238e = (TextView) view.findViewById(R.id.tvVideoDurtion);
            this.f2236c = (ImageView) view.findViewById(R.id.ivExclusive);
        }
    }

    public VMovie1Adapter(Context context, List<VideoBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2235c = list;
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
        return this.f2235c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        VideoBean videoBean = this.f2235c.get(i2);
        aVar.f2237d.setText(videoBean.getTitle());
        int i3 = 8;
        h.M0(videoBean.getCoverpic(), aVar.a, 8);
        aVar.b.setVisibility(videoBean.isVip() ? 0 : 8);
        aVar.f2238e.setText(videoBean.getDuration());
        boolean z = true;
        if (videoBean.getExclusive() != 1) {
            z = false;
        }
        ImageView imageView = aVar.f2236c;
        if (z) {
            i3 = 0;
        }
        imageView.setVisibility(i3);
        aVar.itemView.setOnClickListener(new View.OnClickListener(videoBean) { // from class: f.e.a.j.r0.d.k
            public final /* synthetic */ VideoBean b;

            {
                this.b = r2;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VMovie1Adapter.this.d(this.b, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_video_1, viewGroup, false));
    }
}
