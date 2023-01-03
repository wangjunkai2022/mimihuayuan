package com.comeback.data.ui.jhlf;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class DownloadActivity_ViewBinding implements Unbinder {
    public DownloadActivity b;

    @UiThread
    public DownloadActivity_ViewBinding(DownloadActivity downloadActivity, View view) {
        this.b = downloadActivity;
        downloadActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DownloadActivity downloadActivity = this.b;
        if (downloadActivity != null) {
            this.b = null;
            downloadActivity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
