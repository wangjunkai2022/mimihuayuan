package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class NVideo2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<NavBean.DataEntity.ArticleVOSEntity> f946c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ NavBean.DataEntity.ArticleVOSEntity a;

        public a(NavBean.DataEntity.ArticleVOSEntity articleVOSEntity) {
            this.a = articleVOSEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PlayActivity.m(NVideo2Adapter.this.a, this.a.getResources(), this.a.getNameCn());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f947c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f948d;

        public b(NVideo2Adapter nVideo2Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f947c = (TextView) view.findViewById(R.id.tv_intro);
            this.f948d = (TextView) view.findViewById(R.id.tv_duration);
        }
    }

    public NVideo2Adapter(Context context, List<NavBean.DataEntity.ArticleVOSEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f946c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f946c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        NavBean.DataEntity.ArticleVOSEntity articleVOSEntity = this.f946c.get(i2);
        h.u0(articleVOSEntity.getCover(), bVar.a);
        bVar.f947c.setText(articleVOSEntity.getInfo());
        bVar.f947c.setVisibility(8);
        try {
            bVar.f948d.setText(h.f1(Integer.valueOf(articleVOSEntity.getVideoTime()).intValue()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        bVar.b.setText(articleVOSEntity.getContent());
        bVar.itemView.setOnClickListener(new a(articleVOSEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_video1, viewGroup, false));
    }
}
