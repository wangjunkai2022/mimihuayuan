package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class Comic3Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public ViewModel.DataBean f998c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ ViewModel.DataBean.MComicDataBean a;

        public a(ViewModel.DataBean.MComicDataBean mComicDataBean) {
            this.a = mComicDataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = Comic3Adapter.this.a;
            ComicDetailActivity.n();
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public LinearLayout b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f999c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1000d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f1001e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f1002f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f1003g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f1004h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f1005i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f1006j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f1007k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f1008l;

        /* renamed from: m  reason: collision with root package name */
        public ImageView f1009m;
        public LinearLayout n;
        public TextView o;
        public TextView p;

        public b(Comic3Adapter comic3Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover1);
            this.f1001e = (ImageView) view.findViewById(R.id.iv_cover2);
            this.f1005i = (ImageView) view.findViewById(R.id.iv_cover3);
            this.f1009m = (ImageView) view.findViewById(R.id.iv_cover4);
            this.f999c = (TextView) view.findViewById(R.id.tv_title1);
            this.f1003g = (TextView) view.findViewById(R.id.tv_title2);
            this.f1007k = (TextView) view.findViewById(R.id.tv_title3);
            this.o = (TextView) view.findViewById(R.id.tv_title4);
            this.f1000d = (TextView) view.findViewById(R.id.tv_intro1);
            this.f1004h = (TextView) view.findViewById(R.id.tv_intro2);
            this.f1008l = (TextView) view.findViewById(R.id.tv_intro3);
            this.p = (TextView) view.findViewById(R.id.tv_intro4);
            this.b = (LinearLayout) view.findViewById(R.id.ll_root1);
            this.f1002f = (LinearLayout) view.findViewById(R.id.ll_root2);
            this.f1006j = (LinearLayout) view.findViewById(R.id.ll_root3);
            this.n = (LinearLayout) view.findViewById(R.id.ll_root4);
        }
    }

    public Comic3Adapter(Context context, ViewModel.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f998c = dataBean;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public final void d(ViewModel.DataBean.MComicDataBean mComicDataBean, TextView textView, TextView textView2, ImageView imageView, LinearLayout linearLayout, boolean z) {
        textView2.setText(mComicDataBean.getIntro());
        textView.setText(mComicDataBean.getTitle());
        h.D0(z ? mComicDataBean.getBanner_url() : mComicDataBean.getCover_url(), imageView, 20);
        linearLayout.setOnClickListener(new a(mComicDataBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        d(this.f998c.getM_comic_data().get(0), bVar.f999c, bVar.f1000d, bVar.a, bVar.b, true);
        d(this.f998c.getM_comic_data().get(1), bVar.f1003g, bVar.f1004h, bVar.f1001e, bVar.f1002f, false);
        d(this.f998c.getM_comic_data().get(2), bVar.f1007k, bVar.f1008l, bVar.f1005i, bVar.f1006j, false);
        d(this.f998c.getM_comic_data().get(3), bVar.o, bVar.p, bVar.f1009m, bVar.n, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_comic3, viewGroup, false));
    }
}
