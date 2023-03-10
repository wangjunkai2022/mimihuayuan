package com.comeback.data.ui.ins.fragment;

import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class VideoFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ins_page;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        new LinearLayoutManager(getContext(), 0, false);
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(new HotUserFragment());
        arrayList.add(VideoItemFragment.o(e.a("BlBS")));
        arrayList.add(VideoItemFragment.o(e.a("AVI=")));
        arrayList.add(VideoItemFragment.o(e.a("BlFb")));
        arrayList.add(VideoItemFragment.o(e.a("BlFW")));
        arrayList.add(VideoItemFragment.o(e.a("AVE=")));
        arrayList.add(VideoItemFragment.o(e.a("AVM=")));
        arrayList.add(VideoItemFragment.o(e.a("AVc=")));
        arrayList.add(VideoItemFragment.o(e.a("BlBU")));
        arrayList.add(VideoItemFragment.o(e.a("BlBX")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0sbEMg=="), e.a("0OHOjfzb"), e.a("0vnegNHU"), e.a("diuF/OWVoayV65aP/NI="), e.a("0NnfjOLJ"), e.a("3/L+jOX6"), e.a("djQ="), e.a("0ujLgtfY"), e.a("0c7Eg9X9"), e.a("3v3KgfDO")};
    }
}
