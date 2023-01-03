package com.comeback.data.ui.lutube.adapter;

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
import com.comeback.data.ui.lutube.VideoPlayActivity;
import com.comeback.data.ui.lutube.bean.LVideosBean;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;

/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<LVideosBean> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1413d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<LVideosBean> {
        public VideoListAdapter a;
        public LVideosBean b;
        @BindView
        public ImageView imageCover;
        @BindView
        public ImageView ivLike;
        @BindView
        public TextView textActor;
        @BindView
        public TextView textDate;
        @BindView
        public TextView textMainTag;
        @BindView
        public TextView textSecondTag1;
        @BindView
        public TextView textSecondTag2;
        @BindView
        public TextView textTitle;

        public Holder(View view, VideoListAdapter videoListAdapter) {
            super(view);
            this.a = videoListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(LVideosBean lVideosBean) {
            LVideosBean lVideosBean2 = lVideosBean;
            this.b = lVideosBean2;
            if (this.a.f1413d) {
                h.I0(lVideosBean2.getThumb(), this.imageCover);
            } else {
                h.I0(lVideosBean2.getCover(), this.imageCover);
            }
            h.k1(this.textMainTag, lVideosBean2.getMain_tagString());
            String second_tagString = lVideosBean2.getSecond_tagString();
            int i2 = 8;
            this.textSecondTag1.setVisibility(second_tagString.contains(e.a("09rO")) ? 0 : 8);
            this.textSecondTag2.setVisibility((second_tagString.contains(e.a("0fXD")) || second_tagString.contains(e.a("0ObC"))) ? 0 : 0);
            h.k1(this.textDate, lVideosBean2.getTime());
            h.k1(this.textActor, lVideosBean2.getActor());
            if (this.textActor.getVisibility() == 0) {
                this.textTitle.setMaxLines(1);
            } else {
                this.textTitle.setMaxLines(2);
            }
            this.textTitle.setText(lVideosBean2.getVideo_title());
            this.ivLike.setImageResource(R.mipmap.ic_km_like_white);
            this.ivLike.setClickable(true);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1414c;

        /* renamed from: d  reason: collision with root package name */
        public View f1415d;

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1416c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1416c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1416c;
                VideoPlayActivity.o(holder.a.a, holder.b.getVideo_id());
            }
        }

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1417c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1417c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1417c;
                g.d(holder.b.getRealm()).a(holder.b);
                h.n1(e.a("0fbVjPz837vjg774"));
                holder.ivLike.setImageResource(R.mipmap.ic_km_like_selected);
                holder.ivLike.setClickable(false);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b2 = c.b(view, R.id.image_cover, e.a("UQsGCA9THloeB1MCOwUVDkVFQwUFFxleFhJcCBxKRBxWFgAMTA=="));
            holder.imageCover = (ImageView) c.a(b2, R.id.image_cover, e.a("UQsGCA9THloeB1MCOwUVDkVF"), ImageView.class);
            this.f1414c = b2;
            b2.setOnClickListener(new a(this, holder));
            View b3 = c.b(view, R.id.iv_like, e.a("UQsGCA9THloFKl0MHU1DClkGQwkOB1FcF0YTCxEBBkw="));
            holder.ivLike = (ImageView) c.a(b3, R.id.iv_like, e.a("UQsGCA9THloFKl0MHU0="), ImageView.class);
            this.f1415d = b3;
            b3.setOnClickListener(new b(this, holder));
            holder.textMainTag = (TextView) c.c(view, R.id.text_main_tag, e.a("UQsGCA9THkcWHkAqGQMNP1YFRA=="), TextView.class);
            holder.textDate = (TextView) c.c(view, R.id.text_date, e.a("UQsGCA9THkcWHkAjGR4GTA=="), TextView.class);
            holder.textSecondTag2 = (TextView) c.c(view, R.id.text_second_tag_2, e.a("UQsGCA9THkcWHkA0HQkMBVM2AgNZVA=="), TextView.class);
            holder.textSecondTag1 = (TextView) c.c(view, R.id.text_second_tag_1, e.a("UQsGCA9THkcWHkA0HQkMBVM2AgNaVA=="), TextView.class);
            holder.textTitle = (TextView) c.c(view, R.id.text_title, e.a("UQsGCA9THkcWHkAzER4PDhA="), TextView.class);
            holder.textActor = (TextView) c.c(view, R.id.text_actor, e.a("UQsGCA9THkcWHkAmGx4MGRA="), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.imageCover = null;
                holder.ivLike = null;
                holder.textMainTag = null;
                holder.textDate = null;
                holder.textSecondTag2 = null;
                holder.textSecondTag1 = null;
                holder.textTitle = null;
                holder.textActor = null;
                this.f1414c.setOnClickListener(null);
                this.f1414c = null;
                this.f1415d.setOnClickListener(null);
                this.f1415d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoListAdapter(Context context) {
        super(context);
        this.f1413d = false;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(this.f1413d ? R.layout.item_lutube_video2 : R.layout.item_lutube_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }

    public VideoListAdapter(Context context, boolean z) {
        super(context);
        this.f1413d = false;
        this.f1413d = z;
    }
}
