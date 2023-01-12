package com.comeback.data.ui.gkj;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.gkj.fragment.RankFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankActivity extends BaseViewPagerActivity {
    public static void n(Context context) {
        a.u(context, RankActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_rank;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(RankFragment.o(e.a("XwMNCQod")));
        arrayList.add(RankFragment.o(e.a("Xw8CCg==")));
        arrayList.add(RankFragment.o(e.a("VgwKCQ4=")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("3v3KgtfY"), e.a("f4Tfzw=="), e.a("0ujLgtfY")};
    }
}
