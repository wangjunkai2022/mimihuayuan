package com.comeback.data.ui.xiami.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.data.ui.xiami.MainActivity;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.secret.garden.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xm_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        for (Category.DataBean dataBean : MainActivity.f2215d.getData()) {
            arrayList.add(HomeTypeFragment.k(dataBean));
        }
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        List<Category.DataBean> data = MainActivity.f2215d.getData();
        String[] strArr = new String[data.size()];
        for (int i2 = 0; i2 < data.size(); i2++) {
            strArr[i2] = data.get(i2).getTitle();
        }
        return strArr;
    }
}
