package com.comeback.data.ui.km2;

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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.km2.bean.Km2Video;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<Km2Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Km2Video> {
        public VideoListAdapter a;
        public Km2Video b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvLike;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvUser;

        public Holder(View view, VideoListAdapter videoListAdapter) {
            super(view);
            this.a = videoListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Km2Video km2Video) {
            Km2Video km2Video2 = km2Video;
            this.b = km2Video2;
            ViewGroup.LayoutParams layoutParams = this.ivImg.getLayoutParams();
            layoutParams.width = App.f103d / 2;
            layoutParams.height = (km2Video2.getHeight() * layoutParams.width) / km2Video2.getWidth();
            this.ivImg.setLayoutParams(layoutParams);
            h.u0(km2Video2.getCover(), this.ivImg);
            this.tvUser.setText(km2Video2.getNickname());
            this.tvTitle.setText(km2Video2.getTitle());
            this.tvLike.setText(String.valueOf(km2Video2.getPraise_num()));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1439c;

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1440c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1440c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1440c;
                VideoPlayActivity.m(holder.a.a, holder.b.isLandscape(), holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvLike = (TextView) c.c(view, R.id.tv_like, e.a("UQsGCA9THkcFKl0MHU0="), TextView.class);
            holder.tvUser = (TextView) c.c(view, R.id.tv_user, e.a("UQsGCA9THkcFM0cCCk0="), TextView.class);
            View b = c.b(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="));
            holder.ivImg = (ImageView) c.a(b, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f1439c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.tvLike = null;
                holder.tvUser = null;
                holder.ivImg = null;
                this.f1439c.setOnClickListener(null);
                this.f1439c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km2_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
