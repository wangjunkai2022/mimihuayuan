package com.comeback.data.ui.hm.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HomeCollectFragment_ViewBinding implements Unbinder {
    public HomeCollectFragment b;

    @UiThread
    public HomeCollectFragment_ViewBinding(HomeCollectFragment homeCollectFragment, View view) {
        this.b = homeCollectFragment;
        homeCollectFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        homeCollectFragment.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        HomeCollectFragment homeCollectFragment = this.b;
        if (homeCollectFragment != null) {
            this.b = null;
            homeCollectFragment.rvList = null;
            homeCollectFragment.tvHint = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
