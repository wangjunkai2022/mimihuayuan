package com.comeback.data.ui.gkj.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.data.ui.gkj.bean.ConfBean;
import com.comeback.secret.garden.R;
import f.e.a.j.n.p.e;
import java.util.ArrayList;
import java.util.List;
import m.j;
/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {

    /* loaded from: classes.dex */
    public class a extends j<ConfBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ConfBean confBean) {
            HomeFragment.k(HomeFragment.this, confBean.getContent().getData().getSpecialNav());
        }
    }

    public static void k(HomeFragment homeFragment, List list) {
        homeFragment.mTabLayout.setupWithViewPager(homeFragment.mViewPager);
        String[] strArr = new String[list.size()];
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            ConfBean.ContentEntity.DataEntity.SpecialNavEntity specialNavEntity = (ConfBean.ContentEntity.DataEntity.SpecialNavEntity) list.get(i2);
            strArr[i2] = specialNavEntity.getNavName();
            arrayList.add(HomeTypeFragment.q(specialNavEntity.getId()));
        }
        homeFragment.mViewPager.setOffscreenPageLimit(arrayList.size() + (-1) <= 8 ? arrayList.size() - 1 : 8);
        homeFragment.mViewPager.setAdapter(new BaseViewPagerAdapter(homeFragment.getChildFragmentManager(), strArr, arrayList));
        homeFragment.mViewPager.addOnPageChangeListener(new f.e.a.j.n.o.a(homeFragment));
        homeFragment.mViewPager.setBackgroundColor(-1);
        homeFragment.mViewPager.setCurrentItem(0, false);
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_gkj_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(e.b().g(1), new a());
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public void f() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        return null;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[0];
    }
}
