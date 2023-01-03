package com.comeback.data.ui.km;

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
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.km.bean.Video;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public VideoListAdapter a;
        public Video b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvUser;
        @BindView
        public TextView videoLikeTv;

        public Holder(View view, VideoListAdapter videoListAdapter) {
            super(view);
            this.a = videoListAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            ViewGroup.LayoutParams layoutParams = this.ivImg.getLayoutParams();
            layoutParams.width = App.f103d / 2;
            layoutParams.height = (video2.getMv_play_height() * layoutParams.width) / video2.getMv_play_width();
            this.ivImg.setLayoutParams(layoutParams);
            h.u0(video2.getMv_img_url(), this.ivImg);
            this.tvUser.setText(video2.getMuName());
            this.videoLikeTv.setText(video2.getMv_like());
        }

        @OnClick
        public void onViewClicked(View view) {
            int id = view.getId();
            if (id == R.id.iv_img) {
                VideoPlayActivity.m(this.a.a, this.b);
            } else if (id == R.id.rl_root) {
                UserCenterActivity.u(this.a.a, this.b.getMu_name(), this.b.getMu_id());
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1311c;

        /* renamed from: d  reason: collision with root package name */
        public View f1312d;

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1313c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1313c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1313c.onViewClicked(view);
            }
        }

        /* compiled from: VideoListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1314c;

            public b(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1314c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f1314c.onViewClicked(view);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b2 = c.b(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCS4DBhx0DgoHABZdFA=="));
            holder.ivImg = (ImageView) c.a(b2, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            this.f1311c = b2;
            b2.setOnClickListener(new a(this, holder));
            ImageView imageView = (ImageView) c.c(view, R.id.iv_logo, e.a("UQsGCA9THloFKlsAF00="), ImageView.class);
            holder.videoLikeTv = (TextView) c.c(view, R.id.video_like_tv, e.a("UQsGCA9THkUaAlEINAMIDmMURA=="), TextView.class);
            holder.tvUser = (TextView) c.c(view, R.id.tv_user, e.a("UQsGCA9THkcFM0cCCk0="), TextView.class);
            View b3 = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1312d = b3;
            b3.setOnClickListener(new b(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.videoLikeTv = null;
                holder.tvUser = null;
                this.f1311c.setOnClickListener(null);
                this.f1311c = null;
                this.f1312d.setOnClickListener(null);
                this.f1312d = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoListAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/km/bean/Video;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
