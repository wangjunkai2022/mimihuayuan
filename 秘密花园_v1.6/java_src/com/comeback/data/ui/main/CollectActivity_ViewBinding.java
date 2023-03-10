package com.comeback.data.ui.main;

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
public class CollectActivity_ViewBinding implements Unbinder {
    public CollectActivity b;

    @UiThread
    public CollectActivity_ViewBinding(CollectActivity collectActivity, View view) {
        this.b = collectActivity;
        collectActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        collectActivity.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CollectActivity collectActivity = this.b;
        if (collectActivity != null) {
            this.b = null;
            collectActivity.rvList = null;
            collectActivity.tvHint = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
