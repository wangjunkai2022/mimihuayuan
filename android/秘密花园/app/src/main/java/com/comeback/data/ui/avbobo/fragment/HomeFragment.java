package com.comeback.data.ui.avbobo.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_avbobo_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HomeTypeFragment.t(e.a("AlcHAVwXCgpKUFVQGQsGDwVVUgVeRQ4KSgcBXhteVVw=")));
        arrayList.add(HomeTypeFragment.t(e.a("AQZbVlMSCwtCAA1VG11aDwBXAlJbRQ0HRl5XXx0OWw8=")));
        arrayList.add(HomeTypeFragment.t(e.a("AFEGV1xFAVBLX1ZfHVgHX1FXVQZYRlwAF1INBkBaB1o=")));
        arrayList.add(new NoCodeFragment());
        arrayList.add(new GifFragment());
        arrayList.add(new CartoonFragment());
        arrayList.add(new SJFragment());
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0NDdjev6"), e.a("djQ="), e.a("0tLsjMz10JHi"), e.a("0fXDg8vy"), e.a("UAsF"), e.a("0ujLg//I3rr0"), e.a("09rqg9HU3rr0")};
    }
}
