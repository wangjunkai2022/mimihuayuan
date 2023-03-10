package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class HotFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public HotFragment f201c;

    @UiThread
    public HotFragment_ViewBinding(HotFragment hotFragment, View view) {
        super(hotFragment, view);
        this.f201c = hotFragment;
        hotFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        hotFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        hotFragment.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        hotFragment.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        HotFragment hotFragment = this.f201c;
        if (hotFragment != null) {
            this.f201c = null;
            hotFragment.tab1 = null;
            hotFragment.tab2 = null;
            hotFragment.tab3 = null;
            hotFragment.tab4 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
