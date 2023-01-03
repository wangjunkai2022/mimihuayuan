package com.comeback.data.ui.jav.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_jav_rank;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(RankItemFragment.p(e.a("VAcNFwQBXFc=")));
        arrayList.add(RankItemFragment.p(e.a("QgwAAQUAVkEWAg==")));
        arrayList.add(RankItemFragment.p(e.a("QAcQEA4BVw==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7qg8vy"), e.a("0fXDg8vy"), e.a("0c7Eg9X9")};
    }
}
