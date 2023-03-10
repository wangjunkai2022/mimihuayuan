package com.comeback.data.ui.dn;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class VideoListActivity_ViewBinding implements Unbinder {
    public VideoListActivity b;

    @UiThread
    public VideoListActivity_ViewBinding(VideoListActivity videoListActivity, View view) {
        this.b = videoListActivity;
        videoListActivity.mRvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hEHgOCx5E"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VideoListActivity videoListActivity = this.b;
        if (videoListActivity != null) {
            this.b = null;
            videoListActivity.mRvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
