package com.comeback.data.ui.mimei.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ComicFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_mimei_comic;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(ComicTypeFragment.r(0));
        arrayList.add(ComicTypeFragment.r(4));
        arrayList.add(ComicTypeFragment.r(1));
        arrayList.add(ComicTypeFragment.r(3));
        arrayList.add(ComicTypeFragment.r(6));
        arrayList.add(ComicTypeFragment.r(5));
        arrayList.add(ComicTypeFragment.r(2));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ezLjObj"), e.a("3v3KgtfY"), e.a("0u/2jMr/36/f"), e.a("0vLvgNHJ"), e.a("dA0Q"), e.a("dCWG/9U="), e.a("0P3Og8T0")};
    }
}
