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
    public ViewModel.DataBean f994c;

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
        public TextView f995c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f996d;

        /* renamed from: e  reason: collision with root package name */
        public ImageView f997e;

        /* renamed from: f  reason: collision with root package name */
        public LinearLayout f998f;

        /* renamed from: g  reason: collision with root package name */
        public TextView f999g;

        /* renamed from: h  reason: collision with root package name */
        public TextView f1000h;

        /* renamed from: i  reason: collision with root package name */
        public ImageView f1001i;

        /* renamed from: j  reason: collision with root package name */
        public LinearLayout f1002j;

        /* renamed from: k  reason: collision with root package name */
        public TextView f1003k;

        /* renamed from: l  reason: collision with root package name */
        public TextView f1004l;

        /* renamed from: m  reason: collision with root package name */
        public ImageView f1005m;
        public LinearLayout n;
        public TextView o;
        public TextView p;

        public b(Comic3Adapter comic3Adapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover1);
            this.f997e = (ImageView) view.findViewById(R.id.iv_cover2);
            this.f1001i = (ImageView) view.findViewById(R.id.iv_cover3);
            this.f1005m = (ImageView) view.findViewById(R.id.iv_cover4);
            this.f995c = (TextView) view.findViewById(R.id.tv_title1);
            this.f999g = (TextView) view.findViewById(R.id.tv_title2);
            this.f1003k = (TextView) view.findViewById(R.id.tv_title3);
            this.o = (TextView) view.findViewById(R.id.tv_title4);
            this.f996d = (TextView) view.findViewById(R.id.tv_intro1);
            this.f1000h = (TextView) view.findViewById(R.id.tv_intro2);
            this.f1004l = (TextView) view.findViewById(R.id.tv_intro3);
            this.p = (TextView) view.findViewById(R.id.tv_intro4);
            this.b = (LinearLayout) view.findViewById(R.id.ll_root1);
            this.f998f = (LinearLayout) view.findViewById(R.id.ll_root2);
            this.f1002j = (LinearLayout) view.findViewById(R.id.ll_root3);
            this.n = (LinearLayout) view.findViewById(R.id.ll_root4);
        }
    }

    public Comic3Adapter(Context context, ViewModel.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f994c = dataBean;
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
        d(this.f994c.getM_comic_data().get(0), bVar.f995c, bVar.f996d, bVar.a, bVar.b, true);
        d(this.f994c.getM_comic_data().get(1), bVar.f999g, bVar.f1000h, bVar.f997e, bVar.f998f, false);
        d(this.f994c.getM_comic_data().get(2), bVar.f1003k, bVar.f1004l, bVar.f1001i, bVar.f1002j, false);
        d(this.f994c.getM_comic_data().get(3), bVar.o, bVar.p, bVar.f1005m, bVar.n, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_comic3, viewGroup, false));
    }
}
