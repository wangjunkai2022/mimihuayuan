package com.comeback.data.ui.gdian.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.data.ui.gdian.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class NovelFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public NovelFragment f907c;

    /* renamed from: d  reason: collision with root package name */
    public View f908d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f909c;

        public a(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f909c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.m(this.f909c.getContext());
        }
    }

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        super(novelFragment, view);
        this.f907c = novelFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f908d = b;
        b.setOnClickListener(new a(this, novelFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f907c != null) {
            this.f907c = null;
            this.f908d.setOnClickListener(null);
            this.f908d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
