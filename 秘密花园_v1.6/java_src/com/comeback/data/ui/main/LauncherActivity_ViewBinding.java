package com.comeback.data.ui.main;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class LauncherActivity_ViewBinding implements Unbinder {
    public LauncherActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1559c;

    /* renamed from: d  reason: collision with root package name */
    public View f1560d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ LauncherActivity f1561c;

        public a(LauncherActivity_ViewBinding launcherActivity_ViewBinding, LauncherActivity launcherActivity) {
            this.f1561c = launcherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1561c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ LauncherActivity f1562c;

        public b(LauncherActivity_ViewBinding launcherActivity_ViewBinding, LauncherActivity launcherActivity) {
            this.f1562c = launcherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1562c.onViewClicked(view);
        }
    }

    @UiThread
    public LauncherActivity_ViewBinding(LauncherActivity launcherActivity, View view) {
        this.b = launcherActivity;
        launcherActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        launcherActivity.tvName1 = (TextView) c.c(view, R.id.tv_name1, e.a("UQsGCA9THkcFKFUKHVtE"), TextView.class);
        View b2 = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        launcherActivity.ivCover = (ImageView) c.a(b2, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        this.f1559c = b2;
        b2.setOnClickListener(new a(this, launcherActivity));
        View b3 = c.b(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5ES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        launcherActivity.tvCount = (TextView) c.a(b3, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        this.f1560d = b3;
        b3.setOnClickListener(new b(this, launcherActivity));
        launcherActivity.flAd = (FrameLayout) c.c(view, R.id.fl_ad, e.a("UQsGCA9THlUfJ1BA"), FrameLayout.class);
        launcherActivity.llLogo = (LinearLayout) c.c(view, R.id.ll_logo, e.a("UQsGCA9THl8fKlsAF00="), LinearLayout.class);
        launcherActivity.flProgress = (FrameLayout) c.c(view, R.id.fl_progress, e.a("UQsGCA9THlUfNkYIHxgGGERF"), FrameLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        LauncherActivity launcherActivity = this.b;
        if (launcherActivity != null) {
            this.b = null;
            launcherActivity.tvName = null;
            launcherActivity.tvName1 = null;
            launcherActivity.ivCover = null;
            launcherActivity.tvCount = null;
            launcherActivity.flAd = null;
            launcherActivity.llLogo = null;
            launcherActivity.flProgress = null;
            this.f1559c.setOnClickListener(null);
            this.f1559c = null;
            this.f1560d.setOnClickListener(null);
            this.f1560d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
