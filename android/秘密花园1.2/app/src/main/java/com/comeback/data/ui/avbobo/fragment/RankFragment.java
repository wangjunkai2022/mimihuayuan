package com.comeback.data.ui.avbobo.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.avbobo.adapter.GuessLikeAdapter;
import com.comeback.data.ui.avbobo.bean.RankVideoList;
import f.e.a.e;
import f.e.a.j.b.g.d;

/* loaded from: classes.dex */
public class RankFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f211i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RankVideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f212f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f212f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankVideoList rankVideoList = (RankVideoList) obj;
            if (this.f212f == 1) {
                RankFragment.this.f117h.c();
            }
            RankFragment.this.f117h.a(rankVideoList.getMovieList());
        }
    }

    public static BaseFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        RankFragment rankFragment = new RankFragment();
        rankFragment.setArguments(bundle);
        return rankFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f211i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new GuessLikeAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(d.a().c(this.f211i, 10, i2), new a(i2));
    }
}
