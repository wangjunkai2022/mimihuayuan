package com.comeback.data.ui.xiami.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.xiami.bean.HomeBean;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class TitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public HomeBean.DataBean.VideoBean b;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            h.p1(TitleAdapter.this.b.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;

        public b(TitleAdapter titleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            TextView textView = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public TitleAdapter(Context context, HomeBean.DataBean.VideoBean videoBean, f.a.a.a.a aVar) {
        this.b = videoBean;
        this.a = aVar;
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
        b bVar = (b) viewHolder;
        bVar.a.setText(this.b.getTitle());
        bVar.itemView.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_xm_title, viewGroup, false));
    }
}
