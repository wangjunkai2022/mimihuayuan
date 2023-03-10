package com.comeback.data.ui.cucumber.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.TitleAdapter;
import com.comeback.data.ui.cucumber.adapter.VideoVAdapter;
import com.comeback.data.ui.cucumber.bean.SelectionQuery;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ChoiceFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SelectionQuery> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ChoiceFragment.p(ChoiceFragment.this, ((SelectionQuery) obj).getData());
        }
    }

    public static void p(ChoiceFragment choiceFragment, List list) {
        SmartRefreshLayout smartRefreshLayout = choiceFragment.refreshLayout;
        smartRefreshLayout.A = false;
        smartRefreshLayout.t(false);
        choiceFragment.mRvList.setPadding(30, 0, 30, 0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            SelectionQuery.DataBean dataBean = (SelectionQuery.DataBean) it.next();
            choiceFragment.f120i.b(new TitleAdapter(choiceFragment.getContext(), dataBean, new c()));
            choiceFragment.f120i.b(VideoVAdapter.d(choiceFragment.getContext(), dataBean));
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.g.h.c.a().s(), new a());
    }
}
