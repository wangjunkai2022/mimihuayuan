package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class NComic3Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<NavBean.DataEntity.ArticleVOSEntity> f1021c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ NavBean.DataEntity.ArticleVOSEntity a;

        public a(NavBean.DataEntity.ArticleVOSEntity articleVOSEntity) {
            this.a = articleVOSEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicDetailActivity.o(NComic3Adapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1022c;

        public b(NComic3Adapter nComic3Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f1022c = (TextView) view.findViewById(R.id.tv_intro);
        }
    }

    public NComic3Adapter(Context context, List<NavBean.DataEntity.ArticleVOSEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1021c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1021c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        NavBean.DataEntity.ArticleVOSEntity articleVOSEntity = this.f1021c.get(i2);
        h.u0(articleVOSEntity.getCoverH(), bVar.a);
        bVar.f1022c.setText(articleVOSEntity.getInfo());
        bVar.b.setText(articleVOSEntity.getNameCn());
        bVar.itemView.setOnClickListener(new a(articleVOSEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_comic2, viewGroup, false));
    }
}
