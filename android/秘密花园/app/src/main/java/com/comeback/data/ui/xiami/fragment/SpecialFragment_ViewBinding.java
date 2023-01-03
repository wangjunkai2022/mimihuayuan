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
    public SpecialFragment f2180c;

    /* renamed from: d  reason: collision with root package name */
    public View f2181d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SpecialFragment f2182c;

        public a(SpecialFragment_ViewBinding specialFragment_ViewBinding, SpecialFragment specialFragment) {
            this.f2182c = specialFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchActivity.w(this.f2182c.getContext());
        }
    }

    @UiThread
    public SpecialFragment_ViewBinding(SpecialFragment specialFragment, View view) {
        super(specialFragment, view);
        this.f2180c = specialFragment;
        View b = c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f2181d = b;
        b.setOnClickListener(new a(this, specialFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f2180c != null) {
            this.f2180c = null;
            this.f2181d.setOnClickListener(null);
            this.f2181d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
