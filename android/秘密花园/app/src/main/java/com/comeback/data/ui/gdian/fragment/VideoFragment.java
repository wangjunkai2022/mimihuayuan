package com.comeback.data.ui.gdian.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VideoFragment extends BaseViewPagerFragment {
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
        arrayList.add(VideoTypeFragment.o(e.a("WwMXARgH")));
        arrayList.add(VideoTypeFragment.o(e.a("Xw0X")));
        arrayList.add(VideoTypeFragment.o(e.a("RAEMFg4=")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D3Yv5gY7Y"), e.a("0OHOgvne"), e.a("0sfejMT3")};
    }
}
