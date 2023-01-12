package com.comeback.data.ui.nana.viewpager;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.viewpager.widget.ViewPager;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class PageView_ViewBinding implements Unbinder {
    public PageView b;

    @UiThread
    public PageView_ViewBinding(PageView pageView, View view) {
        this.b = pageView;
        pageView.mViewPager = (ViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), ViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        PageView pageView = this.b;
        if (pageView != null) {
            this.b = null;
            pageView.mViewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
