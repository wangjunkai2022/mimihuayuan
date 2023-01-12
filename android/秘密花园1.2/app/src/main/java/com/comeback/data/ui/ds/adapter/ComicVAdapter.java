package com.comeback.data.ui.ds.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.ds.ComicReadActivity;
import com.comeback.data.ui.ds.DsActivity;
import com.comeback.data.ui.ds.bean.DsItemBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public class ComicVAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<DsItemBean> f617c;

    /* renamed from: d  reason: collision with root package name */
    public int f618d = new Random().nextInt(1000);

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ DsItemBean a;

        public a(DsItemBean dsItemBean) {
            this.a = dsItemBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComicReadActivity.q(ComicVAdapter.this.a, this.a, DsActivity.f593d.equals(e.a("BQ==")));
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f619c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f620d;

        public b(ComicVAdapter comicVAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_title);
            this.f619c = (TextView) view.findViewById(R.id.tv_intro);
            this.f620d = (TextView) view.findViewById(R.id.tv_state);
        }
    }

    public ComicVAdapter(Context context, List<DsItemBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f617c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f617c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return this.f618d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        DsItemBean dsItemBean = this.f617c.get(i2);
        h.N0(dsItemBean.getFullImage(), bVar.a, 0);
        bVar.b.setText(dsItemBean.getTitle());
        bVar.f620d.setText(dsItemBean.getMhstatusString());
        h.k1(bVar.f619c, dsItemBean.getPingfen());
        bVar.itemView.setOnClickListener(new a(dsItemBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_ds_comic_v, viewGroup, false));
    }
}
