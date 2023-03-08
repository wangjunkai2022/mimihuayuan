package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NoCodeFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public NoCodeFragment f210c;

    @UiThread
    public NoCodeFragment_ViewBinding(NoCodeFragment noCodeFragment, View view) {
        super(noCodeFragment, view);
        this.f210c = noCodeFragment;
        noCodeFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        noCodeFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        noCodeFragment.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        noCodeFragment.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        NoCodeFragment noCodeFragment = this.f210c;
        if (noCodeFragment != null) {
            this.f210c = null;
            noCodeFragment.tab1 = null;
            noCodeFragment.tab2 = null;
            noCodeFragment.tab3 = null;
            noCodeFragment.tab4 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
