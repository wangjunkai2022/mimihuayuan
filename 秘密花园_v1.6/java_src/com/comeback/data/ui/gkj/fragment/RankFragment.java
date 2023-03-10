package com.comeback.data.ui.gkj.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gkj.adapter.WeekAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1071i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1072f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1072f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicList comicList = (ComicList) obj;
            if (this.f1072f == 1) {
                RankFragment.this.f117h.c();
            }
            RankFragment.this.f117h.a(comicList.getData());
        }
    }

    public static RankFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("UA4MBg4nQEMW"), str);
        RankFragment rankFragment = new RankFragment();
        rankFragment.setArguments(bundle);
        return rankFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1071i = getArguments().getString(e.a("UA4MBg4nQEMW"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new WeekAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.n.p.e.b().i(this.f1071i), new a(i2));
    }
}
