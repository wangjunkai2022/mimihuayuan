package com.comeback.data.ui.tv91.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.data.ui.tv91.SearchActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class StarFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public StarFragment f2202c;

    /* renamed from: d  reason: collision with root package name */
    public View f2203d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ StarFragment f2204c;

        public a(StarFragment_ViewBinding starFragment_ViewBinding, StarFragment starFragment) {
            this.f2204c = starFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f2204c.getContext());
        }
    }

    @UiThread
    public StarFragment_ViewBinding(StarFragment starFragment, View view) {
        super(starFragment, view);
        this.f2202c = starFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f2203d = b;
        b.setOnClickListener(new a(this, starFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f2202c != null) {
            this.f2202c = null;
            this.f2203d.setOnClickListener(null);
            this.f2203d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
