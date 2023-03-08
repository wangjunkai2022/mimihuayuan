package com.comeback.data.ui.cucumber.fragment;

import android.content.Context;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.ColumnGAdapter;
import com.comeback.data.ui.cucumber.adapter.ColumnHAdapter;
import com.comeback.data.ui.cucumber.adapter.Title2Adapter;
import com.comeback.data.ui.cucumber.adapter.Title3Adapter;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.j.g.g.f;
import f.e.a.j.g.h.c;
import java.util.List;

/* loaded from: classes.dex */
public class ColumnFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<Column> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ColumnFragment.p(ColumnFragment.this, (Column) obj);
        }
    }

    public static void p(ColumnFragment columnFragment, Column column) {
        columnFragment.refreshLayout.t(false);
        columnFragment.refreshLayout.A = false;
        columnFragment.mRvList.setPadding(24, 0, 24, 0);
        columnFragment.g(c.a().i(), new f(columnFragment));
        List<Column.DataBean> data = column.getData();
        for (int i2 = 0; i2 < data.size(); i2++) {
            Column.DataBean dataBean = data.get(i2);
            if (i2 == 0 && dataBean.getSubclass().size() != 0) {
                columnFragment.f120i.b(new Title2Adapter(columnFragment.getContext(), dataBean.getModName(), new f.a.a.a.l.c()));
                columnFragment.f120i.b(new ColumnHAdapter(columnFragment.getContext(), dataBean.getSubclass(), new i()));
            } else if (dataBean.getSubclass().size() != 0) {
                columnFragment.f120i.b(new Title3Adapter(columnFragment.getContext(), dataBean, new f.a.a.a.l.c()));
                DelegateAdapter delegateAdapter = columnFragment.f120i;
                Context context = columnFragment.getContext();
                g gVar = new g(4);
                gVar.C(12);
                gVar.D(24);
                gVar.s = false;
                delegateAdapter.b(new ColumnGAdapter(context, dataBean.getSubclass(), gVar));
            }
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_column;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(c.a().m(), new a());
    }
}
