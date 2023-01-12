package com.comeback.data.ui.aimeiju.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.aimeiju.TopicActivity;
import com.comeback.data.ui.aimeiju.bean.ListBean;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class TitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public ListBean.DataBean f151c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TitleAdapter titleAdapter = TitleAdapter.this;
            TopicActivity.t(titleAdapter.a, titleAdapter.f151c.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public b(TitleAdapter titleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public TitleAdapter(Context context, ListBean.DataBean dataBean, f.a.a.a.a aVar) {
        this.a = context;
        this.f151c = dataBean;
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
        bVar.a.setText(this.f151c.getName());
        bVar.b.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_aimeiju_title, viewGroup, false));
    }
}
