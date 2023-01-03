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
import java.util.List;

/* loaded from: classes.dex */
public class Comic1Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<ViewModel.DataBean.MComicDataBean> f911c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ ViewModel.DataBean.MComicDataBean a;

        public a(ViewModel.DataBean.MComicDataBean mComicDataBean) {
            this.a = mComicDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = Comic1Adapter.this.a;
            ComicDetailActivity.n();
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f912c;

        public b(Comic1Adapter comic1Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f912c = (TextView) view.findViewById(R.id.tv_intro);
        }
    }

    public Comic1Adapter(Context context, List<ViewModel.DataBean.MComicDataBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f911c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f911c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        ViewModel.DataBean.MComicDataBean mComicDataBean = this.f911c.get(i2);
        h.D0(mComicDataBean.getCover_url(), bVar.a, 20);
        bVar.f912c.setText(mComicDataBean.getIntro());
        bVar.b.setText(mComicDataBean.getTitle());
        bVar.itemView.setOnClickListener(new a(mComicDataBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_comic1, viewGroup, false));
    }
}
