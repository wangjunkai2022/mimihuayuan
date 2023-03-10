package com.comeback.data.base;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.util.List;
/* loaded from: classes.dex */
public class BaseViewPagerAdapter extends FragmentPagerAdapter {
    public final List<BaseFragment> a;
    public String[] b;

    public BaseViewPagerAdapter(FragmentManager fragmentManager, String[] strArr, List<BaseFragment> list) {
        super(fragmentManager);
        this.b = strArr;
        this.a = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List<BaseFragment> list = this.a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    public Fragment getItem(int i2) {
        return this.a.get(i2);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i2) {
        String[] strArr = this.b;
        return strArr == null ? "" : strArr[i2];
    }
}
