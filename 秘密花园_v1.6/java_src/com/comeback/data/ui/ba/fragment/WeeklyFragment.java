package com.comeback.data.ui.ba.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class WeeklyFragment extends BaseViewPagerFragment {
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
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("Wg0N")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("QxcG")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("QAcH")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("QwoW")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("URAK")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("RAMX")));
        arrayList.add(DiscoverTypeFragment.o(e.a("QAcGDwcK"), e.a("RBcN")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0vPLgNPz"), e.a("0vPLgNH/"), e.a("0vPLgNP6"), e.a("0vPLgfDo"), e.a("0vPLgNHn"), e.a("0vPLge7e"), e.a("0vPLgvzW")};
    }
}
