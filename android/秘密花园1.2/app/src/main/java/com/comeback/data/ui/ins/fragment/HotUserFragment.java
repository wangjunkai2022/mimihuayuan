package com.comeback.data.ui.ins.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.ins.adapter.HotUserAdapter;
import com.comeback.data.ui.ins.adapter.HotVAdapter;
import com.comeback.data.ui.ins.adapter.VTitleAdapter;
import com.comeback.data.ui.ins.bean.HotUser;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.a.a.a.l.l;
import f.e.a.e;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class HotUserFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends j<HotUser> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(HotUser hotUser) {
            HotUserFragment.this.refreshLayout.A = false;
            HotUserFragment hotUserFragment = HotUserFragment.this;
            hotUserFragment.f120i.b(new VTitleAdapter(hotUserFragment.getContext(), e.a("09jZgtvn3JbAgZH5"), new l()));
            hotUserFragment.f120i.b(new HotUserAdapter(hotUserFragment.getContext(), hotUser.getData().getResultList().subList(0, 4), new g(4)));
            hotUserFragment.f120i.b(new VTitleAdapter(hotUserFragment.getContext(), e.a("0N71jNXi373bjrn3"), new l()));
            HotUserFragment.this.s(1);
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshFragment.a<HotUser> {
        public b() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HotUserFragment.this.f120i.b(new HotVAdapter(HotUserFragment.this.getContext(), ((HotUser) obj).getData().getResultList(), new i()));
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (i2 == 1) {
            m();
            g(f.e.a.j.s.e.b.a().c(r(i2, 10), f.e.a.k.b.v0), new a());
            return;
        }
        s(i2);
    }

    public final HashMap<String, String> r(int i2, int i3) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i3, hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RAsZAQ=="), "RA0REA=="), e.a("QgwHAQ0aV1YX"));
        return hashMap;
    }

    public final void s(int i2) {
        g(f.e.a.j.s.e.b.a().d(r(i2, 20), f.e.a.k.b.v0), new b());
    }
}
