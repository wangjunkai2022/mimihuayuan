package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cucumber.ColumnDetailActivity;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class ColumnGAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<Column.DataBean.SubclassBean> f442c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ Column.DataBean.SubclassBean a;

        public a(Column.DataBean.SubclassBean subclassBean) {
            this.a = subclassBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ColumnDetailActivity.v(ColumnGAdapter.this.a, this.a.getNavId(), this.a.getNavCls());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        public b(ColumnGAdapter columnGAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
        }
    }

    public ColumnGAdapter(Context context, List<Column.DataBean.SubclassBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f442c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f442c.size() > 8) {
            return 8;
        }
        return this.f442c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        Column.DataBean.SubclassBean subclassBean = this.f442c.get(i2);
        bVar.b.setText(subclassBean.getNavName());
        h.u0(subclassBean.getNavImage(), bVar.a);
        bVar.itemView.setOnClickListener(new a(subclassBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_cucumber_column2, viewGroup, false));
    }
}
