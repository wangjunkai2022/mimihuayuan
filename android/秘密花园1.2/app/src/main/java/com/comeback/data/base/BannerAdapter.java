package com.comeback.data.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BannerAdapter;
import com.comeback.secret.garden.R;
import com.youth.banner.Banner;
import com.youth.banner.Transformer;
import com.youth.banner.listener.OnBannerListener;
import f.e.a.j.a.e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BannerAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<f.e.a.g.a> b;

    /* renamed from: c  reason: collision with root package name */
    public a f106c;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public Banner a;

        public b(BannerAdapter bannerAdapter, View view) {
            super(view);
            Banner banner = (Banner) view.findViewById(R.id.banner);
            this.a = banner;
            banner.setBannerAnimation(Transformer.Accordion);
            this.a.setBannerStyle(5);
            this.a.setDelayTime(4000);
        }
    }

    public BannerAdapter(Context context, f.a.a.a.a aVar, List<f.e.a.g.a> list, a aVar2) {
        this.a = aVar;
        this.f106c = aVar2;
        this.b = list;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    public /* synthetic */ void d(int i2, int i3) {
        f.e.a.g.a aVar = this.b.get(i3);
        a aVar2 = this.f106c;
        if (aVar2 != null) {
            ((e) aVar2).a(aVar.getId(), i2);
            return;
        }
        h.n1(aVar.getId());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, final int i2) {
        b bVar = (b) viewHolder;
        bVar.a.setImageLoader(new f.e.a.k.e());
        ArrayList arrayList = new ArrayList();
        for (f.e.a.g.a aVar : this.b) {
            arrayList.add(aVar.getCover());
        }
        bVar.a.setImages(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (f.e.a.g.a aVar2 : this.b) {
            arrayList2.add(aVar2.getTitle());
        }
        bVar.a.setBannerTitles(arrayList2);
        bVar.a.start();
        bVar.a.setOnBannerListener(new OnBannerListener() { // from class: f.e.a.f.a
            @Override // com.youth.banner.listener.OnBannerListener
            public final void OnBannerClick(int i3) {
                BannerAdapter.this.d(i2, i3);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_banner, viewGroup, false));
    }
}
