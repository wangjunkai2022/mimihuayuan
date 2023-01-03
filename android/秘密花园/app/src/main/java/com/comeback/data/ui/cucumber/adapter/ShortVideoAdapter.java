package com.comeback.data.ui.cucumber.adapter;

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
import com.comeback.data.ui.cucumber.UserDetailActivity;
import com.comeback.data.ui.cucumber.bean.NvshenBean;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.f.b;
import f.e.a.j.g.f.c;
import f.e.a.j.g.f.d;

/* loaded from: classes.dex */
public class ShortVideoAdapter extends BaseAbstractAdapter<Video> {

    /* renamed from: d  reason: collision with root package name */
    public int f456d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f457e;

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<Video> {
        public ShortVideoAdapter a;
        public Video b;

        /* renamed from: c  reason: collision with root package name */
        public ExoUserPlayer f458c;

        /* renamed from: d  reason: collision with root package name */
        public Runnable f459d = new a();
        @BindView
        public ImageView mIvPlay;
        @BindView
        public SeekBar mSeekBar;
        @BindView
        public TextView tvCommentNum;
        @BindView
        public TextView tvLikeNum;
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
                ExoUserPlayer exoUserPlayer = tiktopHolder.f458c;
                if (exoUserPlayer != null && tiktopHolder.mSeekBar != null && exoUserPlayer.isPlaying()) {
                    long currentPosition = TiktopHolder.this.f458c.getCurrentPosition();
                    TiktopHolder tiktopHolder2 = TiktopHolder.this;
                    tiktopHolder2.mSeekBar.setProgress((int) ((currentPosition * 1000) / tiktopHolder2.f458c.getDuration()));
                    if (TiktopHolder.this.f458c.isPlaying()) {
                        TiktopHolder tiktopHolder3 = TiktopHolder.this;
                        tiktopHolder3.mSeekBar.postDelayed(tiktopHolder3.f459d, 300);
                    }
                }
            }
        }

        public TiktopHolder(View view, ShortVideoAdapter shortVideoAdapter) {
            super(view);
            this.a = shortVideoAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            this.tvTitle.setText(video2.getMovName());
            this.tvTime.setText(video2.getMovDesc());
            TextView textView = this.tvLikeNum;
            textView.setText(video2.getFavorCnt() + "");
            TextView textView2 = this.tvCommentNum;
            textView2.setText(video2.getCommentCnt() + "");
            ExoUserPlayer h2 = h.h((Activity) this.a.a, this.videoView);
            this.f458c = h2;
            h2.hideControllerView();
            this.f458c.setPlayUri(e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG"));
            if (getAdapterPosition() == 0) {
                c();
            }
            this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.B0(this.a.f457e ? video2.getVideoCover() : video2.getCover(), this.f458c.getVideoPlayerView().getPreviewImage());
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new f.e.a.j.g.f.a(this));
            ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
            this.mSeekBar.setProgress(0);
            this.mSeekBar.setOnSeekBarChangeListener(new b(this));
            this.f458c.addVideoInfoListener(new c(this));
        }

        public /* synthetic */ void b(View view) {
            if (this.f458c.isPlaying()) {
                this.f458c.onPause();
            } else {
                c();
            }
            if (this.f458c.isPlaying()) {
                this.mIvPlay.setImageDrawable(null);
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
        }

        public final void c() {
            ExoUserPlayer exoUserPlayer = this.f458c;
            if (exoUserPlayer != null) {
                if (exoUserPlayer.getCurrentPosition() > 500) {
                    this.f458c.onResume();
                } else if (!TextUtils.isEmpty(this.b.getRealVideo())) {
                    this.f458c.startPlayer();
                } else if (this.a.f457e) {
                    m.e<NvshenBean> j2 = f.e.a.j.g.h.c.a().j(String.valueOf(this.b.getId()));
                    j2.d(m.r.a.a()).b(m.l.b.a.a()).c(new f.e.a.j.g.f.e(this));
                } else {
                    m.e<VideoList> p = f.e.a.j.g.h.c.a().p(this.b.getId());
                    p.d(m.r.a.a()).b(m.l.b.a.a()).c(new d(this));
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class TiktopHolder_ViewBinding implements Unbinder {
        public TiktopHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f460c;

        /* compiled from: ShortVideoAdapter$TiktopHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TiktopHolder f461c;

            public a(TiktopHolder_ViewBinding tiktopHolder_ViewBinding, TiktopHolder tiktopHolder) {
                this.f461c = tiktopHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                TiktopHolder tiktopHolder = this.f461c;
                if (TextUtils.isEmpty(tiktopHolder.b.getInviteCode())) {
                    h.n1(e.a("0dDCgvf60b3Eg7vxneLTIlOG3MWN8pYfm8mDgv3ihfmahPfag9S/2tH3"));
                } else {
                    UserDetailActivity.l(tiktopHolder.a.a, tiktopHolder.b.getInviteCode());
                }
            }
        }

        @UiThread
        public TiktopHolder_ViewBinding(TiktopHolder tiktopHolder, View view) {
            this.b = tiktopHolder;
            tiktopHolder.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seek_bar, e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
            tiktopHolder.mIvPlay = (ImageView) d.c.c.c(view, R.id.iv_play, e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
            tiktopHolder.videoView = (VideoPlayerView) d.c.c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
            tiktopHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            tiktopHolder.tvTime = (TextView) d.c.c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b = d.c.c.b(view, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
            ImageView imageView = (ImageView) d.c.c.a(b, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTA=="), ImageView.class);
            this.f460c = b;
            b.setOnClickListener(new a(this, tiktopHolder));
            tiktopHolder.tvLikeNum = (TextView) d.c.c.c(view, R.id.tv_like_num, e.a("UQsGCA9THkcFKl0MHSQWBhA="), TextView.class);
            tiktopHolder.tvCommentNum = (TextView) d.c.c.c(view, R.id.tv_comment_num, e.a("UQsGCA9THkcFJVsKFQ8NH3kXDkM="), TextView.class);
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
                tiktopHolder.tvLikeNum = null;
                tiktopHolder.tvCommentNum = null;
                this.f460c.setOnClickListener(null);
                this.f460c = null;
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
        return new TiktopHolder(this.f107c.inflate(R.layout.item_cucumber_short, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }

    public ShortVideoAdapter(Context context, boolean z) {
        super(context);
        this.f457e = z;
    }
}
