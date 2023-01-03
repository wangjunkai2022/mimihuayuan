package com.comeback.data.base;

import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class BaseViewPagerActivity extends BaseActivity implements ViewPager.OnPageChangeListener {
    @BindView
    public CustomViewPager mViewPager;

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_base_viewpager;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        ArrayList<BaseFragment> l2 = l();
        CustomViewPager customViewPager = this.mViewPager;
        int i2 = 8;
        if (l2.size() - 1 <= 8) {
            i2 = l2.size() - 1;
        }
        customViewPager.setOffscreenPageLimit(i2);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), m(), l2));
        this.mViewPager.addOnPageChangeListener(this);
    }

    public abstract ArrayList<BaseFragment> l();

    public abstract String[] m();

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f2, int i3) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
    }
}
