package com.comeback.data.ui.nana.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ShortTypeFragment_ViewBinding implements Unbinder {
    public ShortTypeFragment b;

    @UiThread
    public ShortTypeFragment_ViewBinding(ShortTypeFragment shortTypeFragment, View view) {
        this.b = shortTypeFragment;
        shortTypeFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        shortTypeFragment.rvTag = (RecyclerView) c.c(view, R.id.rv_tag, e.a("UQsGCA9THkEFMlUAXw=="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ShortTypeFragment shortTypeFragment = this.b;
        if (shortTypeFragment != null) {
            this.b = null;
            shortTypeFragment.rvList = null;
            shortTypeFragment.rvTag = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
