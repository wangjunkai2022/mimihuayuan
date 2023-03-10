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
    public View f1695c;

    /* renamed from: d  reason: collision with root package name */
    public View f1696d;

    /* renamed from: e  reason: collision with root package name */
    public View f1697e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1698c;

        public a(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1698c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1698c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1699c;

        public b(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1699c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1699c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f1700c;

        public c(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f1700c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1700c.onViewClicked(view);
        }
    }

    @UiThread
    public DiscoverFragment_ViewBinding(DiscoverFragment discoverFragment, View view) {
        this.b = discoverFragment;
        discoverFragment.rvList = (RecyclerView) d.c.c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.ll_read, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1695c = b2;
        b2.setOnClickListener(new a(this, discoverFragment));
        View b3 = d.c.c.b(view, R.id.ll_listener, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1696d = b3;
        b3.setOnClickListener(new b(this, discoverFragment));
        View b4 = d.c.c.b(view, R.id.ll_more, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1697e = b4;
        b4.setOnClickListener(new c(this, discoverFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DiscoverFragment discoverFragment = this.b;
        if (discoverFragment != null) {
            this.b = null;
            discoverFragment.rvList = null;
            this.f1695c.setOnClickListener(null);
            this.f1695c = null;
            this.f1696d.setOnClickListener(null);
            this.f1696d = null;
            this.f1697e.setOnClickListener(null);
            this.f1697e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
