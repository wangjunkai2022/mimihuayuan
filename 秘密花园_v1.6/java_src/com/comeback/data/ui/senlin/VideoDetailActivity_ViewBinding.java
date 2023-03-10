package com.comeback.data.ui.senlin;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoDetailActivity f1904c;

    @UiThread
    public VideoDetailActivity_ViewBinding(VideoDetailActivity videoDetailActivity, View view) {
        super(videoDetailActivity, view);
        this.f1904c = videoDetailActivity;
        videoDetailActivity.mIvBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THl46EHYAXw=="), ImageView.class);
        videoDetailActivity.mTvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THl4nEHACDAsKBxA="), TextView.class);
        videoDetailActivity.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoDetailActivity videoDetailActivity = this.f1904c;
        if (videoDetailActivity != null) {
            this.f1904c = null;
            videoDetailActivity.mIvBg = null;
            videoDetailActivity.mTvDetail = null;
            videoDetailActivity.mTvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
