package com.comeback.data.ui.sex8.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.sex8.adapter.NovelListAdapter;
import com.comeback.data.ui.sex8.bean.YXNovelList;
import com.comeback.data.ui.sex8.bean.YXParams;
import f.e.a.e;
import f.e.a.j.k0.a.b;
/* loaded from: classes.dex */
public class OtherFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<YXNovelList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1944f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1944f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            YXNovelList yXNovelList = (YXNovelList) obj;
            if (this.f1944f == 1) {
                OtherFragment.this.f117h.c();
            }
            OtherFragment.this.f117h.a(yXNovelList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.k0.a.a a2 = b.a();
        YXParams yXParams = new YXParams();
        yXParams.setPage(i2);
        yXParams.setPage_size(e.a("BlI="));
        yXParams.setType(e.a("WQcU"));
        yXParams.setCategory(e.a("WBYLARk="));
        yXParams.setChild_category("");
        yXParams.setV(e.a("RQMHDQQsWF8RE1k4FAMQHw=="));
        yXParams.setIs_best(0);
        g(a2.d(yXParams.toJson(), System.currentTimeMillis()), new a(i2));
    }
}
