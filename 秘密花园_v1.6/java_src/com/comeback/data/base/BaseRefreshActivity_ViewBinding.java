package com.comeback.data.base;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class BaseRefreshActivity_ViewBinding implements Unbinder {
    public BaseRefreshActivity b;

    @UiThread
    public BaseRefreshActivity_ViewBinding(BaseRefreshActivity baseRefreshActivity, View view) {
        this.b = baseRefreshActivity;
        baseRefreshActivity.mRvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hEHgOCx5E"), RecyclerView.class);
        baseRefreshActivity.refreshLayout = (SmartRefreshLayout) c.c(view, R.id.refreshLayout, e.a("UQsGCA9THkEWAEYCCwIvCk4NFhBM"), SmartRefreshLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        BaseRefreshActivity baseRefreshActivity = this.b;
        if (baseRefreshActivity != null) {
            this.b = null;
            baseRefreshActivity.mRvList = null;
            baseRefreshActivity.refreshLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
