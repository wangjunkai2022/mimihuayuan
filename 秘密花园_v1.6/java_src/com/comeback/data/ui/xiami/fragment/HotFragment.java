package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class HotFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xm_hot_type;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HotTypeFragment.o(e.a("Bg==")));
        String a = e.a("BQ==");
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), a);
        HotTypeFragment hotTypeFragment = new HotTypeFragment();
        hotTypeFragment.setArguments(bundle);
        arrayList.add(hotTypeFragment);
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0f7jgv3D"), e.a("0f7jg+je")};
    }
}
