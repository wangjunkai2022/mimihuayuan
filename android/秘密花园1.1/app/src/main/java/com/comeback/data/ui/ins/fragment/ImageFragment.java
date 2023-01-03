package com.comeback.data.ui.ins.fragment;

import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ImageFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ins_page;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(ImageItemFragment.o(e.a("Bw==")));
        arrayList.add(ImageItemFragment.o(e.a("BlQ=")));
        arrayList.add(ImageItemFragment.o(e.a("BlM=")));
        arrayList.add(ImageItemFragment.o(e.a("BlA=")));
        arrayList.add(ImageItemFragment.o(e.a("BlE=")));
        arrayList.add(ImageItemFragment.o(e.a("BlY=")));
        arrayList.add(ImageItemFragment.o(e.a("AQ==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ufLjejb"), e.a("09rYgvne"), e.a("0sfQg87t"), e.a("3sn7gtP2"), e.a("09r+jMnv3LvFgKjq"), e.a("3/L+jOX63oDI"), e.a("0uPUguD+0bTZgL/q")};
    }
}
