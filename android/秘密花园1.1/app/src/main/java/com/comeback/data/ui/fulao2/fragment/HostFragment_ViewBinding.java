package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class HostFragment_ViewBinding implements Unbinder {
    public HostFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f755c;

    /* renamed from: d  reason: collision with root package name */
    public View f756d;

    /* renamed from: e  reason: collision with root package name */
    public View f757e;

    /* renamed from: f  reason: collision with root package name */
    public View f758f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f759c;

        public a(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f759c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f759c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f760c;

        public b(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f760c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f760c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f761c;

        public c(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f761c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f761c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f762c;

        public d(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f762c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f762c.onViewClicked(view);
        }
    }

    @UiThread
    public HostFragment_ViewBinding(HostFragment hostFragment, View view) {
        this.b = hostFragment;
        hostFragment.tvHost = (TextView) d.c.c.c(view, R.id.tv_host, e.a("UQsGCA9THkcFLlsUDE0="), TextView.class);
        View b2 = d.c.c.b(view, R.id.tv_host_change, e.a("UQsGCA9THkcFLlsUDCkLClkFBkNLEldXUwtRExAFB0sQDQ0yAhZOcB8PVwwdDkQ="));
        TextView textView = (TextView) d.c.c.a(b2, R.id.tv_host_change, e.a("UQsGCA9THkcFLlsUDCkLClkFBkM="), TextView.class);
        this.f755c = b2;
        b2.setOnClickListener(new a(this, hostFragment));
        hostFragment.tvImage = (TextView) d.c.c.c(view, R.id.tv_image, e.a("UQsGCA9THkcFL1kGHw9E"), TextView.class);
        View b3 = d.c.c.b(view, R.id.tv_image_change, e.a("UQsGCA9THkcFL1kGHw8gA1YMBAFMU1hdF0ZZAgwCDA8XRQwKPRpcRDAKXQQTDwdM"));
        TextView textView2 = (TextView) d.c.c.a(b3, R.id.tv_image_change, e.a("UQsGCA9THkcFL1kGHw8gA1YMBAFM"), TextView.class);
        this.f756d = b3;
        b3.setOnClickListener(new b(this, hostFragment));
        hostFragment.tvStream = (TextView) d.c.c.c(view, R.id.tv_stream, e.a("UQsGCA9THkcFNUAVHQsOTA=="), TextView.class);
        View b4 = d.c.c.b(view, R.id.tv_stream_change, e.a("UQsGCA9THkcFNUAVHQsOKF8DDQMOVBlSHQIUCh0eCwRTQkQLBSVQVgQlWA4bAQYPEA=="));
        TextView textView3 = (TextView) d.c.c.a(b4, R.id.tv_stream_change, e.a("UQsGCA9THkcFNUAVHQsOKF8DDQMOVA=="), TextView.class);
        this.f757e = b4;
        b4.setOnClickListener(new c(this, hostFragment));
        View b5 = d.c.c.b(view, R.id.tv_refresh, e.a("UQsGCA9THkcFNFEBCg8QAxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        TextView textView4 = (TextView) d.c.c.a(b5, R.id.tv_refresh, e.a("UQsGCA9THkcFNFEBCg8QAxA="), TextView.class);
        this.f758f = b5;
        b5.setOnClickListener(new d(this, hostFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HostFragment hostFragment = this.b;
        if (hostFragment != null) {
            this.b = null;
            hostFragment.tvHost = null;
            hostFragment.tvImage = null;
            hostFragment.tvStream = null;
            this.f755c.setOnClickListener(null);
            this.f755c = null;
            this.f756d.setOnClickListener(null);
            this.f756d = null;
            this.f757e.setOnClickListener(null);
            this.f757e = null;
            this.f758f.setOnClickListener(null);
            this.f758f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
