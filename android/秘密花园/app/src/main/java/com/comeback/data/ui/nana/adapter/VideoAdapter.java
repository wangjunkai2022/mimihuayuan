package com.comeback.data.ui.nana.adapter;

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
import com.comeback.data.ui.nana.MovieDetailActivity;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<VideoListBean.ResponseEntity.VideosEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoListBean.ResponseEntity.VideosEntity> {
        public VideoAdapter a;
        public VideoListBean.ResponseEntity.VideosEntity b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvPlayCount;
        @BindView
        public TextView tvTitle;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoListBean.ResponseEntity.VideosEntity videosEntity) {
            VideoListBean.ResponseEntity.VideosEntity videosEntity2 = videosEntity;
            this.b = videosEntity2;
            this.tvTitle.setText(videosEntity2.getVideo_title());
            this.tvPlayCount.setText(h.f1(videosEntity2.getVideo_duration()));
            h.K0(videosEntity2.getCover(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1785c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1786c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1786c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1786c;
                MovieDetailActivity.o(holder.a.a, holder.b.getVideo_id());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1785c = b;
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
                holder.ivCover = null;
                this.f1785c.setOnClickListener(null);
                this.f1785c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_nana_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
