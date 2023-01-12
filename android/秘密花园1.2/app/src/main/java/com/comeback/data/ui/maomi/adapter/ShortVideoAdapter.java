package com.comeback.data.ui.maomi.adapter;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.maomi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.maomi.bean.ShortOriginal;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d0.k.b;
import f.e.a.j.d0.k.c;

/* loaded from: classes.dex */
public class ShortVideoAdapter extends BaseAbstractAdapter<ShortOriginal.DataBeanX.DataBean> {

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<ShortOriginal.DataBeanX.DataBean> {
        public ExoUserPlayer a;
        public Runnable b;

        /* renamed from: c  reason: collision with root package name */
        public ShortVideoAdapter f1676c;
        @BindView
        public ImageView mIvPlay;
        @BindView
        public SeekBar mSeekBar;
        @BindView
        public TextView tvTime;
        @BindView
        public TextView tvTitle;
        @BindView
        public VideoPlayerView videoView;

        /* loaded from: classes.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                TiktopHolder tiktopHolder = TiktopHolder.this;
                ExoUserPlayer exoUserPlayer = tiktopHolder.a;
                if (exoUserPlayer == null || tiktopHolder.mSeekBar == null || !exoUserPlayer.isPlaying()) {
                    return;
                }
                long currentPosition = TiktopHolder.this.a.getCurrentPosition();
                TiktopHolder tiktopHolder2 = TiktopHolder.this;
                tiktopHolder2.mSeekBar.setProgress((int) ((currentPosition * 1000) / tiktopHolder2.a.getDuration()));
                if (TiktopHolder.this.a.isPlaying()) {
                    TiktopHolder tiktopHolder3 = TiktopHolder.this;
                    tiktopHolder3.mSeekBar.postDelayed(tiktopHolder3.b, 300L);
                }
            }
        }

        public TiktopHolder(View view, ShortVideoAdapter shortVideoAdapter) {
            super(view);
            this.b = new a();
            this.f1676c = shortVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ShortOriginal.DataBeanX.DataBean dataBean) {
            ShortOriginal.DataBeanX.DataBean dataBean2 = dataBean;
            this.tvTitle.setText(dataBean2.getTitle());
            this.tvTime.setText(dataBean2.getCreate_at());
            ExoUserPlayer h2 = h.h((Activity) this.f1676c.a, this.videoView);
            this.a = h2;
            h2.hideControllerView();
            this.a.setPlayUri(dataBean2.getM3u8());
            if (getAdapterPosition() == 0) {
                c();
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.u0(dataBean2.getVideo_img(), this.a.getVideoPlayerView().getPreviewImage());
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.d0.k.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortVideoAdapter.TiktopHolder.this.b(view);
                }
            });
            ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
            this.mSeekBar.setProgress(0);
            this.mSeekBar.setOnSeekBarChangeListener(new b(this));
            this.a.addVideoInfoListener(new c(this));
        }

        public /* synthetic */ void b(View view) {
            if (this.a.isPlaying()) {
                this.a.onPause();
            } else {
                c();
            }
            if (this.a.isPlaying()) {
                this.mIvPlay.setImageDrawable(null);
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
        }

        public final void c() {
            if (this.a.getCurrentPosition() <= 500) {
                this.a.startPlayer();
            } else {
                this.a.onResume();
            }
        }
    }

    /* loaded from: classes.dex */
    public class TiktopHolder_ViewBinding implements Unbinder {
        public TiktopHolder b;

        @UiThread
        public TiktopHolder_ViewBinding(TiktopHolder tiktopHolder, View view) {
            this.b = tiktopHolder;
            tiktopHolder.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seek_bar, e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
            tiktopHolder.mIvPlay = (ImageView) d.c.c.c(view, R.id.iv_play, e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
            tiktopHolder.videoView = (VideoPlayerView) d.c.c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
            tiktopHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            tiktopHolder.tvTime = (TextView) d.c.c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            TiktopHolder tiktopHolder = this.b;
            if (tiktopHolder != null) {
                this.b = null;
                tiktopHolder.mSeekBar = null;
                tiktopHolder.mIvPlay = null;
                tiktopHolder.videoView = null;
                tiktopHolder.tvTitle = null;
                tiktopHolder.tvTime = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ShortVideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public TiktopHolder f(@NonNull ViewGroup viewGroup) {
        return new TiktopHolder(this.f107c.inflate(R.layout.item_mm_short, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
