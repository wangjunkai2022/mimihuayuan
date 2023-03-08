package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.gkj.ComicDetailActivity;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
import com.youth.banner.Banner;
import com.youth.banner.Transformer;
import com.youth.banner.listener.OnBannerListener;
import f.e.a.e;
import f.e.a.k.d;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class PPTAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public ViewModel.DataBean f1025c;

    /* loaded from: classes.dex */
    public class a implements OnBannerListener {
        public a() {
        }

        @Override // com.youth.banner.listener.OnBannerListener
        public void OnBannerClick(int i2) {
            PPTAdapter pPTAdapter = PPTAdapter.this;
            Context context = pPTAdapter.a;
            pPTAdapter.f1025c.getM_banner_data().get(i2);
            ComicDetailActivity.p();
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public Banner a;

        public b(PPTAdapter pPTAdapter, View view) {
            super(view);
            Banner banner = (Banner) view.findViewById(R.id.banner);
            this.a = banner;
            banner.setBannerAnimation(Transformer.Accordion);
            this.a.setBannerStyle(1);
            this.a.setDelayTime(4000);
        }
    }

    public PPTAdapter(Context context, f.a.a.a.a aVar, ViewModel.DataBean dataBean) {
        this.a = context;
        this.b = aVar;
        this.f1025c = dataBean;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        Iterator<ViewModel.DataBean.MBannerDataBean> it = this.f1025c.getM_banner_data().iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            ViewModel.DataBean.MBannerDataBean next = it.next();
            if (next.getType().equals(e.a("dC0uLSg=")) && next.getComic_id() != 0) {
                arrayList.add(next.getTitle());
            } else {
                it.remove();
            }
        }
        b bVar = (b) viewHolder;
        bVar.a.setImageLoader(new d());
        bVar.a.setImages(this.f1025c.getM_banner_data());
        bVar.a.setBannerTitles(arrayList);
        bVar.a.start();
        bVar.a.setOnBannerListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_currenty_ppt2, viewGroup, false));
    }
}
