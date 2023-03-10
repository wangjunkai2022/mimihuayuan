package com.comeback.data.ui.bale.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.bale.ActorDetailActivity;
import com.comeback.data.ui.bale.bean.StarList;
import com.comeback.secret.garden.R;
import java.util.List;
/* loaded from: classes.dex */
public class StarAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<StarList.ResultBean.ArtistBean> f278c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ StarList.ResultBean.ArtistBean a;

        public a(StarList.ResultBean.ArtistBean artistBean) {
            this.a = artistBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActorDetailActivity.l(StarAdapter.this.a, this.a.getId());
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

    public StarAdapter(Context context, List<StarList.ResultBean.ArtistBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f278c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f278c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        StarList.ResultBean.ArtistBean artistBean = this.f278c.get(i2);
        bVar.b.setText(artistBean.getArtist());
        h.w0(artistBean.getCoverBase64(), bVar.a);
        bVar.itemView.setOnClickListener(new a(artistBean));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_bale_h_star, viewGroup, false));
    }
}
