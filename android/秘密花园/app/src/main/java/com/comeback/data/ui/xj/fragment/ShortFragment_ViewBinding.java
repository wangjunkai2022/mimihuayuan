package com.comeback.data.ui.xj.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ShortFragment_ViewBinding extends BaseViewPagerFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ShortFragment f2263c;

    @UiThread
    public ShortFragment_ViewBinding(ShortFragment shortFragment, View view) {
        super(shortFragment, view);
        this.f2263c = shortFragment;
        shortFragment.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        ShortFragment shortFragment = this.f2263c;
        if (shortFragment != null) {
            this.f2263c = null;
            shortFragment.tabLayout = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
