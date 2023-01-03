package com.comeback.data.ui.fulao2.fragment;

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
public class CollectActorFragment_ViewBinding implements Unbinder {
    public CollectActorFragment b;

    @UiThread
    public CollectActorFragment_ViewBinding(CollectActorFragment collectActorFragment, View view) {
        this.b = collectActorFragment;
        collectActorFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        collectActorFragment.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CollectActorFragment collectActorFragment = this.b;
        if (collectActorFragment != null) {
            this.b = null;
            collectActorFragment.rvList = null;
            collectActorFragment.tvHint = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
