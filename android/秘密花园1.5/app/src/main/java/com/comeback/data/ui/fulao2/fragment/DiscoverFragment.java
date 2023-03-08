package com.comeback.data.ui.fulao2.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DiscoverFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(new Rang2Fragment());
        arrayList.add(new ActorFragment());
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ezxjMr/35Xvg7ny"), e.a("0sfQgNfr37PIjpPv")};
    }
}
