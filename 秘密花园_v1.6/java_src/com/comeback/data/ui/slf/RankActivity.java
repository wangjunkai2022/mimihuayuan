package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.slf.fragment.RankFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class RankActivity extends BaseViewPagerActivity {
    public String b;

    public static void n(Context context, String str) {
        Intent intent = new Intent(context, RankActivity.class);
        a.v("QxsTAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_rank;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FCQnUV5FDg==")));
        super.e();
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(RankFragment.o(this.b, e.a("Xw0X")));
        arrayList.add(RankFragment.o(this.b, e.a("UQMVCxkaTVY=")));
        arrayList.add(RankFragment.o(this.b, e.a("RAMPAQ==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("09jZgtvn35Xv"), e.a("0fbVjPz835Xv"), e.a("0OHOjf/z35Xv")};
    }
}
