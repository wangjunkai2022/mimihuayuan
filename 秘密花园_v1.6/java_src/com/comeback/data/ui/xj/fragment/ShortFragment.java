package com.comeback.data.ui.xj.fragment;

import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ShortFragment extends BaseViewPagerFragment {
    @BindView
    public TabLayout tabLayout;

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xj_short;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList<BaseFragment> h2 = h();
        a.D(h2, -1, this.mViewPager);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), i(), h2));
        this.tabLayout.setupWithViewPager(this.mViewPager);
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(ShortSelectFragment.o(e.a("Qw0THgod")));
        arrayList.add(ShortSelectFragment.o(e.a("Qw0TBwQeVFYdEg==")));
        arrayList.add(ShortSelectFragment.o(e.a("Qw0TFAcSQA==")));
        arrayList.add(ShortSelectFragment.o(e.a("Qw0TCg4E")));
        arrayList.add(ShortSelectFragment.o(e.a("Qw0TBwQaVw==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ODajN7t35Xv"), e.a("383njMXJ35Xv"), e.a("0fDOgv/N35Xv"), e.a("0f7jgv3D35Xv"), e.a("0ej2gdPy35Xv")};
    }
}
