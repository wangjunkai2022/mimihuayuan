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
    public View f737c;

    /* renamed from: d  reason: collision with root package name */
    public View f738d;

    /* renamed from: e  reason: collision with root package name */
    public View f739e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f740c;

        public a(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f740c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f740c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f741c;

        public b(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f741c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f741c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DiscoverFragment f742c;

        public c(DiscoverFragment_ViewBinding discoverFragment_ViewBinding, DiscoverFragment discoverFragment) {
            this.f742c = discoverFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f742c.onClick(view);
        }
    }

    @UiThread
    public DiscoverFragment_ViewBinding(DiscoverFragment discoverFragment, View view) {
        this.b = discoverFragment;
        discoverFragment.rvRecommend = (RecyclerView) d.c.c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
        discoverFragment.rvNew = (RecyclerView) d.c.c.c(view, R.id.rv_new, e.a("UQsGCA9THkEFKFEQXw=="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f737c = b2;
        b2.setOnClickListener(new a(this, discoverFragment));
        View b3 = d.c.c.b(view, R.id.ll_recommend, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f738d = b3;
        b3.setOnClickListener(new b(this, discoverFragment));
        View b4 = d.c.c.b(view, R.id.ll_new, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f739e = b4;
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
            this.f737c.setOnClickListener(null);
            this.f737c = null;
            this.f738d.setOnClickListener(null);
            this.f738d = null;
            this.f739e.setOnClickListener(null);
            this.f739e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
