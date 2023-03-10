package com.comeback.data.ui.sex8.ui;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.sex8.fragment.LoufengListFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class LouFengActivity extends BaseViewPagerActivity {
    public static void n(Context context) {
        a.u(context, LouFengActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_loufeng;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(LoufengListFragment.n(0, 0));
        arrayList.add(LoufengListFragment.n(1, 1));
        arrayList.add(LoufengListFragment.n(2, 2));
        arrayList.add(LoufengListFragment.n(5, 7));
        arrayList.add(LoufengListFragment.n(5, 10));
        arrayList.add(LoufengListFragment.n(3, 3));
        arrayList.add(LoufengListFragment.n(4, 4));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0ufLgfDO"), e.a("0u70gNHf"), e.a("09rpgt7E"), e.a("0tvcgdzt"), e.a("0dXSgffA"), e.a("3uXugdH1"), e.a("0vn4gdzu")};
    }
}
