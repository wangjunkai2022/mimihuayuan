package com.comeback.data.ui.movieCloud.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.movieCloud.PlayActivity;
import com.comeback.data.ui.movieCloud.bean.XXList;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class XXItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<XXList.DataBean.VodrowsBean> f1832c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ XXList.DataBean.VodrowsBean a;

        public a(XXList.DataBean.VodrowsBean vodrowsBean) {
            this.a = vodrowsBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayActivity.p(XXItemAdapter.this.a, this.a.getVodid());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1833c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1834d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f1835e;

        public b(XXItemAdapter xXItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_state);
            this.f1834d = (TextView) view.findViewById(R.id.tv_title);
            this.f1833c = (TextView) view.findViewById(R.id.tv_area);
            this.f1835e = (TextView) view.findViewById(R.id.tv_detail);
        }
    }

    public XXItemAdapter(Context context, List<XXList.DataBean.VodrowsBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1832c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1832c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        XXList.DataBean.VodrowsBean vodrowsBean = this.f1832c.get(i2);
        bVar.f1834d.setText(vodrowsBean.getTitle());
        h.u0(vodrowsBean.getCoverpic(), bVar.a);
        bVar.b.setText(vodrowsBean.getScorenum());
        bVar.f1833c.setText(vodrowsBean.getAreaname());
        bVar.f1835e.setText(vodrowsBean.getIntro());
        bVar.itemView.setOnClickListener(new a(vodrowsBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_movie_cloud, viewGroup, false));
    }
}
