package com.comeback.data.ui.mimei.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.mimei.NovelReadActivity;
import com.comeback.data.ui.mimei.bean.MimeiNovelItem;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class NovelItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<MimeiNovelItem> f1773c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ MimeiNovelItem a;

        public a(MimeiNovelItem mimeiNovelItem) {
            this.a = mimeiNovelItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            NovelReadActivity.l(NovelItemAdapter.this.a, this.a.getTitle(), this.a.getFilepath());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public TextView a;
        public TextView b;

        public b(NovelItemAdapter novelItemAdapter, View view) {
            super(view);
            this.a = (TextView) view.findViewById(R.id.tv_name);
            this.b = (TextView) view.findViewById(R.id.tv_intro);
        }
    }

    public NovelItemAdapter(Context context, List<MimeiNovelItem> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1773c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1773c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        MimeiNovelItem mimeiNovelItem = this.f1773c.get(i2);
        bVar.a.setText(mimeiNovelItem.getTitle());
        bVar.b.setText(mimeiNovelItem.getDesc());
        bVar.itemView.setOnClickListener(new a(mimeiNovelItem));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mimei_novel, viewGroup, false));
    }
}
