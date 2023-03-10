package com.comeback.data.ui.ba.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class TopFragment extends BaseViewPagerFragment {
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
        arrayList.add(DiscoverTypeFragment.o(e.a("Qw0TVVtD"), e.a("QAcGDwcK")));
        arrayList.add(DiscoverTypeFragment.o(e.a("Qw0TVVtD"), e.a("Wg0NEAMA")));
        arrayList.add(DiscoverTypeFragment.o(e.a("Qw0TVVtD"), e.a("WQcU")));
        arrayList.add(DiscoverTypeFragment.o(e.a("Qw0TVVtD"), e.a("Rw0TEQcSS1oHHw==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0vPLguXh3KP+"), e.a("0f7rguXh3KP+"), e.a("0fTTgNbv"), e.a("0ezLjObj")};
    }
}
