package com.comeback.data.ui.nana.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AVFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_nana_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(RecommendFragment.t(e.a("Ww0NAxg=")));
        arrayList.add(VideoListFragment.o(0, e.a("Ww0NAw=="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(0, e.a("Ww0NAw=="), e.a("QQsGExg="), e.a("UwMa")));
        arrayList.add(VideoListFragment.o(2, e.a("Ww0NAw=="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(9, e.a("Ww0NAw=="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(10, e.a("Ww0NAw=="), e.a("QwsOAQ=="), ""));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ezLjObj"), e.a("0f7jgv3D"), e.a("0ezxjMr/"), e.a("0OnPgcXF"), e.a("09rOgv30"), e.a("0fXDg8vy")};
    }
}
