package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseViewPagerFragment {

    /* renamed from: g  reason: collision with root package name */
    public Category.DataBean f2242g;

    public static BaseFragment k(Category.DataBean dataBean) {
        BaseFragment homeTypeFragment;
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBSkWWF0="), dataBean);
        if (dataBean.getType().equals(e.a("Bg=="))) {
            homeTypeFragment = RecommendFragment.q(dataBean);
        } else {
            homeTypeFragment = new HomeTypeFragment();
        }
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2242g = (Category.DataBean) getArguments().getParcelable(e.a("UwMXBSkWWF0="));
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xm_home_type;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        for (Category.DataBean.InfoBean infoBean : this.f2242g.getInfo()) {
            infoBean.setCategoryId(String.valueOf(this.f2242g.getId()));
            if (this.f2242g.getType().equals(e.a("BQ=="))) {
                arrayList.add(VideoFragment.o(infoBean));
            }
            if (this.f2242g.getType().equals(e.a("BA=="))) {
                arrayList.add(ImageFragment.o(infoBean));
            }
            if (this.f2242g.getType().equals(e.a("Aw=="))) {
                arrayList.add(NovelFragment.o(infoBean));
            }
        }
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        List<Category.DataBean.InfoBean> info = this.f2242g.getInfo();
        String[] strArr = new String[info.size()];
        for (int i2 = 0; i2 < info.size(); i2++) {
            strArr[i2] = info.get(i2).getChildTitle();
        }
        return strArr;
    }
}
