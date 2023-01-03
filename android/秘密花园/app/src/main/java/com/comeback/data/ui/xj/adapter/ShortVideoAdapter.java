package com.comeback.data.ui.xj.adapter;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.ui.xj.bean.PlayUrl;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
import f.e.a.j.r0.d.b;
import f.e.a.j.r0.d.p;
import f.e.a.j.r0.d.q;
import f.e.a.j.r0.d.r;

/* loaded from: classes.dex */
public class ShortVideoAdapter extends BaseAbstractAdapter<VideoBean> {

    /* renamed from: d  reason: collision with root package name */
    public int f2224d;

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<VideoBean> {
        public ExoUserPlayer a;
        public Runnable b = new a();

        /* renamed from: c  reason: collision with root package name */
        public ShortVideoAdapter f2225c;

        /* renamed from: d  reason: collision with root package name */
        public VideoBean f2226d;
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
                if (exoUserPlayer != null && tiktopHolder.mSeekBar != null && exoUserPlayer.isPlaying()) {
                    long currentPosition = TiktopHolder.this.a.getCurrentPosition();
                    TiktopHolder tiktopHolder2 = TiktopHolder.this;
                    tiktopHolder2.mSeekBar.setProgress((int) ((currentPosition * 1000) / tiktopHolder2.a.getDuration()));
                    if (TiktopHolder.this.a.isPlaying()) {
                        TiktopHolder tiktopHolder3 = TiktopHolder.this;
                        tiktopHolder3.mSeekBar.postDelayed(tiktopHolder3.b, 300);
                    }
                }
            }
        }

        public TiktopHolder(View view, ShortVideoAdapter shortVideoAdapter) {
            super(view);
            this.f2225c = shortVideoAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoBean videoBean) {
            VideoBean videoBean2 = videoBean;
            this.f2226d = videoBean2;
            this.tvTitle.setText(videoBean2.getTitle());
            this.tvTime.setText(videoBean2.getCreatetime());
            ExoUserPlayer h2 = h.h((Activity) this.f2225c.a, this.videoView);
            this.a = h2;
            h2.hideControllerView();
            this.a.setPlayUri(videoBean2.getPlay_url());
            if (getAdapterPosition() == 0) {
                c();
            }
            this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.u0(videoBean2.getCoverpic(), this.a.getVideoPlayerView().getPreviewImage());
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new b(this));
            ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
            this.mSeekBar.setProgress(0);
            this.mSeekBar.setOnSeekBarChangeListener(new p(this));
            this.a.addVideoInfoListener(new q(this));
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
            if (this.a.getCurrentPosition() > 500) {
                this.a.onResume();
            } else if (TextUtils.isEmpty(this.f2226d.getPlay())) {
                e.a("aD08Ow==");
                getAdapterPosition();
                e.a("3+zUgeTl36HegKDZnfbTjqri");
                m.e<PlayUrl> e2 = f.e.a.j.r0.f.b.a().e(this.f2226d.getVodid());
                e2.d(m.r.a.a()).b(m.l.b.a.a()).c(new r(this));
            } else {
                this.a.startPlayer();
            }
        }
    }

    /* loaded from: classes.dex */
    public class TiktopHolder_ViewBinding implements Unbinder {
        public TiktopHolder b;

        @UiThread
        public TiktopHolder_ViewBinding(TiktopHolder tiktopHolder, View view) {
            this.b = tiktopHolder;
            tiktopHolder.mSeekBar = (SeekBar) c.c(view, R.id.seek_bar, e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
            tiktopHolder.mIvPlay = (ImageView) c.c(view, R.id.iv_play, e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
            tiktopHolder.videoView = (VideoPlayerView) c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
            tiktopHolder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            tiktopHolder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
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
