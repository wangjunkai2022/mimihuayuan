package com.comeback.data.ui.gdian.adapter;

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
import com.comeback.data.ui.gdian.PlayActivity;
import com.comeback.data.ui.gdian.bean.VideoList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<VideoList.DataEntity.VideoEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoList.DataEntity.VideoEntity> {
        public VideoAdapter a;
        public VideoList.DataEntity.VideoEntity b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvDuration;
        @BindView
        public TextView tvTitle;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoList.DataEntity.VideoEntity videoEntity) {
            VideoList.DataEntity.VideoEntity videoEntity2 = videoEntity;
            this.b = videoEntity2;
            this.tvTitle.setText(videoEntity2.getMovie_name());
            h.u0(this.b.getMovie_cover(), this.ivImg);
            TextView textView = this.tvDesc;
            textView.setText(this.b.getWatch_countText() + e.a("2N//") + h.g0(this.b.getPush_time()));
            this.tvDuration.setText(this.b.getMovie_long());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f893c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f894c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f894c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f894c;
                PlayActivity.o(holder.a.a, String.valueOf(holder.b.getMovie_id()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            holder.tvDuration = (TextView) c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f893c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvTitle = null;
                holder.tvDesc = null;
                holder.tvDuration = null;
                this.f893c.setOnClickListener(null);
                this.f893c = null;
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
        return new Holder(this.f107c.inflate(R.layout.item_gdian_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
