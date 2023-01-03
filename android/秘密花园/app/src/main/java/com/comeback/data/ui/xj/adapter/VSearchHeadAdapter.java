package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.bean.SearchResult;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class VSearchHeadAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<SearchResult.DataBean.HotwordsBean> f2244c;

    /* renamed from: d  reason: collision with root package name */
    public a f2245d;

    /* loaded from: classes.dex */
    public interface a {
        void a(String str);
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public RecyclerView a;

        public b(VSearchHeadAdapter vSearchHeadAdapter, View view) {
            super(view);
            this.a = (RecyclerView) view.findViewById(R.id.rv_hot);
        }
    }

    public VSearchHeadAdapter(Context context, List<SearchResult.DataBean.HotwordsBean> list, f.a.a.a.a aVar, a aVar2) {
        this.a = context;
        if (list.size() > 15) {
            this.f2244c = list.subList(0, 15);
        } else {
            this.f2244c = list;
        }
        this.b = aVar;
        this.f2245d = aVar2;
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
        b bVar = (b) viewHolder;
        bVar.a.setLayoutManager(new GridLayoutManager(this.a, 5));
        HotWordsAdapter hotWordsAdapter = new HotWordsAdapter(this.a, this.f2245d);
        bVar.a.setAdapter(hotWordsAdapter);
        hotWordsAdapter.a(this.f2244c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_search_head, viewGroup, false));
    }
}
