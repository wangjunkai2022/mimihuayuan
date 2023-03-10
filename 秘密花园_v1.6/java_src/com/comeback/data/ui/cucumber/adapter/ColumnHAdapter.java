package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class ColumnHAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<Column.DataBean.SubclassBean> f443c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public RecyclerView a;

        public a(ColumnHAdapter columnHAdapter, View view) {
            super(view);
            this.a = (RecyclerView) view.findViewById(R.id.rv_list);
        }
    }

    public ColumnHAdapter(Context context, List<Column.DataBean.SubclassBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f443c = list;
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
        aVar.a.setLayoutManager(new LinearLayoutManager(this.a, 0, false));
        ColumnListAdapter columnListAdapter = new ColumnListAdapter(this.a);
        aVar.a.setAdapter(columnListAdapter);
        columnListAdapter.a(this.f443c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.include_horizontal_recycleview, viewGroup, false));
    }
}
