package com.comeback.data.ui.movieCloud;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoSearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VideoSearchActivity f1816c;

    @UiThread
    public VideoSearchActivity_ViewBinding(VideoSearchActivity videoSearchActivity, View view) {
        super(videoSearchActivity, view);
        this.f1816c = videoSearchActivity;
        videoSearchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        videoSearchActivity.rvHot = (RecyclerView) c.c(view, R.id.rv_hot, e.a("UQsGCA9THkEFLlsTXw=="), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VideoSearchActivity videoSearchActivity = this.f1816c;
        if (videoSearchActivity != null) {
            this.f1816c = null;
            videoSearchActivity.etSearch = null;
            videoSearchActivity.rvHot = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
