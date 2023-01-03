package com.comeback.data.ui.sex8.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.sex8.adapter.AuthorListAdapter;
import com.comeback.data.ui.sex8.bean.YXHostList;
import com.comeback.data.ui.sex8.bean.YXParams;
import f.e.a.e;
import f.e.a.j.j0.a.b;

/* loaded from: classes.dex */
public class RankHostFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<YXHostList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1867f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1867f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            YXHostList yXHostList = (YXHostList) obj;
            if (this.f1867f == 1) {
                RankHostFragment.this.f117h.c();
            }
            RankHostFragment.this.f117h.a(yXHostList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new AuthorListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.j0.a.a a2 = b.a();
        YXParams yXParams = new YXParams();
        yXParams.setPage_size(e.a("BlI="));
        yXParams.setV(e.a("RQMNDwMcSkcsCl0UDA=="));
        yXParams.setPage(i2);
        g(a2.e(yXParams.toJson(), System.currentTimeMillis()), new a(i2));
    }
}
