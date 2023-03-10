package com.comeback.data.ui.bale.fragment;

import android.view.View;
import butterknife.OnClick;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerFragment;
import com.comeback.data.ui.bale.ScreenActivity;
import com.comeback.data.ui.bale.SearchActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class HomeFragment extends BaseViewPagerFragment {
    @Override // com.comeback.data.base.BaseViewPagerFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_bale_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public ArrayList<BaseFragment> h() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(HomeTypeFragment.q("", -1));
        arrayList.add(HomeTypeFragment.q(e.a("3sn3gt3B"), 113));
        arrayList.add(HomeTypeFragment.q(e.a("0ujkguj2"), 52));
        arrayList.add(HomeTypeFragment.q(e.a("0PX6gv/Q"), 54));
        arrayList.add(HomeTypeFragment.q(e.a("0dXSgf36"), 64));
        arrayList.add(HomeTypeFragment.q(e.a("0d/NgfvK"), 67));
        arrayList.add(HomeTypeFragment.q(e.a("397JgczV"), 68));
        arrayList.add(HomeTypeFragment.q(e.a("09vQgNHX"), 70));
        arrayList.add(HomeTypeFragment.q(e.a("3sPsgdv3"), 75));
        arrayList.add(HomeTypeFragment.q(e.a("0u3AgNHX"), 78));
        arrayList.add(HomeTypeFragment.q(e.a("39TQgNHX"), 79));
        arrayList.add(HomeTypeFragment.q(e.a("0evogtzY"), 95));
        arrayList.add(HomeTypeFragment.q(e.a("0ezLgtnK37/6gKXO"), 103));
        arrayList.add(HomeTypeFragment.q(e.a("0sfQgv7q3IvY"), 43));
        arrayList.add(HomeTypeFragment.q(e.a("0sfQje3Y3qfs"), 36));
        arrayList.add(HomeTypeFragment.q(e.a("0ObCg8nP"), 2));
        arrayList.add(HomeTypeFragment.q(e.a("3tnygNHJ"), 4));
        arrayList.add(HomeTypeFragment.q(e.a("0M7PgNPz0ZXljpP1"), 6));
        arrayList.add(HomeTypeFragment.q(e.a("0dXKjNXC"), 7));
        arrayList.add(HomeTypeFragment.q(e.a("09rugevY"), 8));
        arrayList.add(HomeTypeFragment.q(e.a("09rOgezJ"), 14));
        arrayList.add(HomeTypeFragment.q(e.a("0P3OjcDd"), 15));
        arrayList.add(HomeTypeFragment.q(e.a("0PvCgc7A"), 16));
        arrayList.add(HomeTypeFragment.q(e.a("09jZgc3I"), 17));
        arrayList.add(HomeTypeFragment.q(e.a("0sfQgvvv36zWg5r/"), 18));
        arrayList.add(HomeTypeFragment.q(e.a("0Nztgdvi3JbA"), 26));
        arrayList.add(HomeTypeFragment.q(e.a("0PvCgtfR"), 1));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerFragment
    public String[] i() {
        return new String[]{e.a("0ufLjejb"), e.a("3sn3gt3B"), e.a("0ujkguj2"), e.a("0PX6gv/Q"), e.a("0dXSgf36"), e.a("0d/NgfvK"), e.a("397JgczV"), e.a("09vQgNHX"), e.a("3sPsgdv3"), e.a("0u3AgNHX"), e.a("39TQgNHX"), e.a("0evogtzY"), e.a("0ezLgtnK37/6gKXO"), e.a("0sfQgv7q3IvY"), e.a("0sfQje3Y3qfs"), e.a("0ObCg8nP"), e.a("3tnygNHJ"), e.a("0M7PgNPz0ZXljpP1"), e.a("0dXKjNXC"), e.a("09rugevY"), e.a("09rOgezJ"), e.a("0P3OjcDd"), e.a("0PvCgc7A"), e.a("09jZgc3I"), e.a("0sfQgvvv36zWg5r/"), e.a("0Nztgdvi3JbA"), e.a("0PvCgtfR")};
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.iv_screen) {
            ScreenActivity.m(getContext(), -1, -1);
        } else if (id != R.id.tv_search) {
        } else {
            SearchActivity.m(getContext());
        }
    }
}
