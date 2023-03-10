package com.comeback.data.ui.ds.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.ds.DsActivity;
import com.comeback.data.ui.ds.adapter.ComicHAdapter;
import com.comeback.data.ui.ds.adapter.ComicVAdapter;
import com.comeback.data.ui.ds.adapter.HeadAdapter;
import com.comeback.data.ui.ds.adapter.TitleAdapter;
import com.comeback.data.ui.ds.bean.RecommendBean;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.e;
import f.e.a.j.i.j.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class RecommendFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RecommendBean> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            RecommendFragment.p(RecommendFragment.this, ((RecommendBean) obj).getData());
        }
    }

    public static void p(RecommendFragment recommendFragment, RecommendBean.DataBean dataBean) {
        SmartRefreshLayout smartRefreshLayout = recommendFragment.refreshLayout;
        smartRefreshLayout.A = false;
        smartRefreshLayout.t(false);
        if (DsActivity.f593d.equals(e.a("Bg=="))) {
            recommendFragment.f120i.b(new HeadAdapter(recommendFragment.getContext(), new c()));
        }
        recommendFragment.f120i.b(new TitleAdapter(recommendFragment.getContext(), 1, new c()));
        g gVar = new g(3);
        gVar.s = true;
        recommendFragment.f120i.b(new ComicVAdapter(recommendFragment.getContext(), dataBean.getJphc(), gVar));
        recommendFragment.f120i.b(new TitleAdapter(recommendFragment.getContext(), 2, new c()));
        g gVar2 = new g(3);
        gVar2.s = true;
        recommendFragment.f120i.b(new ComicVAdapter(recommendFragment.getContext(), dataBean.getTop().getData(), gVar2));
        recommendFragment.f120i.b(new TitleAdapter(recommendFragment.getContext(), 3, new c()));
        g gVar3 = new g(3);
        gVar3.s = true;
        recommendFragment.f120i.b(new ComicVAdapter(recommendFragment.getContext(), dataBean.getRmtj(), gVar3));
        recommendFragment.f120i.b(new TitleAdapter(recommendFragment.getContext(), 4, new c()));
        recommendFragment.f120i.b(new ComicHAdapter(recommendFragment.getContext(), dataBean.getCnxh().getData(), new i()));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.i.j.a a2 = b.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("BA==", hashMap, f.b.a.a.a.i("Bw==", hashMap, f.b.a.a.a.i("QQsGE0AXXEAQ", hashMap, e.a("WBAHARk="), "RBYCFh8="), "WwsODR8="), "QxsTAQ=="), DsActivity.f593d);
        g(a2.d(hashMap), new a());
    }
}
