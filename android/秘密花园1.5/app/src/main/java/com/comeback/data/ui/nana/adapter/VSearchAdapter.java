package com.comeback.data.ui.nana.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.nana.SearchActivity;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VSearchAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() != R.id.tv_search) {
                return;
            }
            SearchActivity.n(VSearchAdapter.this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;

        public b(VSearchAdapter vSearchAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_search);
        }
    }

    public VSearchAdapter(Context context, boolean z, f.a.a.a.a aVar) {
        this.a = context;
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
        ((b) viewHolder).a.setOnClickListener(new a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_nana_home_head, viewGroup, false));
    }
}
