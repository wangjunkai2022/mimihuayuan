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
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class Comic2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<ViewModel.DataBean.MComicDataBean> f913c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ ViewModel.DataBean.MComicDataBean a;

        public a(ViewModel.DataBean.MComicDataBean mComicDataBean) {
            this.a = mComicDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = Comic2Adapter.this.a;
            ComicDetailActivity.n();
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f914c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f915d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f916e;

        /* renamed from: f  reason: collision with root package name */
        public TextView f917f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f918g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f919h;

        /* renamed from: i  reason: collision with root package name */
        public TextView f920i;

        public b(Comic2Adapter comic2Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.f914c = (TextView) view.findViewById(R.id.tv_tag1);
            this.f915d = (TextView) view.findViewById(R.id.tv_tag2);
            this.f916e = (TextView) view.findViewById(R.id.tv_tag3);
            this.f917f = (TextView) view.findViewById(R.id.tv_tag4);
            this.f918g = (TextView) view.findViewById(R.id.tv_hot);
            this.f919h = (TextView) view.findViewById(R.id.tv_update);
            this.f920i = (TextView) view.findViewById(R.id.tv_star);
        }
    }

    public Comic2Adapter(Context context, List<ViewModel.DataBean.MComicDataBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f913c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f913c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        ViewModel.DataBean.MComicDataBean mComicDataBean = this.f913c.get(i2);
        bVar.b.setText(mComicDataBean.getTitle());
        int i3 = 0;
        bVar.f914c.setVisibility(mComicDataBean.isNew() ? 0 : 8);
        bVar.f915d.setVisibility(mComicDataBean.getIs_recommend());
        TextView textView = bVar.f916e;
        if (mComicDataBean.getStatus() != 1) {
            i3 = 8;
        }
        textView.setVisibility(i3);
        bVar.f917f.setText(e.a(mComicDataBean.getDump_status() == 1 ? "0szvg9Dg" : "3939jNbO"));
        bVar.f920i.setText(mComicDataBean.getScore());
        bVar.f919h.setText(mComicDataBean.getUpdate());
        bVar.f918g.setText(String.valueOf(mComicDataBean.getHot()));
        h.D0(mComicDataBean.getCover_url(), bVar.a, 20);
        bVar.itemView.setOnClickListener(new a(mComicDataBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_week, viewGroup, false));
    }
}
