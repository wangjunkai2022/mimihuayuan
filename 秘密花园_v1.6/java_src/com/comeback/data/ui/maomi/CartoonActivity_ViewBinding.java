package com.comeback.data.ui.maomi;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class CartoonActivity_ViewBinding implements Unbinder {
    public CartoonActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1592c;

    /* renamed from: d  reason: collision with root package name */
    public View f1593d;

    /* renamed from: e  reason: collision with root package name */
    public View f1594e;

    /* renamed from: f  reason: collision with root package name */
    public View f1595f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonActivity f1596c;

        public a(CartoonActivity_ViewBinding cartoonActivity_ViewBinding, CartoonActivity cartoonActivity) {
            this.f1596c = cartoonActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1596c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonActivity f1597c;

        public b(CartoonActivity_ViewBinding cartoonActivity_ViewBinding, CartoonActivity cartoonActivity) {
            this.f1597c = cartoonActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1597c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonActivity f1598c;

        public c(CartoonActivity_ViewBinding cartoonActivity_ViewBinding, CartoonActivity cartoonActivity) {
            this.f1598c = cartoonActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1598c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CartoonActivity f1599c;

        public d(CartoonActivity_ViewBinding cartoonActivity_ViewBinding, CartoonActivity cartoonActivity) {
            this.f1599c = cartoonActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1599c.onViewClicked(view);
        }
    }

    @UiThread
    public CartoonActivity_ViewBinding(CartoonActivity cartoonActivity, View view) {
        this.b = cartoonActivity;
        cartoonActivity.mRvHot = (RecyclerView) d.c.c.c(view, R.id.rv_hot, e.a("UQsGCA9THl4hEHwIDE0="), RecyclerView.class);
        cartoonActivity.mRvNew = (RecyclerView) d.c.c.c(view, R.id.rv_new, e.a("UQsGCA9THl4hEHoCD00="), RecyclerView.class);
        cartoonActivity.mRvRecommend = (RecyclerView) d.c.c.c(view, R.id.rv_recommend, e.a("UQsGCA9THl4hEGYCGwUOBlIMB0M="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.fl_recommend, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1592c = b2;
        b2.setOnClickListener(new a(this, cartoonActivity));
        View b3 = d.c.c.b(view, R.id.fl_new, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1593d = b3;
        b3.setOnClickListener(new b(this, cartoonActivity));
        View b4 = d.c.c.b(view, R.id.fl_hot, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1594e = b4;
        b4.setOnClickListener(new c(this, cartoonActivity));
        View b5 = d.c.c.b(view, R.id.tv_all, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1595f = b5;
        b5.setOnClickListener(new d(this, cartoonActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CartoonActivity cartoonActivity = this.b;
        if (cartoonActivity != null) {
            this.b = null;
            cartoonActivity.mRvHot = null;
            cartoonActivity.mRvNew = null;
            cartoonActivity.mRvRecommend = null;
            this.f1592c.setOnClickListener(null);
            this.f1592c = null;
            this.f1593d.setOnClickListener(null);
            this.f1593d = null;
            this.f1594e.setOnClickListener(null);
            this.f1594e = null;
            this.f1595f.setOnClickListener(null);
            this.f1595f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
