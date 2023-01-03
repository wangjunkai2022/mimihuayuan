package com.comeback.data.ui.slf.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public NovelFragment f2051c;

    /* renamed from: d  reason: collision with root package name */
    public View f2052d;

    /* renamed from: e  reason: collision with root package name */
    public View f2053e;

    /* renamed from: f  reason: collision with root package name */
    public View f2054f;

    /* renamed from: g  reason: collision with root package name */
    public View f2055g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2056c;

        public a(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2056c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2056c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2057c;

        public b(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2057c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2057c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2058c;

        public c(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2058c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2058c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2059c;

        public d(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2059c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2059c.onViewClicked(view);
        }
    }

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        super(novelFragment, view);
        this.f2051c = novelFragment;
        novelFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2052d = b2;
        b2.setOnClickListener(new a(this, novelFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2053e = b3;
        b3.setOnClickListener(new b(this, novelFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2054f = b4;
        b4.setOnClickListener(new c(this, novelFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2055g = b5;
        b5.setOnClickListener(new d(this, novelFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        NovelFragment novelFragment = this.f2051c;
        if (novelFragment != null) {
            this.f2051c = null;
            novelFragment.rvCategories = null;
            this.f2052d.setOnClickListener(null);
            this.f2052d = null;
            this.f2053e.setOnClickListener(null);
            this.f2053e = null;
            this.f2054f.setOnClickListener(null);
            this.f2054f = null;
            this.f2055g.setOnClickListener(null);
            this.f2055g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
