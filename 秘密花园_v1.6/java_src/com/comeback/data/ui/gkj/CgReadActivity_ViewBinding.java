package com.comeback.data.ui.gkj;

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
public class CgReadActivity_ViewBinding implements Unbinder {
    public CgReadActivity b;

    @UiThread
    public CgReadActivity_ViewBinding(CgReadActivity cgReadActivity, View view) {
        this.b = cgReadActivity;
        cgReadActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        cgReadActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        cgReadActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CgReadActivity cgReadActivity = this.b;
        if (cgReadActivity != null) {
            this.b = null;
            cgReadActivity.rvList = null;
            cgReadActivity.tvTitle = null;
            cgReadActivity.tvTime = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
