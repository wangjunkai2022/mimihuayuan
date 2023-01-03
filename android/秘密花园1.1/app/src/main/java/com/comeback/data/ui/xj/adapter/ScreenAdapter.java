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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.xj.PlayActivity;
import com.comeback.data.ui.xj.adapter.ScreenAdapter;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ScreenAdapter extends BaseAbstractAdapter {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<VideoBean> {
        public ScreenAdapter a;
        @BindView
        public ImageView ivExclusive;
        @BindView
        public RatioImageView ivVideoCover;
        @BindView
        public ImageView ivVip;
        @BindView
        public ImageView ivclear;
        @BindView
        public TextView tvVideoDurtion;
        @BindView
        public TextView tvVideoTitle;

        public HomeListHolder(View view, ScreenAdapter screenAdapter) {
            super(view);
            this.a = screenAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoBean videoBean) {
            final VideoBean videoBean2 = videoBean;
            this.tvVideoTitle.setText(videoBean2.getTitle());
            h.B0(videoBean2.getCoverpic(), this.ivVideoCover);
            this.ivVip.setVisibility(videoBean2.isVip() ? 0 : 8);
            this.tvVideoDurtion.setText(videoBean2.getDuration());
            this.ivExclusive.setVisibility(videoBean2.getExclusive() == 1 ? 0 : 8);
            if (videoBean2.getDefinition().equals(e.a("BA=="))) {
                this.ivclear.setImageResource(R.mipmap.icon_720);
            } else if (videoBean2.getDefinition().equals(e.a("Aw=="))) {
                this.ivclear.setImageResource(R.mipmap.icon_1080p);
            } else {
                this.ivclear.setImageResource(0);
            }
            this.itemView.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.r0.d.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ScreenAdapter.HomeListHolder.this.b(videoBean2, view);
                }
            });
        }

        public /* synthetic */ void b(VideoBean videoBean, View view) {
            PlayActivity.l(this.a.a, videoBean.getVodid(), videoBean.getDefinition());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivVideoCover = (RatioImageView) c.c(view, R.id.ivVideoCover, e.a("UQsGCA9THloFMF0DHQUgBEEHEUM="), RatioImageView.class);
            homeListHolder.ivExclusive = (ImageView) c.c(view, R.id.ivExclusive, e.a("UQsGCA9THloFI0wEFB8QAkEHRA=="), ImageView.class);
            homeListHolder.ivVip = (ImageView) c.c(view, R.id.ivVip, e.a("UQsGCA9THloFMF0XXw=="), ImageView.class);
            homeListHolder.tvVideoDurtion = (TextView) c.c(view, R.id.tvVideoDurtion, e.a("UQsGCA9THkcFMF0DHQUnHkUWCgsFVA=="), TextView.class);
            ImageView imageView = (ImageView) c.c(view, R.id.ivXm, e.a("UQsGCA9THloFPllA"), ImageView.class);
            homeListHolder.ivclear = (ImageView) c.c(view, R.id.ivclear, e.a("UQsGCA9THloFBVgCGRhE"), ImageView.class);
            homeListHolder.tvVideoTitle = (TextView) c.c(view, R.id.tvVideoTitle, e.a("UQsGCA9THkcFMF0DHQU3AkMOBkM="), TextView.class);
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
                homeListHolder.tvVideoDurtion = null;
                homeListHolder.ivclear = null;
                homeListHolder.tvVideoTitle = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ScreenAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_xj_video_channel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
