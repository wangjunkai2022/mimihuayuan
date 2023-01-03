package com.comeback.data.ui.slf.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class Title2Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f2020c;

    /* loaded from: classes.dex */
    public class a extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public a(Title2Adapter title2Adapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_title);
            this.b = (TextView) view.findViewById(R.id.tv_subtitle);
        }
    }

    public Title2Adapter(Context context, String str, String str2, f.a.a.a.a aVar) {
        this.b = str;
        this.f2020c = str2;
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
        a aVar = (a) viewHolder;
        aVar.a.setText(this.b);
        aVar.b.setText(this.f2020c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new a(this, f.b.a.a.a.b(viewGroup, R.layout.item_slf_title2, viewGroup, false));
    }
}
