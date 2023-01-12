package com.comeback.data.ui.tv91.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_tv91_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HomeTypeFragment.n(-1));
        arrayList.add(HomeTypeFragment.n(0));
        arrayList.add(HomeTypeFragment.n(17));
        arrayList.add(HomeTypeFragment.n(1));
        arrayList.add(HomeTypeFragment.n(2));
        arrayList.add(HomeTypeFragment.n(3));
        arrayList.add(HomeTypeFragment.n(4));
        arrayList.add(HomeTypeFragment.n(5));
        arrayList.add(HomeTypeFragment.n(6));
        arrayList.add(HomeTypeFragment.n(7));
        arrayList.add(HomeTypeFragment.n(8));
        arrayList.add(HomeTypeFragment.n(9));
        arrayList.add(HomeTypeFragment.n(10));
        arrayList.add(HomeTypeFragment.n(11));
        arrayList.add(HomeTypeFragment.n(14));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D3I7Cgb3g"), e.a("0ufujNnI"), e.a("0MLXgfb836XDgKzCkczl"), e.a("0fXDg8vy"), e.a("0c7Eg9X9"), e.a("0f7qg8vy"), e.a("0ujLg//I"), e.a("3+XJguD+"), e.a("09rqg9/p"), e.a("0f7qg8vy3YvegKLg"), e.a("3v3KgfDO"), e.a("YTA="), e.a("0NbDgNHJ"), e.a("0fXDg8vy3YvegKLg"), e.a("0OnPgcXF0bTZgL/q")};
    }
}
