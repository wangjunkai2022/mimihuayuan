package com.comeback.data.base;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.widget.viewpager.AdPagerAdapter;
import com.comeback.data.widget.viewpager.PageView;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class Banner2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<f.e.a.g.a> b;

    /* renamed from: c  reason: collision with root package name */
    public AdPagerAdapter.a f105c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public PageView a;

        public a(Banner2Adapter banner2Adapter, View view) {
            super(view);
            this.a = (PageView) view.findViewById(R.id.spike_pager_view);
        }
    }

    public Banner2Adapter(Context context, f.a.a.a.a aVar, List<f.e.a.g.a> list, AdPagerAdapter.a aVar2) {
        this.a = aVar;
        this.f105c = aVar2;
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
        ((a) viewHolder).a.a(this.b, this.f105c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_banner2, viewGroup, false));
    }
}
