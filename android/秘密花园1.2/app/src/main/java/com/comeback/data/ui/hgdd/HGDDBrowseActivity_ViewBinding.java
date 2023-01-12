package com.comeback.data.ui.hgdd;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.b;
import f.e.a.e;
import f.e.a.j.p.d.c;

/* loaded from: classes.dex */
public class HGDDBrowseActivity_ViewBinding implements Unbinder {
    public HGDDBrowseActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1087c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HGDDBrowseActivity f1088c;

        public a(HGDDBrowseActivity_ViewBinding hGDDBrowseActivity_ViewBinding, HGDDBrowseActivity hGDDBrowseActivity) {
            this.f1088c = hGDDBrowseActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            f.e.a.j.p.d.a aVar;
            HGDDBrowseActivity hGDDBrowseActivity = this.f1088c;
            String url = hGDDBrowseActivity.webView.getUrl();
            if (url.contains(e.a("URI8DQ8="))) {
                String str = url.split(e.a("URI8DQ9O"))[1];
                if (str.contains(e.a("EQ=="))) {
                    str = str.split(e.a("EQ=="))[0];
                }
                hGDDBrowseActivity.flProgress.setVisibility(0);
                synchronized (c.class) {
                    if (c.b == null) {
                        c.b = new c();
                    }
                    aVar = c.b.a;
                }
                hGDDBrowseActivity.k(aVar.a(str), new f.e.a.j.p.b(hGDDBrowseActivity));
                return;
            }
            h.n1(e.a("3+zUgeTl3pPHjpPEnNXCjbbNhsDam42W"));
        }
    }

    @UiThread
    public HGDDBrowseActivity_ViewBinding(HGDDBrowseActivity hGDDBrowseActivity, View view) {
        this.b = hGDDBrowseActivity;
        hGDDBrowseActivity.webView = (WebView) d.c.c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        hGDDBrowseActivity.progressBar = (ProgressBar) d.c.c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
        View b = d.c.c.b(view, R.id.fl_show, e.a("UQsGCA9THlUfNVwID01DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
        hGDDBrowseActivity.flShow = (FrameLayout) d.c.c.a(b, R.id.fl_show, e.a("UQsGCA9THlUfNVwID00="), FrameLayout.class);
        this.f1087c = b;
        b.setOnClickListener(new a(this, hGDDBrowseActivity));
        hGDDBrowseActivity.flProgress = (FrameLayout) d.c.c.c(view, R.id.fl_progress, e.a("UQsGCA9THlUfNkYIHxgGGERF"), FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HGDDBrowseActivity hGDDBrowseActivity = this.b;
        if (hGDDBrowseActivity != null) {
            this.b = null;
            hGDDBrowseActivity.webView = null;
            hGDDBrowseActivity.progressBar = null;
            hGDDBrowseActivity.flShow = null;
            hGDDBrowseActivity.flProgress = null;
            this.f1087c.setOnClickListener(null);
            this.f1087c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
