package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SJFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SJFragment f218c;

    @UiThread
    public SJFragment_ViewBinding(SJFragment sJFragment, View view) {
        super(sJFragment, view);
        this.f218c = sJFragment;
        sJFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        sJFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        sJFragment.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        sJFragment.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        SJFragment sJFragment = this.f218c;
        if (sJFragment != null) {
            this.f218c = null;
            sJFragment.tab1 = null;
            sJFragment.tab2 = null;
            sJFragment.tab3 = null;
            sJFragment.tab4 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
