package com.comeback.data.ui.hm.fragment;

import android.text.TextUtils;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.r.f.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_hm_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        super.f();
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(a.b)) {
            arrayList.add(ListFragment.q(true, ""));
            arrayList.add(ListFragment.q(true, e.a("3v3wgtfY")));
            arrayList.add(ListFragment.q(true, e.a("0ufLgdba")));
            arrayList.add(ListFragment.q(true, e.a("0vLvgNHJ")));
            arrayList.add(ListFragment.q(true, e.a("0vTNgvff")));
            arrayList.add(ListFragment.q(true, e.a("0ufVgNDl")));
        } else {
            arrayList.add(ListFragment.q(false, ""));
            arrayList.add(ListFragment.q(false, e.a("0f7qgcjD3IP8jpvT")));
            arrayList.add(ListFragment.q(false, e.a("0OzngdLI")));
            arrayList.add(ListFragment.q(false, e.a("3uHegdPx")));
            arrayList.add(ListFragment.q(false, e.a("0ufVgNDl")));
        }
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return TextUtils.isEmpty(a.b) ? new String[]{e.a("0ufLjejb"), e.a("3v3wgtfY"), e.a("0ufLgdba"), e.a("0vLvgNHJ"), e.a("0vTNgvff"), e.a("0ufVgNDl")} : new String[]{e.a("0ufLjejb"), e.a("0f7qgcjD3IP8jpvT"), e.a("0OzngdLI"), e.a("3uHegdPx"), e.a("0ufVgNDl")};
    }
}
