package com.comeback.data.ui.maomi.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class DiscoverFragment_ViewBinding implements Unbinder {
    public DiscoverFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f1691c;

    /* renamed from: d  reason: collision with root package name */
    public View f1692d;

    /* renamed from: e  reason: collision with root package name */
    public View f1693e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1694c;

        public a(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1694c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1694c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1695c;

        public b(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1695c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1695c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1696c;

        public c(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1696c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1696c.onViewClicked(view);
        }
    }

    @UiThread
    public DiscoverFragment_ViewBinding(DiscoverFragment discoverFragment, View view) {
        this.b = discoverFragment;
        discoverFragment.rvList = (RecyclerView) d.c.c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.ll_read, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1691c = b2;
        b2.setOnClickListener(new a(this, discoverFragment));
        View b3 = d.c.c.b(view, R.id.ll_listener, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1692d = b3;
        b3.setOnClickListener(new b(this, discoverFragment));
        View b4 = d.c.c.b(view, R.id.ll_more, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1693e = b4;
        b4.setOnClickListener(new c(this, discoverFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DiscoverFragment discoverFragment = this.b;
        if (discoverFragment != null) {
            this.b = null;
            discoverFragment.rvList = null;
            this.f1691c.setOnClickListener(null);
            this.f1691c = null;
            this.f1692d.setOnClickListener(null);
            this.f1692d = null;
            this.f1693e.setOnClickListener(null);
            this.f1693e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
