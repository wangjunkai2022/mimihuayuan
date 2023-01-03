package com.comeback.data.ui.jav;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoDetailActivity_ViewBinding implements Unbinder {
    public VideoDetailActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1208c;

    /* renamed from: d  reason: collision with root package name */
    public View f1209d;

    /* renamed from: e  reason: collision with root package name */
    public View f1210e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoDetailActivity f1211c;

        public a(VideoDetailActivity_ViewBinding videoDetailActivity_ViewBinding, VideoDetailActivity videoDetailActivity) {
            this.f1211c = videoDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1211c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoDetailActivity f1212c;

        public b(VideoDetailActivity_ViewBinding videoDetailActivity_ViewBinding, VideoDetailActivity videoDetailActivity) {
            this.f1212c = videoDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1212c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VideoDetailActivity f1213c;

        public c(VideoDetailActivity_ViewBinding videoDetailActivity_ViewBinding, VideoDetailActivity videoDetailActivity) {
            this.f1213c = videoDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1213c.onClick(view);
        }
    }

    @UiThread
    public VideoDetailActivity_ViewBinding(VideoDetailActivity videoDetailActivity, View view) {
        this.b = videoDetailActivity;
        View b2 = d.c.c.b(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
        videoDetailActivity.tvTitle = (TextView) d.c.c.a(b2, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        this.f1208c = b2;
        b2.setOnClickListener(new a(this, videoDetailActivity));
        videoDetailActivity.ivCover = (RatioImageView) d.c.c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
        View b3 = d.c.c.b(view, R.id.tv_play, e.a("UQsGCA9THkcFNlgGAU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
        videoDetailActivity.tvPlay = (TextView) d.c.c.a(b3, R.id.tv_play, e.a("UQsGCA9THkcFNlgGAU0="), TextView.class);
        this.f1209d = b3;
        b3.setOnClickListener(new b(this, videoDetailActivity));
        videoDetailActivity.tvUid = (TextView) d.c.c.c(view, R.id.tv_uid, e.a("UQsGCA9THkcFM10DXw=="), TextView.class);
        videoDetailActivity.tvDate = (TextView) d.c.c.c(view, R.id.tv_date, e.a("UQsGCA9THkcFIlUTHU0="), TextView.class);
        videoDetailActivity.tvDuration = (TextView) d.c.c.c(view, R.id.tv_duration, e.a("UQsGCA9THkcFIkEVGR4KBFlF"), TextView.class);
        videoDetailActivity.tvShop = (TextView) d.c.c.c(view, R.id.tv_shop, e.a("UQsGCA9THkcFNVwICE0="), TextView.class);
        videoDetailActivity.tvPublisher = (TextView) d.c.c.c(view, R.id.tv_publisher, e.a("UQsGCA9THkcFNkEFFAMQA1IQRA=="), TextView.class);
        videoDetailActivity.tvScore = (TextView) d.c.c.c(view, R.id.tv_score, e.a("UQsGCA9THkcFNVcICg9E"), TextView.class);
        videoDetailActivity.tvActor = (TextView) d.c.c.c(view, R.id.tv_actor, e.a("UQsGCA9THkcFJ1cTFxhE"), TextView.class);
        videoDetailActivity.tvTag = (TextView) d.c.c.c(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
        videoDetailActivity.rvPreview = (RecyclerView) d.c.c.c(view, R.id.rv_preview, e.a("UQsGCA9THkEFNkYCDgMGHBA="), RecyclerView.class);
        videoDetailActivity.rlPreview = (RelativeLayout) d.c.c.c(view, R.id.rl_preview, e.a("UQsGCA9THkEfNkYCDgMGHBA="), RelativeLayout.class);
        View b4 = d.c.c.b(view, R.id.tv_more_img, e.a("UQsGCA9THkcFK1sVHSMODBBCAgoPU1RWBw5bA1hNDAV0DgoHAFQ="));
        videoDetailActivity.tvMoreImg = (TextView) d.c.c.a(b4, R.id.tv_more_img, e.a("UQsGCA9THkcFK1sVHSMODBA="), TextView.class);
        this.f1210e = b4;
        b4.setOnClickListener(new c(this, videoDetailActivity));
        videoDetailActivity.rvSame = (RecyclerView) d.c.c.c(view, R.id.rv_same, e.a("UQsGCA9THkEFNVUKHU0="), RecyclerView.class);
        videoDetailActivity.llSame = (LinearLayout) d.c.c.c(view, R.id.ll_same, e.a("UQsGCA9THl8fNVUKHU0="), LinearLayout.class);
        videoDetailActivity.rvGuess = (RecyclerView) d.c.c.c(view, R.id.rv_guess, e.a("UQsGCA9THkEFIUECCxlE"), RecyclerView.class);
        videoDetailActivity.llGuess = (LinearLayout) d.c.c.c(view, R.id.ll_guess, e.a("UQsGCA9THl8fIUECCxlE"), LinearLayout.class);
        videoDetailActivity.rvDownload = (RecyclerView) d.c.c.c(view, R.id.rv_download, e.a("UQsGCA9THkEFIlsQFgYMClNF"), RecyclerView.class);
        videoDetailActivity.llDownload = (LinearLayout) d.c.c.c(view, R.id.ll_download, e.a("UQsGCA9THl8fIlsQFgYMClNF"), LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VideoDetailActivity videoDetailActivity = this.b;
        if (videoDetailActivity != null) {
            this.b = null;
            videoDetailActivity.tvTitle = null;
            videoDetailActivity.ivCover = null;
            videoDetailActivity.tvPlay = null;
            videoDetailActivity.tvUid = null;
            videoDetailActivity.tvDate = null;
            videoDetailActivity.tvDuration = null;
            videoDetailActivity.tvShop = null;
            videoDetailActivity.tvPublisher = null;
            videoDetailActivity.tvScore = null;
            videoDetailActivity.tvActor = null;
            videoDetailActivity.tvTag = null;
            videoDetailActivity.rvPreview = null;
            videoDetailActivity.rlPreview = null;
            videoDetailActivity.tvMoreImg = null;
            videoDetailActivity.rvSame = null;
            videoDetailActivity.llSame = null;
            videoDetailActivity.rvGuess = null;
            videoDetailActivity.llGuess = null;
            videoDetailActivity.rvDownload = null;
            videoDetailActivity.llDownload = null;
            this.f1208c.setOnClickListener(null);
            this.f1208c = null;
            this.f1209d.setOnClickListener(null);
            this.f1209d = null;
            this.f1210e.setOnClickListener(null);
            this.f1210e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
