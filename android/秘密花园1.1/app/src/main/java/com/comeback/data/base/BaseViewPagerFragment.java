package com.comeback.data.base;

import butterknife.BindView;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseViewPagerFragment extends BaseFragment {
    @BindView
    public TabLayout mTabLayout;
    @BindView
    public CustomViewPager mViewPager;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_viewpage;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList<BaseFragment> h2 = h();
        this.mViewPager.setOffscreenPageLimit(h2.size() + (-1) <= 8 ? h2.size() - 1 : 8);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), i(), h2));
    }

    public abstract ArrayList<BaseFragment> h();

    public abstract String[] i();
}
