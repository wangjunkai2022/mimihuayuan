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
    public ImageFragment f2118c;

    /* renamed from: d  reason: collision with root package name */
    public View f2119d;

    /* renamed from: e  reason: collision with root package name */
    public View f2120e;

    /* renamed from: f  reason: collision with root package name */
    public View f2121f;

    /* renamed from: g  reason: collision with root package name */
    public View f2122g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2123c;

        public a(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2123c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2123c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2124c;

        public b(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2124c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2124c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2125c;

        public c(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2125c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2125c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageFragment f2126c;

        public d(ImageFragment_ViewBinding imageFragment_ViewBinding, ImageFragment imageFragment) {
            this.f2126c = imageFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2126c.onViewClicked(view);
        }
    }

    @UiThread
    public ImageFragment_ViewBinding(ImageFragment imageFragment, View view) {
        super(imageFragment, view);
        this.f2118c = imageFragment;
        imageFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2119d = b2;
        b2.setOnClickListener(new a(this, imageFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2120e = b3;
        b3.setOnClickListener(new b(this, imageFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2121f = b4;
        b4.setOnClickListener(new c(this, imageFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2122g = b5;
        b5.setOnClickListener(new d(this, imageFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        ImageFragment imageFragment = this.f2118c;
        if (imageFragment != null) {
            this.f2118c = null;
            imageFragment.rvCategories = null;
            this.f2119d.setOnClickListener(null);
            this.f2119d = null;
            this.f2120e.setOnClickListener(null);
            this.f2120e = null;
            this.f2121f.setOnClickListener(null);
            this.f2121f = null;
            this.f2122g.setOnClickListener(null);
            this.f2122g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
