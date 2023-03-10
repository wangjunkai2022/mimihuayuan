package com.comeback.data.ui.lutube;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoListActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoListActivity f1486c;

    @UiThread
    public VideoListActivity_ViewBinding(VideoListActivity videoListActivity, View view) {
        super(videoListActivity, view);
        this.f1486c = videoListActivity;
        videoListActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoListActivity videoListActivity = this.f1486c;
        if (videoListActivity != null) {
            this.f1486c = null;
            videoListActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
