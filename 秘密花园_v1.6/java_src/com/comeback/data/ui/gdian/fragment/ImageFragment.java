package com.comeback.data.ui.gdian.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ImageFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_gdian_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        super.f();
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(ImageTypeFragment.o(e.a("WwMXARgH")));
        arrayList.add(ImageTypeFragment.o(e.a("Xw0X")));
        arrayList.add(ImageTypeFragment.o(e.a("RAEMFg4=")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D3o39g6/Z"), e.a("0OHOjfzb"), e.a("0sfejMT3")};
    }
}
