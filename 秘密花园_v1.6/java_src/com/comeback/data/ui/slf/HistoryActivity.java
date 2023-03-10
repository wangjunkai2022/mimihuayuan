package com.comeback.data.ui.slf;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRealmListActivity;
import com.comeback.data.ui.slf.adapter.HistoryAdapter;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.g;
import g.a.j0;
import g.a.x;
/* loaded from: classes.dex */
public class HistoryActivity extends BaseRealmListActivity<SLFItemBean> {
    public static void p(Context context) {
        a.u(context, HistoryActivity.class);
    }

    @Override // com.comeback.data.base.BaseRealmListActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public BaseAbstractAdapter<SLFItemBean> l() {
        return new HistoryAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public String n() {
        return e.a("0dfsjMz73L31g7vV");
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public j0<SLFItemBean> o() {
        return g.d(x.P()).e(SLFItemBean.class);
    }
}
