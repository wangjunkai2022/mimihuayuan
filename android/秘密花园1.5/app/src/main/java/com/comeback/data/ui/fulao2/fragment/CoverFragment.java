package com.comeback.data.ui.fulao2.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CoverFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(VideoListFragment.o(0, e.a("VA0VARk="), "", e.a("Ww0NAw=="), e.a("QwsOAQ==")));
        arrayList.add(VideoListFragment.o(0, e.a("VA0VARk="), e.a("UwMa"), e.a("Ww0NAw=="), e.a("QQsGExg=")));
        arrayList.add(VideoListFragment.o(27, e.a("VA0VARk="), "", e.a("Ww0NAw=="), e.a("QwsOAQ==")));
        arrayList.add(VideoListFragment.o(13, e.a("VA0VARk="), "", e.a("Ww0NAw=="), e.a("QwsOAQ==")));
        arrayList.add(VideoListFragment.o(23, e.a("VA0VARk="), "", e.a("Ww0NAw=="), e.a("QwsOAQ==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D"), e.a("0OHOjfzb"), e.a("09rOgezJ"), e.a("09rOgcbk"), e.a("09jZgc3I")};
    }
}
