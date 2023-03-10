package com.comeback.data.ui.lutube.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class AVTypeFragment_ViewBinding implements Unbinder {
    public AVTypeFragment b;

    @UiThread
    public AVTypeFragment_ViewBinding(AVTypeFragment aVTypeFragment, View view) {
        this.b = aVTypeFragment;
        aVTypeFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AVTypeFragment aVTypeFragment = this.b;
        if (aVTypeFragment != null) {
            this.b = null;
            aVTypeFragment.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
