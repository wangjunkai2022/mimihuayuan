package com.comeback.data.ui.jhlf;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.wang.avi.AVLoadingIndicatorView;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class JHLFActivity_ViewBinding implements Unbinder {
    public JHLFActivity b;

    @UiThread
    public JHLFActivity_ViewBinding(JHLFActivity jHLFActivity, View view) {
        this.b = jHLFActivity;
        jHLFActivity.loading = (AVLoadingIndicatorView) c.c(view, R.id.loading, e.a("UQsGCA9THl8cB1AOFg1E"), AVLoadingIndicatorView.class);
        jHLFActivity.flProgress = (FrameLayout) c.c(view, R.id.fl_progress, e.a("UQsGCA9THlUfNkYIHxgGGERF"), FrameLayout.class);
        jHLFActivity.rvAd = (RecyclerView) c.c(view, R.id.rv_ad, e.a("UQsGCA9THkEFJ1BA"), RecyclerView.class);
        jHLFActivity.rvList = (RecyclerView) c.c(view, R.id.rv_List, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        jHLFActivity.tv_title = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFOUAODAYGTA=="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        JHLFActivity jHLFActivity = this.b;
        if (jHLFActivity != null) {
            this.b = null;
            jHLFActivity.loading = null;
            jHLFActivity.flProgress = null;
            jHLFActivity.rvAd = null;
            jHLFActivity.rvList = null;
            jHLFActivity.tv_title = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
