package com.comeback.data.ui.xj.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HotFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xj_hot;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HotItemFragment.o(e.a("RQcACwYeXF0X")));
        arrayList.add(HotItemFragment.o(e.a("Xw0X")));
        arrayList.add(HotItemFragment.o(e.a("WwMXARgH")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ezLjObj"), e.a("0OHOg+nK"), e.a("0f7jgv3D")};
    }
}
