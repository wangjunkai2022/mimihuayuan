package com.comeback.data.ui.gkj;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ScreenActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ScreenActivity f969c;

    @UiThread
    public ScreenActivity_ViewBinding(ScreenActivity screenActivity, View view) {
        super(screenActivity, view);
        this.f969c = screenActivity;
        screenActivity.rvList1 = (RecyclerView) c.c(view, R.id.rv_list1, e.a("UQsGCA9THkEFKl0UDFtE"), RecyclerView.class);
        screenActivity.rvList2 = (RecyclerView) c.c(view, R.id.rv_list2, e.a("UQsGCA9THkEFKl0UDFhE"), RecyclerView.class);
        screenActivity.rvList3 = (RecyclerView) c.c(view, R.id.rv_list3, e.a("UQsGCA9THkEFKl0UDFlE"), RecyclerView.class);
        screenActivity.rvList4 = (RecyclerView) c.c(view, R.id.rv_list4, e.a("UQsGCA9THkEFKl0UDF5E"), RecyclerView.class);
        screenActivity.rvList5 = (RecyclerView) c.c(view, R.id.rv_list5, e.a("UQsGCA9THkEFKl0UDF9E"), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ScreenActivity screenActivity = this.f969c;
        if (screenActivity != null) {
            this.f969c = null;
            screenActivity.rvList1 = null;
            screenActivity.rvList2 = null;
            screenActivity.rvList3 = null;
            screenActivity.rvList4 = null;
            screenActivity.rvList5 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
