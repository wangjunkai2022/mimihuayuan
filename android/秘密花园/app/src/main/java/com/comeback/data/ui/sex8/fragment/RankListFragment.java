package com.comeback.data.ui.sex8.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.sex8.adapter.NovelListAdapter;
import com.comeback.data.ui.sex8.bean.YXNovelList;
import com.comeback.data.ui.sex8.bean.YXParams;
import f.e.a.e;
import f.e.a.j.j0.a.b;

/* loaded from: classes.dex */
public class RankListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1869i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<YXNovelList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1870f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1870f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            YXNovelList yXNovelList = (YXNovelList) obj;
            if (this.f1870f == 1) {
                RankListFragment.this.f117h.c();
            }
            RankListFragment.this.f117h.a(yXNovelList.getData());
        }
    }

    public static RankListFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        RankListFragment rankListFragment = new RankListFragment();
        rankListFragment.setArguments(bundle);
        return rankListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1869i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.j0.a.a a2 = b.a();
        YXParams yXParams = new YXParams();
        yXParams.setPage_size(e.a("BlI="));
        yXParams.setV(e.a("RQMNDzQfUEAH"));
        yXParams.setType(this.f1869i);
        yXParams.setPage(i2);
        g(a2.d(yXParams.toJson(), System.currentTimeMillis()), new a(i2));
    }
}
