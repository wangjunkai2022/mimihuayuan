package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class CartoonFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public CartoonFragment f2027c;

    /* renamed from: d  reason: collision with root package name */
    public View f2028d;

    /* renamed from: e  reason: collision with root package name */
    public View f2029e;

    /* renamed from: f  reason: collision with root package name */
    public View f2030f;

    /* renamed from: g  reason: collision with root package name */
    public View f2031g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonFragment f2032c;

        public a(CartoonFragment_ViewBinding cartoonFragment_ViewBinding, CartoonFragment cartoonFragment) {
            this.f2032c = cartoonFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2032c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonFragment f2033c;

        public b(CartoonFragment_ViewBinding cartoonFragment_ViewBinding, CartoonFragment cartoonFragment) {
            this.f2033c = cartoonFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2033c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonFragment f2034c;

        public c(CartoonFragment_ViewBinding cartoonFragment_ViewBinding, CartoonFragment cartoonFragment) {
            this.f2034c = cartoonFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2034c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonFragment f2035c;

        public d(CartoonFragment_ViewBinding cartoonFragment_ViewBinding, CartoonFragment cartoonFragment) {
            this.f2035c = cartoonFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2035c.onViewClicked(view);
        }
    }

    @UiThread
    public CartoonFragment_ViewBinding(CartoonFragment cartoonFragment, View view) {
        super(cartoonFragment, view);
        this.f2027c = cartoonFragment;
        cartoonFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2028d = b2;
        b2.setOnClickListener(new a(this, cartoonFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2029e = b3;
        b3.setOnClickListener(new b(this, cartoonFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2030f = b4;
        b4.setOnClickListener(new c(this, cartoonFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2031g = b5;
        b5.setOnClickListener(new d(this, cartoonFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        CartoonFragment cartoonFragment = this.f2027c;
        if (cartoonFragment != null) {
            this.f2027c = null;
            cartoonFragment.rvCategories = null;
            this.f2028d.setOnClickListener(null);
            this.f2028d = null;
            this.f2029e.setOnClickListener(null);
            this.f2029e = null;
            this.f2030f.setOnClickListener(null);
            this.f2030f = null;
            this.f2031g.setOnClickListener(null);
            this.f2031g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
