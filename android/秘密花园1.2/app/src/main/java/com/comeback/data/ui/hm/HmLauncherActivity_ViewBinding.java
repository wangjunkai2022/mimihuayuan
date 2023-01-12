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
    public View f1112c;

    /* renamed from: d  reason: collision with root package name */
    public View f1113d;

    /* renamed from: e  reason: collision with root package name */
    public View f1114e;

    /* renamed from: f  reason: collision with root package name */
    public View f1115f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1116c;

        public a(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1116c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1116c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1117c;

        public b(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1117c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1117c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1118c;

        public c(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1118c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1118c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HmLauncherActivity f1119c;

        public d(HmLauncherActivity_ViewBinding hmLauncherActivity_ViewBinding, HmLauncherActivity hmLauncherActivity) {
            this.f1119c = hmLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1119c.onClick(view);
        }
    }

    @UiThread
    public HmLauncherActivity_ViewBinding(HmLauncherActivity hmLauncherActivity, View view) {
        this.b = hmLauncherActivity;
        hmLauncherActivity.flLoad = (FrameLayout) d.c.c.c(view, R.id.fl_load, e.a("UQsGCA9THlUfKlsGHE0="), FrameLayout.class);
        View b2 = d.c.c.b(view, R.id.tv_hm1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1112c = b2;
        b2.setOnClickListener(new a(this, hmLauncherActivity));
        View b3 = d.c.c.b(view, R.id.tv_hm2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1113d = b3;
        b3.setOnClickListener(new b(this, hmLauncherActivity));
        View b4 = d.c.c.b(view, R.id.tv_novel1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1114e = b4;
        b4.setOnClickListener(new c(this, hmLauncherActivity));
        View b5 = d.c.c.b(view, R.id.tv_novel2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1115f = b5;
        b5.setOnClickListener(new d(this, hmLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HmLauncherActivity hmLauncherActivity = this.b;
        if (hmLauncherActivity != null) {
            this.b = null;
            hmLauncherActivity.flLoad = null;
            this.f1112c.setOnClickListener(null);
            this.f1112c = null;
            this.f1113d.setOnClickListener(null);
            this.f1113d = null;
            this.f1114e.setOnClickListener(null);
            this.f1114e = null;
            this.f1115f.setOnClickListener(null);
            this.f1115f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
