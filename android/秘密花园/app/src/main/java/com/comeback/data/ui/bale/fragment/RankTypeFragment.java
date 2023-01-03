package com.comeback.data.ui.bale.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.bale.adapter.VideoAdapter;
import com.comeback.data.ui.bale.bean.RankList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;

/* loaded from: classes.dex */
public class RankTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f302i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RankList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f303f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f303f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankList rankList = (RankList) obj;
            if (this.f303f == 1) {
                RankTypeFragment.this.f117h.c();
            }
            RankTypeFragment.this.f117h.a(rankList.getResult().getData());
        }
    }

    public static BaseFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QwME"), str);
        RankTypeFragment rankTypeFragment = new RankTypeFragment();
        rankTypeFragment.setArguments(bundle);
        return rankTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f302i = getArguments().getString(e.a("QwME"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().e(this.f302i, i2), new a(i2));
    }
}
