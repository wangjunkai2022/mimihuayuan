package com.comeback.data.ui.mimei.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.mimei.bean.MimeiAnimateItem;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;
/* loaded from: classes.dex */
public class AnimateItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public List<MimeiAnimateItem> b;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a(AnimateItemAdapter animateItemAdapter) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1762c;

        public b(AnimateItemAdapter animateItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.f1762c = (TextView) view.findViewById(R.id.tv_state);
        }
    }

    public AnimateItemAdapter(Context context, List<MimeiAnimateItem> list, f.a.a.a.a aVar) {
        this.b = list;
        this.a = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        MimeiAnimateItem mimeiAnimateItem = this.b.get(i2);
        TextView textView = bVar.b;
        if (mimeiAnimateItem != null) {
            textView.setText((CharSequence) null);
            h.L0(e.a("XxYXFBhJFhwaC1MUVg4ZA0YRDgdFEFc=") + ((String) null), bVar.a);
            bVar.f1762c.setText((CharSequence) null);
            bVar.itemView.setOnClickListener(new a(this));
            return;
        }
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mimei_animate, viewGroup, false));
    }
}
