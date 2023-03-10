package com.comeback.data.ui.dn.adapter;

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
import butterknife.OnClick;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.dn.UserActivity;
import com.comeback.data.ui.dn.adapter.ShortVideoAdapter;
import com.comeback.data.ui.dn.bean.PlayUrl;
import com.comeback.data.ui.dn.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h.b.b;
import f.e.a.j.h.b.c;
import f.e.a.j.h.b.d;
/* loaded from: classes.dex */
public class ShortVideoAdapter extends BaseAbstractAdapter<VideoInfo> {

    /* renamed from: d  reason: collision with root package name */
    public int f552d;

    /* loaded from: classes.dex */
    public static class TiktopHolder extends BaseViewHolder<VideoInfo> {
        public ExoUserPlayer a;
        public Runnable b;

        /* renamed from: c  reason: collision with root package name */
        public ShortVideoAdapter f553c;

        /* renamed from: d  reason: collision with root package name */
        public VideoInfo f554d;
        @BindView
        public ImageView mIvHead;
        @BindView
        public ImageView mIvLike;
        @BindView
        public ImageView mIvPlay;
        @BindView
        public SeekBar mSeekBar;
        @BindView
        public TextView mTvLike;
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
            this.f553c = shortVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            this.f554d = videoInfo2;
            if (videoInfo2.getUserinfo() != null) {
                this.tvTitle.setText(videoInfo2.getUserinfo().getUser_nicename());
                h.A0(videoInfo2.getUserinfo().getAvatar(), this.mIvHead);
            }
            this.tvTime.setText(videoInfo2.getTitle());
            this.mTvLike.setText(videoInfo2.getLikes());
            ExoUserPlayer h2 = h.h((Activity) this.f553c.a, this.videoView);
            this.a = h2;
            h2.hideControllerView();
            this.a.setPlayUri(TextUtils.isEmpty(videoInfo2.getHref()) ? e.a("XxYXFBhJFhwEEUNJGgsKD0JMAAsG") : videoInfo2.getHref());
            if (getAdapterPosition() == 0) {
                c();
            } else {
                this.mIvPlay.setImageResource(R.mipmap.player_icon_start_play);
            }
            VideoPlayerView videoPlayerView = (VideoPlayerView) this.itemView.findViewById(R.id.video_view);
            h.B0(videoInfo2.getThumb(), this.a.getVideoPlayerView().getPreviewImage());
            ((View) videoPlayerView.getPlaybackControlView().findViewById(R.id.exo_controller_top).getParent()).setVisibility(8);
            this.mIvPlay.setClickable(true);
            this.mIvPlay.setOnClickListener(new View.OnClickListener() { // from class: f.e.a.j.h.b.a
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
            ExoUserPlayer exoUserPlayer = this.a;
            if (exoUserPlayer == null) {
                return;
            }
            if (exoUserPlayer.getCurrentPosition() <= 500) {
                if (TextUtils.isEmpty(this.f554d.getHref())) {
                    m.e<PlayUrl> a2 = f.e.a.j.h.c.b.a().a(this.f554d.getVideoid());
                    a2.d(m.r.a.a()).b(m.l.b.a.a()).c(new d(this));
                    return;
                }
                this.a.startPlayer();
                return;
            }
            this.a.onResume();
        }

        @OnClick
        public void userInfo() {
            if (this.f554d.getUserinfo() != null) {
                UserActivity.n(this.f553c.a, this.f554d.getUserinfo());
            }
        }
    }

    /* loaded from: classes.dex */
    public class TiktopHolder_ViewBinding implements Unbinder {
        public TiktopHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f555c;

        /* renamed from: d  reason: collision with root package name */
        public View f556d;

        /* renamed from: e  reason: collision with root package name */
        public View f557e;

        /* compiled from: ShortVideoAdapter$TiktopHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TiktopHolder f558c;

            public a(TiktopHolder_ViewBinding tiktopHolder_ViewBinding, TiktopHolder tiktopHolder) {
                this.f558c = tiktopHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f558c.userInfo();
            }
        }

        /* compiled from: ShortVideoAdapter$TiktopHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class b extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TiktopHolder f559c;

            public b(TiktopHolder_ViewBinding tiktopHolder_ViewBinding, TiktopHolder tiktopHolder) {
                this.f559c = tiktopHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f559c.mIvLike.setImageResource(R.mipmap.ic_km_like_selected);
            }
        }

        /* compiled from: ShortVideoAdapter$TiktopHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class c extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ TiktopHolder f560c;

            public c(TiktopHolder_ViewBinding tiktopHolder_ViewBinding, TiktopHolder tiktopHolder) {
                this.f560c = tiktopHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                this.f560c.userInfo();
            }
        }

        @UiThread
        public TiktopHolder_ViewBinding(TiktopHolder tiktopHolder, View view) {
            this.b = tiktopHolder;
            tiktopHolder.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seek_bar, e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
            tiktopHolder.mIvPlay = (ImageView) d.c.c.c(view, R.id.iv_play, e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
            View b2 = d.c.c.b(view, R.id.iv_head, e.a("UQsGCA9THl46EHwCGQ5ES1YMB0QGFk1bHAIUQA0ZBhl+DAULTA=="));
            tiktopHolder.mIvHead = (ImageView) d.c.c.a(b2, R.id.iv_head, e.a("UQsGCA9THl46EHwCGQ5E"), ImageView.class);
            this.f555c = b2;
            b2.setOnClickListener(new a(this, tiktopHolder));
            View b3 = d.c.c.b(view, R.id.iv_like, e.a("UQsGCA9THl46EHgOEw9ES1YMB0QGFk1bHAIUQBQDCA4Q"));
            tiktopHolder.mIvLike = (ImageView) d.c.c.a(b3, R.id.iv_like, e.a("UQsGCA9THl46EHgOEw9E"), ImageView.class);
            this.f556d = b3;
            b3.setOnClickListener(new b(this, tiktopHolder));
            tiktopHolder.videoView = (VideoPlayerView) d.c.c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
            View b4 = d.c.c.b(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA0ZBhl+DAULTA=="));
            tiktopHolder.tvTitle = (TextView) d.c.c.a(b4, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f557e = b4;
            b4.setOnClickListener(new c(this, tiktopHolder));
            tiktopHolder.tvTime = (TextView) d.c.c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            tiktopHolder.mTvLike = (TextView) d.c.c.c(view, R.id.tv_like, e.a("UQsGCA9THl4nEHgOEw9E"), TextView.class);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            TiktopHolder tiktopHolder = this.b;
            if (tiktopHolder != null) {
                this.b = null;
                tiktopHolder.mSeekBar = null;
                tiktopHolder.mIvPlay = null;
                tiktopHolder.mIvHead = null;
                tiktopHolder.mIvLike = null;
                tiktopHolder.videoView = null;
                tiktopHolder.tvTitle = null;
                tiktopHolder.tvTime = null;
                tiktopHolder.mTvLike = null;
                this.f555c.setOnClickListener(null);
                this.f555c = null;
                this.f556d.setOnClickListener(null);
                this.f556d = null;
                this.f557e.setOnClickListener(null);
                this.f557e = null;
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
        return new TiktopHolder(this.f107c.inflate(R.layout.item_dn_short, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
