package com.comeback.data.ui.ds.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.ds.RankActivity;
import com.comeback.data.ui.ds.TagActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class HeadAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TagActivity.t(HeadAdapter.this.a, e.a("09npgvzW36jHgKLX"), e.a("WQcUARgH"));
        }
    }

    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RankActivity.o(HeadAdapter.this.a);
        }
    }

    /* loaded from: classes.dex */
    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.p1(e.a("YSszRI/Lqtb/3A=="));
            TagActivity.t(HeadAdapter.this.a, e.a("YSszRI/Lqtb/3A=="), e.a("QQsT"));
        }
    }

    /* loaded from: classes.dex */
    public class d extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f621c;

        public d(HeadAdapter headAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_update);
            this.b = (TextView) view.findViewById(R.id.tv_rank);
            this.f621c = (TextView) view.findViewById(R.id.tv_vip);
        }
    }

    public HeadAdapter(Context context, f.a.a.a.a aVar) {
        this.a = context;
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
        d dVar = (d) viewHolder;
        dVar.a.setOnClickListener(new a());
        dVar.b.setOnClickListener(new b());
        dVar.f621c.setOnClickListener(new c());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new d(this, f.b.a.a.a.b(viewGroup, R.layout.item_ds_head, viewGroup, false));
    }
}
