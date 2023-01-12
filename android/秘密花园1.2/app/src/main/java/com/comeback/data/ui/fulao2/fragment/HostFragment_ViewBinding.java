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
    public View f828c;

    /* renamed from: d  reason: collision with root package name */
    public View f829d;

    /* renamed from: e  reason: collision with root package name */
    public View f830e;

    /* renamed from: f  reason: collision with root package name */
    public View f831f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f832c;

        public a(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f832c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f832c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f833c;

        public b(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f833c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f833c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f834c;

        public c(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f834c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f834c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ HostFragment f835c;

        public d(HostFragment_ViewBinding hostFragment_ViewBinding, HostFragment hostFragment) {
            this.f835c = hostFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f835c.onViewClicked(view);
        }
    }

    @UiThread
    public HostFragment_ViewBinding(HostFragment hostFragment, View view) {
        this.b = hostFragment;
        hostFragment.tvHost = (TextView) d.c.c.c(view, R.id.tv_host, e.a("UQsGCA9THkcFLlsUDE0="), TextView.class);
        View b2 = d.c.c.b(view, R.id.tv_host_change, e.a("UQsGCA9THkcFLlsUDCkLClkFBkNLEldXUwtRExAFB0sQDQ0yAhZOcB8PVwwdDkQ="));
        TextView textView = (TextView) d.c.c.a(b2, R.id.tv_host_change, e.a("UQsGCA9THkcFLlsUDCkLClkFBkM="), TextView.class);
        this.f828c = b2;
        b2.setOnClickListener(new a(this, hostFragment));
        hostFragment.tvImage = (TextView) d.c.c.c(view, R.id.tv_image, e.a("UQsGCA9THkcFL1kGHw9E"), TextView.class);
        View b3 = d.c.c.b(view, R.id.tv_image_change, e.a("UQsGCA9THkcFL1kGHw8gA1YMBAFMU1hdF0ZZAgwCDA8XRQwKPRpcRDAKXQQTDwdM"));
        TextView textView2 = (TextView) d.c.c.a(b3, R.id.tv_image_change, e.a("UQsGCA9THkcFL1kGHw8gA1YMBAFM"), TextView.class);
        this.f829d = b3;
        b3.setOnClickListener(new b(this, hostFragment));
        hostFragment.tvStream = (TextView) d.c.c.c(view, R.id.tv_stream, e.a("UQsGCA9THkcFNUAVHQsOTA=="), TextView.class);
        View b4 = d.c.c.b(view, R.id.tv_stream_change, e.a("UQsGCA9THkcFNUAVHQsOKF8DDQMOVBlSHQIUCh0eCwRTQkQLBSVQVgQlWA4bAQYPEA=="));
        TextView textView3 = (TextView) d.c.c.a(b4, R.id.tv_stream_change, e.a("UQsGCA9THkcFNUAVHQsOKF8DDQMOVA=="), TextView.class);
        this.f830e = b4;
        b4.setOnClickListener(new c(this, hostFragment));
        View b5 = d.c.c.b(view, R.id.tv_refresh, e.a("UQsGCA9THkcFNFEBCg8QAxBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        TextView textView4 = (TextView) d.c.c.a(b5, R.id.tv_refresh, e.a("UQsGCA9THkcFNFEBCg8QAxA="), TextView.class);
        this.f831f = b5;
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
            this.f828c.setOnClickListener(null);
            this.f828c = null;
            this.f829d.setOnClickListener(null);
            this.f829d = null;
            this.f830e.setOnClickListener(null);
            this.f830e = null;
            this.f831f.setOnClickListener(null);
            this.f831f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
