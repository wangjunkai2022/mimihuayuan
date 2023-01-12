package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CartoonFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public CartoonFragment f188c;

    @UiThread
    public CartoonFragment_ViewBinding(CartoonFragment cartoonFragment, View view) {
        super(cartoonFragment, view);
        this.f188c = cartoonFragment;
        cartoonFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        cartoonFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        cartoonFragment.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        cartoonFragment.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        CartoonFragment cartoonFragment = this.f188c;
        if (cartoonFragment != null) {
            this.f188c = null;
            cartoonFragment.tab1 = null;
            cartoonFragment.tab2 = null;
            cartoonFragment.tab3 = null;
            cartoonFragment.tab4 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
