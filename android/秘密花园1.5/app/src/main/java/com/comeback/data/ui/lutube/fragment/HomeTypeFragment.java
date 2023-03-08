package com.comeback.data.ui.lutube.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_lutube_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(new ActorFragment());
        arrayList.add(AVTypeFragment.h(true));
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhEiEg=="), false);
        AVTypeFragment aVTypeFragment = new AVTypeFragment();
        aVTypeFragment.setArguments(bundle);
        arrayList.add(aVTypeFragment);
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0sfQgNfr3LvkjpXP"), e.a("djSG7O2UiIg="), e.a("38Xljcni3Lv1gYXc")};
    }
}
