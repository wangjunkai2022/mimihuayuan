package com.comeback.data.ui.md.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.md.adapter.ChanelAdapter;
import com.comeback.data.ui.md.bean.ChanelList;
import f.e.a.j.e0.d.b;
import f.e.a.j.e0.d.d;
import f.e.a.j.e0.d.e;
import java.util.TreeMap;
/* loaded from: classes.dex */
public class ChanelFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ChanelList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ChanelFragment.this.f117h.a(((ChanelList) obj).getData());
            ChanelFragment.this.refreshLayout.t(false);
            ChanelFragment.this.refreshLayout.A = false;
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ChanelAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b b = e.b();
        TreeMap treeMap = new TreeMap();
        d.a(treeMap);
        g(b.c(treeMap), new a());
    }
}
