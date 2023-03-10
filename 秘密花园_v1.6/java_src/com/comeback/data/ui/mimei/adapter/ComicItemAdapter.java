package com.comeback.data.ui.mimei.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.mimei.ComicReadActivity;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class ComicItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<MimeiComicItem> f1769c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ MimeiComicItem a;

        public a(MimeiComicItem mimeiComicItem) {
            this.a = mimeiComicItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicReadActivity.q(ComicItemAdapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f1770c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f1771d;

        public b(ComicItemAdapter comicItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_name);
            this.f1770c = (TextView) view.findViewById(R.id.tv_state);
            this.f1771d = (TextView) view.findViewById(R.id.tv_state2);
        }
    }

    public ComicItemAdapter(Context context, List<MimeiComicItem> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1769c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1769c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        MimeiComicItem mimeiComicItem = this.f1769c.get(i2);
        bVar.b.setText(mimeiComicItem.getName());
        h.L0(mimeiComicItem.getFull_cover_path(), bVar.a);
        bVar.f1771d.setVisibility(mimeiComicItem.isEnd() ? 8 : 0);
        bVar.f1770c.setText(mimeiComicItem.getChapterState());
        bVar.itemView.setOnClickListener(new a(mimeiComicItem));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_mimei_comic, viewGroup, false));
    }
}
