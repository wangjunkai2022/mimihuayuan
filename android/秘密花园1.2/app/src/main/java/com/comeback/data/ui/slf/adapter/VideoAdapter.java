package com.comeback.data.ui.slf.adapter;

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
import com.comeback.data.ui.slf.VideoDetailActivity;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<SLFItemBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<SLFItemBean> {
        public VideoAdapter a;
        public SLFItemBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvIntro;
        @BindView
        public TextView tvTitle;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SLFItemBean sLFItemBean) {
            SLFItemBean sLFItemBean2 = sLFItemBean;
            this.b = sLFItemBean2;
            this.tvTitle.setText(sLFItemBean2.getName());
            this.tvIntro.setVisibility(8);
            h.N0(sLFItemBean2.getImg(), this.ivCover, 0);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2096c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2097c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2097c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2097c;
                VideoDetailActivity.o(holder.a.a, holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2096c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvIntro = null;
                holder.ivCover = null;
                this.f2096c.setOnClickListener(null);
                this.f2096c = null;
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
        return new Holder(this.f107c.inflate(R.layout.item_slf_comic_h, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
