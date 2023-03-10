package com.comeback.data.ui.mimei;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.mimei.fragment.SearchResultFragment;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SearchResultActivity extends BaseViewPagerActivity {
    public String b;
    @BindView
    public TextView tvTitle;

    public static void n(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        a.v("WQMOAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_search_result;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.b);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(SearchResultFragment.q(true, this.b));
        arrayList.add(SearchResultFragment.q(false, this.b));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0d7Ig//I"), e.a("0tLsjMTH")};
    }
}
