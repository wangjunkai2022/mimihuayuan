package com.comeback.data.ui.gkj.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.gkj.SpecialActivity;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class Title2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public NavBean.DataEntity f1045c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Title2Adapter title2Adapter = Title2Adapter.this;
            SpecialActivity.v(title2Adapter.a, title2Adapter.f1045c.getId(), Title2Adapter.this.f1045c.getSpecialName(), Title2Adapter.this.f1045c.getType(), Title2Adapter.this.f1045c.getStyle());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public b(Title2Adapter title2Adapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public Title2Adapter(Context context, NavBean.DataEntity dataEntity, f.a.a.a.a aVar) {
        this.a = context;
        this.f1045c = dataEntity;
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
        bVar.a.setText(this.f1045c.getSpecialName());
        bVar.b.setText(this.f1045c.getTotalText());
        bVar.b.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_gkj_title2, viewGroup, false));
    }
}
