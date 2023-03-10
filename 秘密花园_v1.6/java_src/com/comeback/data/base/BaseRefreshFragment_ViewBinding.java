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
public class BaseRefreshFragment_ViewBinding implements Unbinder {
    public BaseRefreshFragment b;

    @UiThread
    public BaseRefreshFragment_ViewBinding(BaseRefreshFragment baseRefreshFragment, View view) {
        this.b = baseRefreshFragment;
        baseRefreshFragment.mRvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hEHgOCx5E"), RecyclerView.class);
        baseRefreshFragment.refreshLayout = (SmartRefreshLayout) c.c(view, R.id.refreshLayout, e.a("UQsGCA9THkEWAEYCCwIvCk4NFhBM"), SmartRefreshLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        BaseRefreshFragment baseRefreshFragment = this.b;
        if (baseRefreshFragment != null) {
            this.b = null;
            baseRefreshFragment.mRvList = null;
            baseRefreshFragment.refreshLayout = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
