package com.comeback.data.ui.ds.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.ds.RankActivity;
import com.comeback.data.ui.ds.TagActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class TitleAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public int f627c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TitleAdapter titleAdapter = TitleAdapter.this;
            int i2 = titleAdapter.f627c;
            if (i2 == 1) {
                TagActivity.t(titleAdapter.a, e.a("0sbEgcXF0LDOg6jPn/bo"), e.a("VA0OFA4HUEcaEFE="));
            } else if (i2 == 2) {
                RankActivity.o(titleAdapter.a);
            } else if (i2 == 3) {
                TagActivity.t(titleAdapter.a, e.a("0c/JgsbZ0LT+gZfineD4g7ry"), e.a("RQcACwYeXF0X"));
            }
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

    public TitleAdapter(Context context, int i2, f.a.a.a.a aVar) {
        this.a = context;
        this.f627c = i2;
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
        int i3 = this.f627c;
        if (i3 == 1) {
            bVar.a.setText(e.a("0sbEgcXF0LDOg6jPn/bo"));
        } else if (i3 == 2) {
            bVar.a.setText(e.a("0ezxjMr/35Xv"));
        } else if (i3 == 3) {
            bVar.a.setText(e.a("0c/JgsbZ0LT+gZfineD4g7ry"));
        } else if (i3 == 4) {
            bVar.a.setText(e.a("0O7/gNbT3KXvgJjF"));
            bVar.b.setVisibility(8);
        }
        if (this.f627c != 4) {
            bVar.itemView.setOnClickListener(new a());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_ds_title, viewGroup, false));
    }
}
