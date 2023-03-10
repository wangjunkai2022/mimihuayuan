package com.comeback.data.ui.sex8.ui;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.sex8.fragment.LongFragment;
import com.comeback.data.ui.sex8.fragment.OtherFragment;
import com.comeback.data.ui.sex8.fragment.RankingFragment;
import com.comeback.data.ui.sex8.fragment.SaoMaiFragment;
import com.comeback.data.ui.sex8.fragment.ShortFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class YXActivity extends BaseViewPagerActivity {
    public static void n(Context context) {
        a.u(context, YXActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_fm;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(new RankingFragment());
        arrayList.add(new LongFragment());
        arrayList.add(new ShortFragment());
        arrayList.add(new SaoMaiFragment());
        arrayList.add(new OtherFragment());
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0ezxjMr/"), e.a("3vfcg8T0"), e.a("0P3Og8T0"), e.a("3sj5jdHV"), e.a("0ufVgNDl")};
    }
}
