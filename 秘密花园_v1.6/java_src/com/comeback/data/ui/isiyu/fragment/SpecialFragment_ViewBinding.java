package com.comeback.data.ui.isiyu.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.isiyu.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SpecialFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SpecialFragment f1276c;

    /* renamed from: d  reason: collision with root package name */
    public View f1277d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SpecialFragment f1278c;

        public a(SpecialFragment_ViewBinding specialFragment_ViewBinding, SpecialFragment specialFragment) {
            this.f1278c = specialFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f1278c.getContext());
        }
    }

    @UiThread
    public SpecialFragment_ViewBinding(SpecialFragment specialFragment, View view) {
        super(specialFragment, view);
        this.f1276c = specialFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f1277d = b;
        b.setOnClickListener(new a(this, specialFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1276c != null) {
            this.f1276c = null;
            this.f1277d.setOnClickListener(null);
            this.f1277d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
