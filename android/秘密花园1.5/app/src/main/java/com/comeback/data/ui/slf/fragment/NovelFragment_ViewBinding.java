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
    public NovelFragment f2126c;

    /* renamed from: d  reason: collision with root package name */
    public View f2127d;

    /* renamed from: e  reason: collision with root package name */
    public View f2128e;

    /* renamed from: f  reason: collision with root package name */
    public View f2129f;

    /* renamed from: g  reason: collision with root package name */
    public View f2130g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2131c;

        public a(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2131c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2131c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2132c;

        public b(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2132c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2132c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2133c;

        public c(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2133c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2133c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2134c;

        public d(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2134c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2134c.onViewClicked(view);
        }
    }

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        super(novelFragment, view);
        this.f2126c = novelFragment;
        novelFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2127d = b2;
        b2.setOnClickListener(new a(this, novelFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2128e = b3;
        b3.setOnClickListener(new b(this, novelFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2129f = b4;
        b4.setOnClickListener(new c(this, novelFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2130g = b5;
        b5.setOnClickListener(new d(this, novelFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        NovelFragment novelFragment = this.f2126c;
        if (novelFragment != null) {
            this.f2126c = null;
            novelFragment.rvCategories = null;
            this.f2127d.setOnClickListener(null);
            this.f2127d = null;
            this.f2128e.setOnClickListener(null);
            this.f2128e = null;
            this.f2129f.setOnClickListener(null);
            this.f2129f = null;
            this.f2130g.setOnClickListener(null);
            this.f2130g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
