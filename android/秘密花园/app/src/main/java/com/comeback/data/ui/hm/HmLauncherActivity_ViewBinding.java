package com.comeback.data.ui.hm;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class HmLauncherActivity_ViewBinding implements Unbinder {
    public HmLauncherActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1039c;

    /* renamed from: d  reason: collision with root package name */
    public View f1040d;

    /* renamed from: e  reason: collision with root package name */
    public View f1041e;

    /* renamed from: f  reason: collision with root package name */
    public View f1042f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1043c;

        public a(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1043c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1043c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1044c;

        public b(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1044c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1044c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1045c;

        public c(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1045c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1045c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1046c;

        public d(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1046c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1046c.onClick(view);
        }
    }

    @UiThread
    public HmLauncherActivity_ViewBinding(HmLauncherActivity hmLauncherActivity, View view) {
        this.b = hmLauncherActivity;
        hmLauncherActivity.flLoad = (FrameLayout) d.c.c.c(view, R.id.fl_load, e.a("UQsGCA9THlUfKlsGHE0="), FrameLayout.class);
        View b2 = d.c.c.b(view, R.id.tv_hm1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1039c = b2;
        b2.setOnClickListener(new a(this, hmLauncherActivity));
        View b3 = d.c.c.b(view, R.id.tv_hm2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1040d = b3;
        b3.setOnClickListener(new b(this, hmLauncherActivity));
        View b4 = d.c.c.b(view, R.id.tv_novel1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1041e = b4;
        b4.setOnClickListener(new c(this, hmLauncherActivity));
        View b5 = d.c.c.b(view, R.id.tv_novel2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1042f = b5;
        b5.setOnClickListener(new d(this, hmLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HmLauncherActivity hmLauncherActivity = this.b;
        if (hmLauncherActivity != null) {
            this.b = null;
            hmLauncherActivity.flLoad = null;
            this.f1039c.setOnClickListener(null);
            this.f1039c = null;
            this.f1040d.setOnClickListener(null);
            this.f1040d = null;
            this.f1041e.setOnClickListener(null);
            this.f1041e = null;
            this.f1042f.setOnClickListener(null);
            this.f1042f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
