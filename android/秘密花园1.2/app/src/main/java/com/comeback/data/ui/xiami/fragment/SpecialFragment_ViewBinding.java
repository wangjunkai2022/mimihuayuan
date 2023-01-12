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
    public SpecialFragment f2255c;

    /* renamed from: d  reason: collision with root package name */
    public View f2256d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SpecialFragment f2257c;

        public a(SpecialFragment_ViewBinding specialFragment_ViewBinding, SpecialFragment specialFragment) {
            this.f2257c = specialFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f2257c.getContext());
        }
    }

    @UiThread
    public SpecialFragment_ViewBinding(SpecialFragment specialFragment, View view) {
        super(specialFragment, view);
        this.f2255c = specialFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2256d = b;
        b.setOnClickListener(new a(this, specialFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f2255c != null) {
            this.f2255c = null;
            this.f2256d.setOnClickListener(null);
            this.f2256d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
