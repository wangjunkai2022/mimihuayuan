package com.comeback.data.ui.avbobo.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class GifFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public GifFragment f193c;

    @UiThread
    public GifFragment_ViewBinding(GifFragment gifFragment, View view) {
        super(gifFragment, view);
        this.f193c = gifFragment;
        gifFragment.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        gifFragment.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        gifFragment.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        gifFragment.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        GifFragment gifFragment = this.f193c;
        if (gifFragment != null) {
            this.f193c = null;
            gifFragment.tab1 = null;
            gifFragment.tab2 = null;
            gifFragment.tab3 = null;
            gifFragment.tab4 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
