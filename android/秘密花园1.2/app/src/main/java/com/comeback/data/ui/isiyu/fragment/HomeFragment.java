package com.comeback.data.ui.isiyu.fragment;

import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.isiyu.bean.HomeType;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.Iterator;
import m.j;

/* loaded from: classes.dex */
public class HomeFragment extends BaseFragment {
    @BindView
    public CustomViewPager mViewPager;

    /* loaded from: classes.dex */
    public class a extends j<ArrayList<HomeType>> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            h.n1(e.a("3+zUgeTl0JHij7X0nc7Sg4PHjNjnm5aElM65gujkiuy6iszx"));
        }

        @Override // m.j
        public void f(ArrayList<HomeType> arrayList) {
            HomeFragment.h(HomeFragment.this, arrayList);
        }
    }

    public static void h(HomeFragment homeFragment, ArrayList arrayList) {
        if (homeFragment != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(HomeTypeFragment.o(((HomeType) it.next()).getId()));
            }
            homeFragment.mViewPager.setOffscreenPageLimit(arrayList2.size() + (-1) <= 8 ? arrayList2.size() - 1 : 8);
            CustomViewPager customViewPager = homeFragment.mViewPager;
            FragmentManager childFragmentManager = homeFragment.getChildFragmentManager();
            String[] strArr = new String[arrayList.size()];
            Iterator it2 = arrayList.iterator();
            int i2 = 0;
            while (it2.hasNext()) {
                strArr[i2] = ((HomeType) it2.next()).getTitle();
                i2++;
            }
            customViewPager.setAdapter(new BaseViewPagerAdapter(childFragmentManager, strArr, arrayList2));
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_isiyu_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        g(f.e.a.j.u.e.e.a().e(), new a());
    }
}
