package com.comeback.data.ui.mimei.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.mimei.ComicTypeActivity;
import com.comeback.data.ui.mimei.SearchActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class HeadAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1772c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ b a;

        public a(b bVar) {
            this.a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            switch (view.getId()) {
                case R.id.tv_like /* 2131296983 */:
                    ComicTypeActivity.n(HeadAdapter.this.a, e.a("RQcACwYeXF0X"), this.a.f1773c.getText().toString(), HeadAdapter.this.f1772c);
                    return;
                case R.id.tv_new /* 2131297002 */:
                    ComicTypeActivity.n(HeadAdapter.this.a, e.a("WQcU"), this.a.a.getText().toString(), HeadAdapter.this.f1772c);
                    return;
                case R.id.tv_rank /* 2131297026 */:
                    ComicTypeActivity.n(HeadAdapter.this.a, e.a("RQMNDwIdXg=="), this.a.b.getText().toString(), HeadAdapter.this.f1772c);
                    return;
                case R.id.tv_search /* 2131297035 */:
                    SearchActivity.m(HeadAdapter.this.a);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1773c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1774d;

        public b(HeadAdapter headAdapter, View view) {
            super(view);
            this.f1774d = (TextView) view.findViewById(R.id.tv_search);
            this.a = (TextView) view.findViewById(R.id.tv_new);
            this.b = (TextView) view.findViewById(R.id.tv_rank);
            this.f1773c = (TextView) view.findViewById(R.id.tv_like);
        }
    }

    public HeadAdapter(Context context, boolean z, f.a.a.a.a aVar) {
        this.a = context;
        this.f1772c = z;
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
        b bVar = (b) viewHolder;
        a aVar = new a(bVar);
        bVar.a.setText(e.a("0f7jgv3D3Yv5gKrR"));
        bVar.b.setText(e.a(this.f1772c ? "0d7Ig//I373hjpXr" : "0tLsjMTH373hjpXr"));
        bVar.f1773c.setText(e.a(this.f1772c ? "0ezLjObj34/YgaDc" : "0ezLjObj3IP8jpvT"));
        bVar.f1774d.setOnClickListener(aVar);
        bVar.a.setOnClickListener(aVar);
        bVar.b.setOnClickListener(aVar);
        bVar.f1773c.setOnClickListener(aVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mimei_home_head, viewGroup, false));
    }
}
