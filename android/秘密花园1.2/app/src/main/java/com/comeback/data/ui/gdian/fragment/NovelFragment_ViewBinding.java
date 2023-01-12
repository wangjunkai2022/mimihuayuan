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
    public NovelFragment f903c;

    /* renamed from: d  reason: collision with root package name */
    public View f904d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelFragment f905c;

        public a(NovelFragment_ViewBinding novelFragment_ViewBinding, NovelFragment novelFragment) {
            this.f905c = novelFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.m(this.f905c.getContext());
        }
    }

    @UiThread
    public NovelFragment_ViewBinding(NovelFragment novelFragment, View view) {
        super(novelFragment, view);
        this.f903c = novelFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f904d = b;
        b.setOnClickListener(new a(this, novelFragment));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f903c != null) {
            this.f903c = null;
            this.f904d.setOnClickListener(null);
            this.f904d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
