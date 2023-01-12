package com.comeback.data.ui.fruitPie.fragment;

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
    public View f733c;

    /* renamed from: d  reason: collision with root package name */
    public View f734d;

    /* renamed from: e  reason: collision with root package name */
    public View f735e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f736c;

        public a(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f736c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f736c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f737c;

        public b(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f737c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f737c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f738c;

        public c(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f738c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f738c.onClick(view);
        }
    }

    @UiThread
    public DiscoverFragment_ViewBinding(DiscoverFragment discoverFragment, View view) {
        this.b = discoverFragment;
        discoverFragment.rvRecommend = (RecyclerView) d.c.c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
        discoverFragment.rvNew = (RecyclerView) d.c.c.c(view, R.id.rv_new, e.a("UQsGCA9THkEFKFEQXw=="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f733c = b2;
        b2.setOnClickListener(new a(this, discoverFragment));
        View b3 = d.c.c.b(view, R.id.ll_recommend, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f734d = b3;
        b3.setOnClickListener(new b(this, discoverFragment));
        View b4 = d.c.c.b(view, R.id.ll_new, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f735e = b4;
        b4.setOnClickListener(new c(this, discoverFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DiscoverFragment discoverFragment = this.b;
        if (discoverFragment != null) {
            this.b = null;
            discoverFragment.rvRecommend = null;
            discoverFragment.rvNew = null;
            this.f733c.setOnClickListener(null);
            this.f733c = null;
            this.f734d.setOnClickListener(null);
            this.f734d = null;
            this.f735e.setOnClickListener(null);
            this.f735e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
