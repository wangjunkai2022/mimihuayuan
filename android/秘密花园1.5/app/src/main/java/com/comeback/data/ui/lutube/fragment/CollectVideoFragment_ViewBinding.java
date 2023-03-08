package com.comeback.data.ui.lutube.fragment;

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
public class CollectVideoFragment_ViewBinding implements Unbinder {
    public CollectVideoFragment b;

    @UiThread
    public CollectVideoFragment_ViewBinding(CollectVideoFragment collectVideoFragment, View view) {
        this.b = collectVideoFragment;
        collectVideoFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        collectVideoFragment.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CollectVideoFragment collectVideoFragment = this.b;
        if (collectVideoFragment != null) {
            this.b = null;
            collectVideoFragment.rvList = null;
            collectVideoFragment.tvHint = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
