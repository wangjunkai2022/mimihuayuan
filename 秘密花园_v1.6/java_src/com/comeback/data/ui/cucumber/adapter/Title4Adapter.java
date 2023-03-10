package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cucumber.ActorActivity;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class Title4Adapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public String f467c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActorActivity.v(Title4Adapter.this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;

        public b(Title4Adapter title4Adapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            TextView textView = (TextView) view.findViewById(R.id.tv_more);
        }
    }

    public Title4Adapter(Context context, String str, f.a.a.a.a aVar) {
        this.a = context;
        this.f467c = str;
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
        bVar.a.setText(this.f467c);
        bVar.itemView.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_cucumber_title3, viewGroup, false));
    }
}
