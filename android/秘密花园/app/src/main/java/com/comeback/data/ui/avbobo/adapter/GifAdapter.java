package com.comeback.data.ui.avbobo.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class GifAdapter extends BaseAbstractAdapter<MovieDetail> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<MovieDetail> {
        public GifAdapter a;
        public MovieDetail b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvDuration;
        @BindView
        public TextView tvPlayCount;
        @BindView
        public TextView tvPraise;
        @BindView
        public TextView tvTitle;

        public Holder(View view, GifAdapter gifAdapter) {
            super(view);
            this.a = gifAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(MovieDetail movieDetail) {
            MovieDetail movieDetail2 = movieDetail;
            this.b = movieDetail2;
            this.tvTitle.setText(movieDetail2.getTitle());
            this.tvPlayCount.setText(String.valueOf(movieDetail2.getPlayCount()));
            this.tvPraise.setText(String.valueOf(movieDetail2.getLikes()));
            this.tvDuration.setText(h.f1(movieDetail2.getDuration()));
            h.v0(movieDetail2.getCoverImage(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f170c;

        /* compiled from: GifAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f171c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f171c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f171c;
                MoviePlayActivity.q(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            holder.tvPraise = (TextView) c.c(view, R.id.tv_praise, e.a("UQsGCA9THkcFNkYGERkGTA=="), TextView.class);
            holder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f170c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvPlayCount = null;
                holder.tvPraise = null;
                holder.tvDuration = null;
                holder.ivCover = null;
                this.f170c.setOnClickListener(null);
                this.f170c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public GifAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_avbobo_gif, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
