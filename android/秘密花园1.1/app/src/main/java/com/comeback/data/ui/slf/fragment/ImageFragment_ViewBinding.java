package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class ImageFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ImageFragment f2039c;

    /* renamed from: d  reason: collision with root package name */
    public View f2040d;

    /* renamed from: e  reason: collision with root package name */
    public View f2041e;

    /* renamed from: f  reason: collision with root package name */
    public View f2042f;

    /* renamed from: g  reason: collision with root package name */
    public View f2043g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2044c;

        public a(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2044c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2044c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2045c;

        public b(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2045c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2045c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2046c;

        public c(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2046c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2046c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2047c;

        public d(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2047c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2047c.onViewClicked(view);
        }
    }

    @UiThread
    public ImageFragment_ViewBinding(ImageFragment imageFragment, View view) {
        super(imageFragment, view);
        this.f2039c = imageFragment;
        imageFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2040d = b2;
        b2.setOnClickListener(new a(this, imageFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2041e = b3;
        b3.setOnClickListener(new b(this, imageFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2042f = b4;
        b4.setOnClickListener(new c(this, imageFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2043g = b5;
        b5.setOnClickListener(new d(this, imageFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        ImageFragment imageFragment = this.f2039c;
        if (imageFragment != null) {
            this.f2039c = null;
            imageFragment.rvCategories = null;
            this.f2040d.setOnClickListener(null);
            this.f2040d = null;
            this.f2041e.setOnClickListener(null);
            this.f2041e = null;
            this.f2042f.setOnClickListener(null);
            this.f2042f = null;
            this.f2043g.setOnClickListener(null);
            this.f2043g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
