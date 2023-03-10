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
    public NovelFragment f2130c;

    /* renamed from: d  reason: collision with root package name */
    public View f2131d;

    /* renamed from: e  reason: collision with root package name */
    public View f2132e;

    /* renamed from: f  reason: collision with root package name */
    public View f2133f;

    /* renamed from: g  reason: collision with root package name */
    public View f2134g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2135c;

        public a(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2135c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2135c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2136c;

        public b(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2136c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2136c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2137c;

        public c(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2137c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2137c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f2138c;

        public d(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f2138c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2138c.onViewClicked(view);
        }
    }

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        super(novelFragment, view);
        this.f2130c = novelFragment;
        novelFragment.rvCategories = (RecyclerView) d.c.c.c(view, R.id.rv_categories, e.a("UQsGCA9THkEFJVUTHQ0MGV4HEEM="), RecyclerView.class);
        View b2 = d.c.c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2131d = b2;
        b2.setOnClickListener(new a(this, novelFragment));
        View b3 = d.c.c.b(view, R.id.iv_history, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2132e = b3;
        b3.setOnClickListener(new b(this, novelFragment));
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2133f = b4;
        b4.setOnClickListener(new c(this, novelFragment));
        View b5 = d.c.c.b(view, R.id.iv_screen, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2134g = b5;
        b5.setOnClickListener(new d(this, novelFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        NovelFragment novelFragment = this.f2130c;
        if (novelFragment != null) {
            this.f2130c = null;
            novelFragment.rvCategories = null;
            this.f2131d.setOnClickListener(null);
            this.f2131d = null;
            this.f2132e.setOnClickListener(null);
            this.f2132e = null;
            this.f2133f.setOnClickListener(null);
            this.f2133f = null;
            this.f2134g.setOnClickListener(null);
            this.f2134g = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
