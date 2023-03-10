package com.comeback.data.ui.gkj.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class UpdateFragment_ViewBinding implements Unbinder {
    public UpdateFragment b;

    @UiThread
    public UpdateFragment_ViewBinding(UpdateFragment updateFragment, View view) {
        this.b = updateFragment;
        updateFragment.mViewPager = (CustomViewPager) c.c(view, R.id.view_pager, e.a("UQsGCA9THl4lD1EQKAsEDkVF"), CustomViewPager.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        UpdateFragment updateFragment = this.b;
        if (updateFragment != null) {
            this.b = null;
            updateFragment.mViewPager = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
