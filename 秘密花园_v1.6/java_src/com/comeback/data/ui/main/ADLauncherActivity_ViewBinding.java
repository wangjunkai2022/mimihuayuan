package com.comeback.data.ui.main;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ADLauncherActivity_ViewBinding implements Unbinder {
    public ADLauncherActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1534c;

    /* renamed from: d  reason: collision with root package name */
    public View f1535d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ADLauncherActivity f1536c;

        public a(ADLauncherActivity_ViewBinding aDLauncherActivity_ViewBinding, ADLauncherActivity aDLauncherActivity) {
            this.f1536c = aDLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1536c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ADLauncherActivity f1537c;

        public b(ADLauncherActivity_ViewBinding aDLauncherActivity_ViewBinding, ADLauncherActivity aDLauncherActivity) {
            this.f1537c = aDLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1537c.onViewClicked(view);
        }
    }

    @UiThread
    public ADLauncherActivity_ViewBinding(ADLauncherActivity aDLauncherActivity, View view) {
        this.b = aDLauncherActivity;
        View b2 = c.b(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        aDLauncherActivity.ivCover = (ImageView) c.a(b2, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        this.f1534c = b2;
        b2.setOnClickListener(new a(this, aDLauncherActivity));
        View b3 = c.b(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5ES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        aDLauncherActivity.tvCount = (TextView) c.a(b3, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        this.f1535d = b3;
        b3.setOnClickListener(new b(this, aDLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ADLauncherActivity aDLauncherActivity = this.b;
        if (aDLauncherActivity != null) {
            this.b = null;
            aDLauncherActivity.ivCover = null;
            aDLauncherActivity.tvCount = null;
            this.f1534c.setOnClickListener(null);
            this.f1534c = null;
            this.f1535d.setOnClickListener(null);
            this.f1535d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
