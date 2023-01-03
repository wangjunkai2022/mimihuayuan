package com.comeback.data.ui.ba.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CompleteFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ba_discover_2;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(DiscoverTypeFragment.o(e.a("VA0OFAcWTVY="), e.a("RAMPARg=")));
        arrayList.add(DiscoverTypeFragment.o(e.a("VA0OFAcWTVY="), e.a("WQcU")));
        arrayList.add(DiscoverTypeFragment.o(e.a("VA0OFAcWTVY="), e.a("VA0KCg==")));
        arrayList.add(DiscoverTypeFragment.o(e.a("VA0OFAcWTVY="), ""));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0Pfmjf/z373hg47o"), e.a("0f7jgv3D3J3/gY/0"), e.a("3vvzgvzF3Lb+joDe"), e.a("0ufLjejb34/YgaDc")};
    }
}
