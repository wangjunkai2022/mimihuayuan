package com.comeback.data.ui.xj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xj.ScreenActivity;
import com.comeback.data.ui.xj.adapter.VHomeTypeAdapter;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class VHomeTypeAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public final TextView a;
        public final TextView b;

        /* renamed from: c  reason: collision with root package name */
        public final TextView f2229c;

        /* renamed from: d  reason: collision with root package name */
        public final TextView f2230d;

        /* renamed from: e  reason: collision with root package name */
        public final TextView f2231e;

        /* renamed from: f  reason: collision with root package name */
        public final TextView f2232f;

        /* renamed from: g  reason: collision with root package name */
        public final TextView f2233g;

        /* renamed from: h  reason: collision with root package name */
        public final TextView f2234h;

        public a(VHomeTypeAdapter vHomeTypeAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_wm);
            this.b = (TextView) view.findViewById(R.id.tv_zf);
            this.f2229c = (TextView) view.findViewById(R.id.tv_rq);
            this.f2230d = (TextView) view.findViewById(R.id.tv_cr);
            this.f2231e = (TextView) view.findViewById(R.id.tv_js);
            this.f2232f = (TextView) view.findViewById(R.id.tv_lm);
            this.f2233g = (TextView) view.findViewById(R.id.tv_tp);
            this.f2234h = (TextView) view.findViewById(R.id.tv_qb);
        }
    }

    public VHomeTypeAdapter(Context context, f.a.a.a.a aVar) {
        this.a = context;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    public /* synthetic */ void d(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void e(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("Ag=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void f(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("BlA="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void g(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("BlM="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    public /* synthetic */ void h(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("BlI="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void i(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("AA=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void j(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("Aw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    public /* synthetic */ void k(View view) {
        ScreenActivity.t(this.a, new String[]{e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("Bw=="), e.a("BQ=="), e.a("Bw=="), e.a("Bw==")});
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        a aVar = (a) viewHolder;
        aVar.a.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.d(view);
            }
        });
        aVar.b.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.e(view);
            }
        });
        aVar.f2229c.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.f(view);
            }
        });
        aVar.f2230d.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.g(view);
            }
        });
        aVar.f2231e.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.h(view);
            }
        });
        aVar.f2232f.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.i(view);
            }
        });
        aVar.f2233g.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.j(view);
            }
        });
        aVar.f2234h.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VHomeTypeAdapter.this.k(view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_xj_home_head, viewGroup, false));
    }
}
