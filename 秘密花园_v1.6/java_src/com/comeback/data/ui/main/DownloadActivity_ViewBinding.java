package com.comeback.data.ui.main;

import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.App;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class DownloadActivity_ViewBinding implements Unbinder {
    public DownloadActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1548c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DownloadActivity f1549c;

        public a(DownloadActivity_ViewBinding downloadActivity_ViewBinding, DownloadActivity downloadActivity) {
            this.f1549c = downloadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            DownloadActivity downloadActivity = this.f1549c;
            if (downloadActivity != null) {
                f.e.a.h.a aVar = App.b.a;
                if (aVar != null) {
                    aVar.a = null;
                    aVar.d();
                    downloadActivity.rlDown.setVisibility(8);
                    App.b.a = null;
                    return;
                }
                return;
            }
            throw null;
        }
    }

    @UiThread
    public DownloadActivity_ViewBinding(DownloadActivity downloadActivity, View view) {
        this.b = downloadActivity;
        downloadActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        downloadActivity.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
        downloadActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        downloadActivity.tvSpeed = (TextView) c.c(view, R.id.tv_speed, e.a("UQsGCA9THkcFNUQCHQ5E"), TextView.class);
        downloadActivity.progress = (ProgressBar) c.c(view, R.id.progress, e.a("UQsGCA9THkMBCVMVHRkQTA=="), ProgressBar.class);
        downloadActivity.rlDown = (RelativeLayout) c.c(view, R.id.rl_down, e.a("UQsGCA9THkEfIlsQFk0="), RelativeLayout.class);
        View b = c.b(view, R.id.iv_pause, e.a("WgcXDAQXGRQDB0EUHU0="));
        this.f1548c = b;
        b.setOnClickListener(new a(this, downloadActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DownloadActivity downloadActivity = this.b;
        if (downloadActivity != null) {
            this.b = null;
            downloadActivity.rvList = null;
            downloadActivity.tvHint = null;
            downloadActivity.tvName = null;
            downloadActivity.tvSpeed = null;
            downloadActivity.progress = null;
            downloadActivity.rlDown = null;
            this.f1548c.setOnClickListener(null);
            this.f1548c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
