package com.comeback.data.ui.km;

import android.os.Bundle;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class DisCoverFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_km_viewpage;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(VideoFragment.n(true));
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhErCx8="), false);
        VideoFragment videoFragment = new VideoFragment();
        videoFragment.setArguments(bundle);
        arrayList.add(videoFragment);
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0OHOjfzb"), e.a("0tvcgffJ")};
    }
}
