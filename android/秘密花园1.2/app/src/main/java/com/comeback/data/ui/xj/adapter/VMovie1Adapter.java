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
    public List<VideoBean> f2310c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public ImageView b;

        /* renamed from: c  reason: collision with root package name */
        public ImageView f2311c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f2312d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f2313e;

        public a(VMovie1Adapter vMovie1Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.ivVideoCover);
            this.b = (ImageView) view.findViewById(R.id.ivVip);
            this.f2312d = (TextView) view.findViewById(R.id.tvVideoTitle);
            this.f2313e = (TextView) view.findViewById(R.id.tvVideoDurtion);
            this.f2311c = (ImageView) view.findViewById(R.id.ivExclusive);
        }
    }

    public VMovie1Adapter(Context context, List<VideoBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f2310c = list;
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
        return this.f2310c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        final VideoBean videoBean = this.f2310c.get(i2);
        aVar.f2312d.setText(videoBean.getTitle());
        h.M0(videoBean.getCoverpic(), aVar.a, 8);
        aVar.b.setVisibility(videoBean.isVip() ? 0 : 8);
        aVar.f2313e.setText(videoBean.getDuration());
        aVar.f2311c.setVisibility(videoBean.getExclusive() == 1 ? 0 : 8);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.s0.d.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VMovie1Adapter.this.d(videoBean, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_video_1, viewGroup, false));
    }
}
