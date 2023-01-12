package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.cucumber.ActorDetailActivity;
import com.comeback.data.ui.cucumber.bean.StarWork;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class StarCardVAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<StarWork.DataBean> f462c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ StarWork.DataBean.ActorDTOBean a;

        public a(StarWork.DataBean.ActorDTOBean actorDTOBean) {
            this.a = actorDTOBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActorDetailActivity.l(StarCardVAdapter.this.a, this.a.getId());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f463c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f464d;

        /* renamed from: e  reason: collision with root package name */
        public RecyclerView f465e;

        public b(StarCardVAdapter starCardVAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_star_head);
            this.b = (TextView) view.findViewById(R.id.tv_star_name);
            this.f463c = (TextView) view.findViewById(R.id.tv_star_intro);
            this.f464d = (TextView) view.findViewById(R.id.tv_star_work);
            this.f465e = (RecyclerView) view.findViewById(R.id.rv_star_work);
        }
    }

    public StarCardVAdapter(Context context, List<StarWork.DataBean> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f462c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f462c.size() > 8) {
            return 8;
        }
        return this.f462c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        StarWork.DataBean dataBean = this.f462c.get(i2);
        StarWork.DataBean.ActorDTOBean actorDTO = dataBean.getActorDTO();
        h.u0(actorDTO.getPhotoUrl(), bVar.a);
        bVar.b.setText(actorDTO.getNameCn());
        bVar.f463c.setText(actorDTO.getBriefIntroduction());
        TextView textView = bVar.f464d;
        textView.setText(actorDTO.getVideosCount() + e.a("F4vgzI7OiNT64Q=="));
        VideoList2Adapter videoList2Adapter = new VideoList2Adapter(this.a);
        bVar.f465e.setAdapter(videoList2Adapter);
        bVar.f465e.setLayoutManager(new LinearLayoutManager(this.a, 0, false));
        videoList2Adapter.a(dataBean.getMovieList());
        bVar.itemView.setOnClickListener(new a(actorDTO));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_cucumber_star_card, viewGroup, false));
    }
}
