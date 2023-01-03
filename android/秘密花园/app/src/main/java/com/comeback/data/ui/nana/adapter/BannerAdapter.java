package com.comeback.data.ui.nana.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.nana.viewpager.AdPagerAdapter;
import com.comeback.data.ui.nana.viewpager.PageView;
import com.comeback.secret.garden.R;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class BannerAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<f.e.a.g.a> b;

    /* renamed from: c  reason: collision with root package name */
    public AdPagerAdapter.a f1773c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public PageView a;

        public a(BannerAdapter bannerAdapter, View view) {
            super(view);
            this.a = (PageView) view.findViewById(R.id.spike_pager_view);
        }
    }

    public BannerAdapter(Context context, f.a.a.a.a aVar, List<f.e.a.g.a> list, AdPagerAdapter.a aVar2) {
        this.a = aVar;
        this.f1773c = aVar2;
        this.b = list;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        PageView pageView = ((a) viewHolder).a;
        List<f.e.a.g.a> list = this.b;
        AdPagerAdapter.a aVar = this.f1773c;
        if (pageView != null) {
            if (!(list == null || list.size() == 0)) {
                AdPagerAdapter adPagerAdapter = pageView.a;
                adPagerAdapter.f1809e = aVar;
                adPagerAdapter.f1812c.clear();
                if (list.size() > 0) {
                    adPagerAdapter.f1812c.addAll(list);
                }
                adPagerAdapter.notifyDataSetChanged();
                pageView.mViewPager.setCurrentItem((pageView.a.getCount() / 2) + new Random().nextInt(list.size()));
            }
            pageView.f1815d = true;
            pageView.b.postDelayed(pageView.f1814c, 6000);
            return;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_nana_banner2, viewGroup, false));
    }
}
