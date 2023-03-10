package com.comeback.data.ui.nana.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ShortFragment extends BaseViewPagerFragment {
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
        arrayList.add(RecommendFragment.t(e.a("RAoMFh8A")));
        arrayList.add(VideoListFragment.o(0, e.a("RAoMFh8="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(0, e.a("RAoMFh8="), e.a("QQsGExg="), e.a("UwMa")));
        arrayList.add(VideoListFragment.o(6, e.a("RAoMFh8="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(7, e.a("RAoMFh8="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(11, e.a("RAoMFh8="), e.a("QwsOAQ=="), ""));
        arrayList.add(VideoListFragment.o(12, e.a("RAoMFh8="), e.a("QwsOAQ=="), ""));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ezLjObj"), e.a("0f7jgv3D"), e.a("0ezxjMr/"), e.a("0vnegNHU"), e.a("ZDUiIw=="), e.a("0sbEg87t"), e.a("0tXLgNLA")};
    }
}
