package com.comeback.data.ui.cucumber.fragment;

import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cucumber.bean.DefaultChannel;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.ArrayList;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class HomeFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public DefaultChannel f493g;
    @BindView
    public CustomViewPager mViewPager;

    /* loaded from: classes.dex */
    public class a extends j<DefaultChannel> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(DefaultChannel defaultChannel) {
            DefaultChannel defaultChannel2 = defaultChannel;
            HomeFragment homeFragment = HomeFragment.this;
            homeFragment.f493g = defaultChannel2;
            List<DefaultChannel.DataBean> data = defaultChannel2.getData();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ChoiceFragment());
            for (DefaultChannel.DataBean dataBean : data) {
                arrayList.add(HomeType1Fragment.o(dataBean));
            }
            homeFragment.mViewPager.setOffscreenPageLimit(arrayList.size() + (-1) <= 8 ? arrayList.size() - 1 : 8);
            CustomViewPager customViewPager = homeFragment.mViewPager;
            FragmentManager childFragmentManager = homeFragment.getChildFragmentManager();
            String[] strArr = new String[defaultChannel2.getData().size() + 1];
            int i2 = 0;
            strArr[0] = e.a("0NDdjev6");
            while (i2 < defaultChannel2.getData().size()) {
                int i3 = i2 + 1;
                strArr[i3] = defaultChannel2.getData().get(i2).getName();
                i2 = i3;
            }
            customViewPager.setAdapter(new BaseViewPagerAdapter(childFragmentManager, strArr, arrayList));
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(c.a().l(), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
