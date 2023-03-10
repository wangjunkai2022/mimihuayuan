package com.comeback.data.ui.xiami.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.xiami.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SpecialFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SpecialFragment f2259c;

    /* renamed from: d  reason: collision with root package name */
    public View f2260d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SpecialFragment f2261c;

        public a(SpecialFragment_ViewBinding specialFragment_ViewBinding, SpecialFragment specialFragment) {
            this.f2261c = specialFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f2261c.getContext());
        }
    }

    @UiThread
    public SpecialFragment_ViewBinding(SpecialFragment specialFragment, View view) {
        super(specialFragment, view);
        this.f2259c = specialFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2260d = b;
        b.setOnClickListener(new a(this, specialFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f2259c != null) {
            this.f2259c = null;
            this.f2260d.setOnClickListener(null);
            this.f2260d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
