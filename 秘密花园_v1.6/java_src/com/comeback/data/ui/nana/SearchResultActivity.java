package com.comeback.data.ui.nana;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.nana.fragment.SearchFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SearchResultActivity extends BaseViewPagerActivity {
    public String b;

    public static void n(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        a.v("XAca", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_nana_type;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFJTVFtDCQ==")));
        super.e();
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(SearchFragment.o(e.a("RAoMFh8="), this.b));
        arrayList.add(SearchFragment.o(e.a("Ww0NAw=="), this.b));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0uz8gePo"), e.a("djQ=")};
    }
}
