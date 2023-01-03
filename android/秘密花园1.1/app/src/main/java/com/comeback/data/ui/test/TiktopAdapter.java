package com.comeback.data.ui.test;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SeekBar;
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
import com.comeback.data.ui.test.TiktopAdapter;
import com.comeback.data.ui.test.bean.TiktopBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.c;
import f.e.a.j.l0.d;

/* loaded from: classes.dex */
public class TiktopAdapter extends BaseAbstractAdapter<TiktopBean.DataBean.VideosBean> {

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<TiktopBean.DataBean.VideosBean> {
        public ExoUserPlayer a;
        public Runnable b;

        /* renamed from: c  reason: collision with root package name */
        public TiktopAdapter f2082c;
        @BindView
        public ImageView mIvPlay;
        @BindView
        public SeekBar mSeekBar;
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

        public TiktopHolder(View view, TiktopAdapter tiktopAdapter) {
            super(view);
            this.b = new a();
            this.f2082c = tiktopAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(TiktopBean.DataBean.VideosBean videosBean) {
            TiktopBean.DataBean.VideosBean videosBean2 = videosBean;
            ExoUserPlayer h2 = h.h((Activity) this.f2082c.a, this.videoView);
            this.a = h2;
            h2.hideControllerView();
            e.a("XxYXFFFcFgJCXxpfTERWWRlQUlFERQwEQFYDIkxdVFMEJ1RVUkQBBUcgAFA5XExbBFJTVFNDCwNDUwxQSSxbXAZWUyYvQn0HR1Z2XkBcUip2VyVdKV4MBEdSGVdIUydGAiYgIUZKAQA1IgMiSiglXAVMDhRfTFpQHAJRWkhfUlkRBhYWCgdQXB1bBl9KTAYTRwsRAVZCAQNDVhIXCwMHVlIAAl1SQgkHRlYAUkxZBgkFVFYHUxcOCxUABVYeWwdcERcTFzQQVVoWCEA4Fg8XAkdfBwENRABSRgUSEggZPB9EX1JRXEUIC0FSBVBeHxMYaBcQARkaXQ5VE0AOHFclOnUIJRYbJGFaSyV1A09ZCDt8USkTPAsfRRoCCT81PggReCYyVyUZbAY9ARIREw8aVnZaWgVcQ1sEQVFQA0wOAQoGW1oCXkABVRFSBFFLXlZdB0QQFFZVW1BOVBIDCg9eHgVTRRcCTg0BVQdYDicYBg9eEAYHHyxdXB4HXQlFEwgeUAFNBxtACB0cEkBJGwMBBUMUTQoOBx9SHw9rFR0OChlSARc7DgtmVQcHU1odDgANVlIAUVpCWFcXUQUBHFoFClIHWlMPR1sGR1NXV0oLU1MPVVBWD0JaAUteBV9eCw8CaBAGAAIBXFAHOVEfJx4OAlkLDQM0B0oOQlMDUUlSUV8GVEUFBxpmQRYCXRUdCRc0Uho8EAYaV1odAWsCABoKGVJfUFJbQx9SHw9rFR0OChlSARc7DgtmWxwSCVc=");
            this.a.setPlayUri(e.a("XxYXFBhJFhweFgBJDgAQA15MAAsGXAsDQl4ZV0xHUloYVVRRW0FaVhUDAQEdXVQPUlQFUwhKXAYWBwMEHV9aWlVMDhRf"));
            if (getAdapterPosition() == 0) {
                c();
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.u0(videosBean2.getFirstFrameImg(), this.a.getVideoPlayerView().getPreviewImage());
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.l0.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TiktopAdapter.TiktopHolder.this.b(view);
                }
            });
            ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
            this.mSeekBar.setProgress(0);
            this.mSeekBar.setOnSeekBarChangeListener(new c(this));
            this.a.addVideoInfoListener(new d(this));
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
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public TiktopAdapter(Context context) {
        super(context);
    }

    @NonNull
    public TiktopHolder f(@NonNull ViewGroup viewGroup) {
        return new TiktopHolder(this.f107c.inflate(R.layout.item_tiktop, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
