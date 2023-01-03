package com.comeback.data.ui.jav.adapter;

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
import com.comeback.data.ui.jav.VideoDetailActivity;
import com.comeback.data.ui.jav.bean.Video;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HVideoAdapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public HVideoAdapter a;
        public Video b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tv_uid;

        public Holder(View view, HVideoAdapter hVideoAdapter) {
            super(view);
            this.a = hVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            this.tv_uid.setText(video2.getUid());
            h.u0(video2.getImg(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1218c;

        /* compiled from: HVideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1219c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1219c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1219c;
                VideoDetailActivity.m(holder.a.a, holder.b.getUrl());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tv_uid = (TextView) c.c(view, R.id.tv_uid, e.a("UQsGCA9THkcFOUEOHE0="), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1218c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tv_uid = null;
                holder.ivCover = null;
                this.f1218c.setOnClickListener(null);
                this.f1218c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HVideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_jav_video_h2, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
