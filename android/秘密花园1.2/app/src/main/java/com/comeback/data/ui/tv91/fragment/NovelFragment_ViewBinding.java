package com.comeback.data.ui.tv91.fragment;

import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelFragment_ViewBinding implements Unbinder {
    public NovelFragment b;

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        this.b = novelFragment;
        novelFragment.webView = (WebView) c.c(view, R.id.web_view, e.a("UQsGCA9THkQWBGIOHR1E"), WebView.class);
        novelFragment.progressBar = (ProgressBar) c.c(view, R.id.progress_bar, e.a("UQsGCA9THkMBCVMVHRkQKVYQRA=="), ProgressBar.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NovelFragment novelFragment = this.b;
        if (novelFragment != null) {
            this.b = null;
            novelFragment.webView = null;
            novelFragment.progressBar = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
