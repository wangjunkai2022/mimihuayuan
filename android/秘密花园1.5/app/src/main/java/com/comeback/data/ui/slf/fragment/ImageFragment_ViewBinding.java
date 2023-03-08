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
    public ImageFragment f2114c;

    /* renamed from: d  reason: collision with root package name */
    public View f2115d;

    /* renamed from: e  reason: collision with root package name */
    public View f2116e;

    /* renamed from: f  reason: collision with root package name */
    public View f2117f;

    /* renamed from: g  reason: collision with root package name */
    public View f2118g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2119c;

        public a(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2119c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2119c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2120c;

        public b(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2120c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2120c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2121c;

        public c(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2121c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2121c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2122c;

        public d(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2122c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2122c.onViewClicked(view);
        }
    }

    @UiThread
    public ImageFragment_ViewBinding(ImageFragment imageFragment, View view) {
        super(imageFragment, view);
        this.f2114c = imageFragment;
        imageFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2115d = b2;
        b2.setOnClickListener(new a(this, imageFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2116e = b3;
        b3.setOnClickListener(new b(this, imageFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2117f = b4;
        b4.setOnClickListener(new c(this, imageFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2118g = b5;
        b5.setOnClickListener(new d(this, imageFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        ImageFragment imageFragment = this.f2114c;
        if (imageFragment != null) {
            this.f2114c = null;
            imageFragment.rvCategories = null;
            this.f2115d.setOnClickListener(null);
            this.f2115d = null;
            this.f2116e.setOnClickListener(null);
            this.f2116e = null;
            this.f2117f.setOnClickListener(null);
            this.f2117f = null;
            this.f2118g.setOnClickListener(null);
            this.f2118g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
