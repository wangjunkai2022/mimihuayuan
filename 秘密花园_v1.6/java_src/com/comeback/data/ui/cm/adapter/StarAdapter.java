package com.comeback.data.ui.cm.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cm.ActorDetailActivity;
import com.comeback.data.ui.cm.bean.ArtistList;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class StarAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<ArtistList.RescontEntity.AllArtistEntity.ListEntity> f373c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ ArtistList.RescontEntity.AllArtistEntity.ListEntity a;

        public a(ArtistList.RescontEntity.AllArtistEntity.ListEntity listEntity) {
            this.a = listEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActorDetailActivity.r(StarAdapter.this.a, this.a.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        public b(StarAdapter starAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public StarAdapter(Context context, List<ArtistList.RescontEntity.AllArtistEntity.ListEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f373c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f373c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        ArtistList.RescontEntity.AllArtistEntity.ListEntity listEntity = this.f373c.get(i2);
        bVar.b.setText(listEntity.getArtist());
        h.w0(listEntity.getCoverBase64(), bVar.a);
        bVar.itemView.setOnClickListener(new a(listEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_bale_h_star, viewGroup, false));
    }
}
