package com.comeback.data.ui.km;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoPlayActivity_ViewBinding implements Unbinder {
    public VideoPlayActivity b;

    @UiThread
    public VideoPlayActivity_ViewBinding(VideoPlayActivity videoPlayActivity, View view) {
        this.b = videoPlayActivity;
        videoPlayActivity.videoDetailCancelTv = (TextView) c.c(view, R.id.video_detail_cancel_tv, e.a("UQsGCA9THkUaAlEIPA8XCl4OIAUFEFxfJxAT"), TextView.class);
        videoPlayActivity.videoDetailLikeImg = (ImageView) c.c(view, R.id.video_detail_like_img, e.a("UQsGCA9THkUaAlEIPA8XCl4OLw0AFnBeFEE="), ImageView.class);
        videoPlayActivity.videoDetailShareImg = (ImageView) c.c(view, R.id.video_detail_share_img, e.a("UQsGCA9THkUaAlEIPA8XCl4OMAwKAVx6HgET"), ImageView.class);
        videoPlayActivity.videoDetailColletionImg = (ImageView) c.c(view, R.id.video_detail_colletion_img, e.a("UQsGCA9THkUaAlEIPA8XCl4OIAsHH1xHGglaLhUNRA=="), ImageView.class);
        TextView textView = (TextView) c.c(view, R.id.video_detail_like_tv, e.a("UQsGCA9THkUaAlEIPA8XCl4OLw0AFm1FVA=="), TextView.class);
        videoPlayActivity.videoDetailAvatarCiv = (ImageView) c.c(view, R.id.video_detail_avatar_civ, e.a("UQsGCA9THkUaAlEIPA8XCl4OIhIKB1hBMA9CQA=="), ImageView.class);
        videoPlayActivity.videoDetailLikeAvatarRootLl = (LinearLayout) c.c(view, R.id.video_detail_like_avatar_root_ll, e.a("UQsGCA9THkUaAlEIPA8XCl4OLw0AFnhFEhJVFSoFDB97DkQ="), LinearLayout.class);
        videoPlayActivity.videoView = (VideoPlayerView) c.c(view, R.id.video_view, e.a("UQsGCA9THkUaAlEILgMGHBA="), VideoPlayerView.class);
        videoPlayActivity.videoDetailHeadRl = (RelativeLayout) c.c(view, R.id.video_detail_head_rl, e.a("UQsGCA9THkUaAlEIPA8XCl4OKwEKF2tfVA=="), RelativeLayout.class);
        videoPlayActivity.llHead = (LinearLayout) c.c(view, R.id.ll_head, e.a("UQsGCA9THl8fLlEGHE0="), LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VideoPlayActivity videoPlayActivity = this.b;
        if (videoPlayActivity != null) {
            this.b = null;
            videoPlayActivity.videoDetailCancelTv = null;
            videoPlayActivity.videoDetailLikeImg = null;
            videoPlayActivity.videoDetailShareImg = null;
            videoPlayActivity.videoDetailColletionImg = null;
            videoPlayActivity.videoDetailAvatarCiv = null;
            videoPlayActivity.videoDetailLikeAvatarRootLl = null;
            videoPlayActivity.videoView = null;
            videoPlayActivity.videoDetailHeadRl = null;
            videoPlayActivity.llHead = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
