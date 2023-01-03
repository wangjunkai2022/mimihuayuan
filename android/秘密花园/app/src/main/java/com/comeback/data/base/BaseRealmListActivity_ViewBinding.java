package com.comeback.data.base;

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
public class BaseRealmListActivity_ViewBinding implements Unbinder {
    public BaseRealmListActivity b;

    @UiThread
    public BaseRealmListActivity_ViewBinding(BaseRealmListActivity baseRealmListActivity, View view) {
        this.b = baseRealmListActivity;
        baseRealmListActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        baseRealmListActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        baseRealmListActivity.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        BaseRealmListActivity baseRealmListActivity = this.b;
        if (baseRealmListActivity != null) {
            this.b = null;
            baseRealmListActivity.tvTitle = null;
            baseRealmListActivity.rvList = null;
            baseRealmListActivity.tvHint = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
