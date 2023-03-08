package com.comeback.data.ui.avbobo.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class HMovieItemAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<MovieDetail> f174c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ MovieDetail a;

        public a(MovieDetail movieDetail) {
            this.a = movieDetail;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoviePlayActivity.q(HMovieItemAdapter.this.a, this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        /* renamed from: c  reason: collision with root package name */
        public TextView f175c;

        /* renamed from: d  reason: collision with root package name */
        public TextView f176d;

        /* renamed from: e  reason: collision with root package name */
        public TextView f177e;

        public b(HMovieItemAdapter hMovieItemAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_cover);
            this.b = (TextView) view.findViewById(R.id.tv_play_count);
            this.f176d = (TextView) view.findViewById(R.id.tv_praise);
            this.f177e = (TextView) view.findViewById(R.id.tv_duration);
            this.f175c = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public HMovieItemAdapter(Context context, List<MovieDetail> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f174c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f174c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        MovieDetail movieDetail = this.f174c.get(i2);
        bVar.f175c.setText(movieDetail.getTitle());
        bVar.b.setText(String.valueOf(movieDetail.getPlayCount()));
        bVar.f176d.setText(String.valueOf(movieDetail.getLikes()));
        bVar.f177e.setText(h.f1(movieDetail.getDuration()));
        h.v0(movieDetail.getCoverImage(), bVar.a);
        bVar.itemView.setOnClickListener(new a(movieDetail));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_avbobo_video_h, viewGroup, false));
    }
}
