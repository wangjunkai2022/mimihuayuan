package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class Comic4Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public ViewModel.DataBean f933c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public RecyclerView f934c;

        public a(Comic4Adapter comic4Adapter, View view) {
            super(view);
            this.f934c = (RecyclerView) view.findViewById(R.id.rv_list);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
        }
    }

    public Comic4Adapter(Context context, ViewModel.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f933c = dataBean;
        this.b = aVar;
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
        a aVar = (a) viewHolder;
        if (this.f933c.getM_comic_data() == null || this.f933c.getM_comic_data().size() == 0) {
            return;
        }
        h.D0(this.f933c.getM_comic_data().get(0).getBanner_url(), aVar.a, 0);
        TextView textView = aVar.b;
        textView.setText(this.f933c.getTitle() + e.a("Gg==") + this.f933c.getSubtitle());
        aVar.f934c.setLayoutManager(new LinearLayoutManager(this.a, 0, false));
        ItemAdapter itemAdapter = new ItemAdapter(this.a);
        aVar.f934c.setAdapter(itemAdapter);
        itemAdapter.a(this.f933c.getM_comic_data());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_comic4, viewGroup, false));
    }
}
