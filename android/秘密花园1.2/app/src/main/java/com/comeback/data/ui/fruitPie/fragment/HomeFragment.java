package com.comeback.data.ui.fruitPie.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.f.j;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_pie_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.mTabLayout.post(new j(this, 120));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(new HomeVideoFragment());
        arrayList.add(new HomeArticleFragment());
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("38Xljcni"), e.a("09rwgsv8")};
    }
}
