package com.comeback.data.ui.md.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_md_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HomeTypeFragment.p(e.a("Bg==")));
        Bundle bundle = new Bundle();
        bundle.putString(e.a("VAoCCgUWVQ=="), "");
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        arrayList.add(homeTypeFragment);
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return f.e.a.j.d0.d.e.f3845c.equals(b.p0) ? new String[]{e.a("3tjYjNr1"), e.a("0f7jgv3D")} : new String[]{e.a("DlM3Mg=="), e.a("0f7jgv3D")};
    }
}
