package com.comeback.data.ui.xj.adapter;

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
import com.comeback.data.ui.xj.PlayActivity;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoListAdapter extends BaseAbstractAdapter<VideoBean> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoBean> {
        public VideoListAdapter a;
        public VideoBean b;
        @BindView
        public ImageView ivExclusive;
        @BindView
        public ImageView ivVideoCover;
        @BindView
        public ImageView ivVip;
        @BindView
        public TextView tvTime;
        @BindView
        public TextView tvVideoDurtion;
        @BindView
        public TextView tvVideoTitle;
        @BindView
        public TextView tvdzan;
        @BindView
        public TextView tvplun;

        public HomeListHolder(View view, VideoListAdapter videoListAdapter) {
            super(view);
            this.a = videoListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoBean videoBean) {
            VideoBean videoBean2 = videoBean;
            this.b = videoBean2;
            boolean z = videoBean2.getExclusive() == 1;
            h.t0(App.b, videoBean2.getCoverpic(), this.ivVideoCover, R.drawable.default_img_bg_deep, null);
            this.ivExclusive.setVisibility(z ? 0 : 8);
            this.ivVip.setVisibility(videoBean2.isVip() ? 0 : 8);
            this.tvVideoTitle.setText(videoBean2.getTitle());
            this.tvVideoDurtion.setText(videoBean2.getDuration());
            this.tvdzan.setText(videoBean2.getUpnum());
            this.tvplun.setText(videoBean2.getCommentcount());
            this.tvTime.setText(videoBean2.getCreatetime());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2251c;

        /* compiled from: VideoListAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f2252c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f2252c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f2252c;
                PlayActivity.l(homeListHolder.a.a, homeListHolder.b.getVodid(), homeListHolder.b.getDefinition());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivVideoCover = (ImageView) c.c(view, R.id.ivVideoCover, e.a("UQsGCA9THloFMF0DHQUgBEEHEUM="), ImageView.class);
            homeListHolder.ivExclusive = (ImageView) c.c(view, R.id.ivExclusive, e.a("UQsGCA9THloFI0wEFB8QAkEHRA=="), ImageView.class);
            homeListHolder.ivVip = (ImageView) c.c(view, R.id.ivVip, e.a("UQsGCA9THloFMF0XXw=="), ImageView.class);
            ImageView imageView = (ImageView) c.c(view, R.id.ivPlayVideo, e.a("UQsGCA9THloFNlgGATwKD1INRA=="), ImageView.class);
            homeListHolder.tvVideoTitle = (TextView) c.c(view, R.id.tvVideoTitle, e.a("UQsGCA9THkcFMF0DHQU3AkMOBkM="), TextView.class);
            homeListHolder.tvVideoDurtion = (TextView) c.c(view, R.id.tvVideoDurtion, e.a("UQsGCA9THkcFMF0DHQUnHkUWCgsFVA=="), TextView.class);
            homeListHolder.tvdzan = (TextView) c.c(view, R.id.tvdzan, e.a("UQsGCA9THkcFAk4GFk0="), TextView.class);
            homeListHolder.tvplun = (TextView) c.c(view, R.id.tvplun, e.a("UQsGCA9THkcFFlgSFk0="), TextView.class);
            homeListHolder.tvTime = (TextView) c.c(view, R.id.tvTime, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQUA0A3FAsaPkUORA=="));
            this.f2251c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.ivVideoCover = null;
                homeListHolder.ivExclusive = null;
                homeListHolder.ivVip = null;
                homeListHolder.tvVideoTitle = null;
                homeListHolder.tvVideoDurtion = null;
                homeListHolder.tvdzan = null;
                homeListHolder.tvplun = null;
                homeListHolder.tvTime = null;
                this.f2251c.setOnClickListener(null);
                this.f2251c = null;
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
        return new HomeListHolder(this.f107c.inflate(R.layout.item_xj_video, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
