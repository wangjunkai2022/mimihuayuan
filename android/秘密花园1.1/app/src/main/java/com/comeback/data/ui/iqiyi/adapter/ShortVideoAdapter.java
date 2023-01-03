package com.comeback.data.ui.iqiyi.adapter;

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
import com.comeback.data.ui.iqiyi.UserCenterActivity;
import com.comeback.data.ui.iqiyi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.j.s.d.b;
import f.e.a.j.s.d.c;
import f.e.a.j.s.e.d;
import m.e;

/* loaded from: classes.dex */
public class ShortVideoAdapter extends BaseAbstractAdapter<VideoInfo> {

    /* renamed from: d  reason: collision with root package name */
    public int f1141d;

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<VideoInfo> {
        public ShortVideoAdapter a;
        public VideoInfo b;

        /* renamed from: c  reason: collision with root package name */
        public ExoUserPlayer f1142c;

        /* renamed from: d  reason: collision with root package name */
        public Runnable f1143d;
        @BindView
        public ImageView ivHeader;
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
                ExoUserPlayer exoUserPlayer = tiktopHolder.f1142c;
                if (exoUserPlayer == null || tiktopHolder.mSeekBar == null || !exoUserPlayer.isPlaying()) {
                    return;
                }
                long currentPosition = TiktopHolder.this.f1142c.getCurrentPosition();
                TiktopHolder tiktopHolder2 = TiktopHolder.this;
                tiktopHolder2.mSeekBar.setProgress((int) ((currentPosition * 1000) / tiktopHolder2.f1142c.getDuration()));
                if (TiktopHolder.this.f1142c.isPlaying()) {
                    TiktopHolder tiktopHolder3 = TiktopHolder.this;
                    tiktopHolder3.mSeekBar.postDelayed(tiktopHolder3.f1143d, 300L);
                }
            }
        }

        public TiktopHolder(View view, ShortVideoAdapter shortVideoAdapter) {
            super(view);
            this.f1143d = new a();
            this.a = shortVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            this.b = videoInfo2;
            this.tvTitle.setText(videoInfo2.getNickname());
            this.tvTime.setText(videoInfo2.getName());
            this.tvLikeNum.setText(videoInfo2.getLove());
            this.tvCommentNum.setText(videoInfo2.getComment());
            ExoUserPlayer h2 = h.h((Activity) this.a.a, this.videoView);
            this.f1142c = h2;
            h2.hideControllerView();
            this.f1142c.setPlayUri(videoInfo2.getVideoNone());
            TextUtils.isEmpty(videoInfo2.getVideoLink());
            if (getAdapterPosition() == 0) {
                c();
            }
            this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.F0(videoInfo2.getImg(), this.f1142c.getVideoPlayerView().getPreviewImage(), 1);
            h.E0(videoInfo2.getHeadico(), this.ivHeader);
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.s.d.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortVideoAdapter.TiktopHolder.this.b(view);
                }
            });
            ((ImageView) videoPlayerView.findViewById(R.id.exo_controls_back)).setImageDrawable(null);
            this.mSeekBar.setProgress(0);
            this.mSeekBar.setOnSeekBarChangeListener(new b(this));
            this.f1142c.addVideoInfoListener(new c(this));
        }

        public /* synthetic */ void b(View view) {
            if (this.f1142c.isPlaying()) {
                this.f1142c.onPause();
            } else {
                c();
            }
            if (this.f1142c.isPlaying()) {
                this.mIvPlay.setImageDrawable(null);
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
        }

        public final void c() {
            ExoUserPlayer exoUserPlayer = this.f1142c;
            if (exoUserPlayer == null) {
                return;
            }
            if (exoUserPlayer.getCurrentPosition() <= 500) {
                if (TextUtils.isEmpty(this.b.getVideoLink())) {
                    e<VideoInfo> a2 = d.a().a(f.e.a.j.s.e.b.e(this.b.getId()));
                    a2.d(m.r.a.a()).b(m.l.b.a.a()).c(new f.e.a.j.s.d.d(this));
                    return;
                }
                this.f1142c.startPlayer();
                return;
            }
            this.f1142c.onResume();
        }
    }

    /* loaded from: classes.dex */
    public class TiktopHolder_ViewBinding implements Unbinder {
        public TiktopHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1144c;

        /* compiled from: ShortVideoAdapter$TiktopHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TiktopHolder f1145c;

            public a(TiktopHolder_ViewBinding tiktopHolder_ViewBinding, TiktopHolder tiktopHolder) {
                this.f1145c = tiktopHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                TiktopHolder tiktopHolder = this.f1145c;
                UserCenterActivity.l(tiktopHolder.a.a, tiktopHolder.b.getUserId(), tiktopHolder.b.getNickname(), tiktopHolder.b.getHeadico());
            }
        }

        @UiThread
        public TiktopHolder_ViewBinding(TiktopHolder tiktopHolder, View view) {
            this.b = tiktopHolder;
            tiktopHolder.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seek_bar, f.e.a.e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
            tiktopHolder.mIvPlay = (ImageView) d.c.c.c(view, R.id.iv_play, f.e.a.e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
            tiktopHolder.videoView = (VideoPlayerView) d.c.c.c(view, R.id.video_view, f.e.a.e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
            tiktopHolder.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            tiktopHolder.tvTime = (TextView) d.c.c.c(view, R.id.tv_time, f.e.a.e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            View b = d.c.c.b(view, R.id.iv_header, f.e.a.e.a("UQsGCA9THloFLlEGHA8RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
            tiktopHolder.ivHeader = (ImageView) d.c.c.a(b, R.id.iv_header, f.e.a.e.a("UQsGCA9THloFLlEGHA8RTA=="), ImageView.class);
            this.f1144c = b;
            b.setOnClickListener(new a(this, tiktopHolder));
            tiktopHolder.tvLikeNum = (TextView) d.c.c.c(view, R.id.tv_like_num, f.e.a.e.a("UQsGCA9THkcFKl0MHSQWBhA="), TextView.class);
            tiktopHolder.tvCommentNum = (TextView) d.c.c.c(view, R.id.tv_comment_num, f.e.a.e.a("UQsGCA9THkcFJVsKFQ8NH3kXDkM="), TextView.class);
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
                tiktopHolder.ivHeader = null;
                tiktopHolder.tvLikeNum = null;
                tiktopHolder.tvCommentNum = null;
                this.f1144c.setOnClickListener(null);
                this.f1144c = null;
                return;
            }
            throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ShortVideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public TiktopHolder f(@NonNull ViewGroup viewGroup) {
        return new TiktopHolder(this.f107c.inflate(R.layout.item_iqiyi_short, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
