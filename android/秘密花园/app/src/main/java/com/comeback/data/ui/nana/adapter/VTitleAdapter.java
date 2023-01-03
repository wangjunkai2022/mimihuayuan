package com.comeback.data.ui.nana.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.nana.SearchResultActivity;
import com.comeback.data.ui.nana.bean.MenuBean;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VTitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public MenuBean.ResponseEntity f1782c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            VTitleAdapter vTitleAdapter = VTitleAdapter.this;
            SearchResultActivity.n(vTitleAdapter.a, vTitleAdapter.f1782c.getSearch());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public b(VTitleAdapter vTitleAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
            this.b = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public VTitleAdapter(Context context, MenuBean.ResponseEntity responseEntity, f.a.a.a.a aVar) {
        this.a = context;
        this.f1782c = responseEntity;
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
        bVar.a.setText(this.f1782c.getTitle());
        bVar.b.setVisibility(TextUtils.isEmpty(this.f1782c.getSearch()) ? 8 : 0);
        bVar.b.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_nana_title, viewGroup, false));
    }
}
