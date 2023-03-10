package com.comeback.data.ui.jav;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.jav.fragment.VideoListFragment;
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
        return R.layout.activity_jav_search;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(e.a("0fL/g9/R3ojggKr7"));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        a.B(sb, f.e.a.j.v.e.a.a, "GBEGBRkQUQwVW1ULFEwSVg==");
        sb.append(this.b);
        arrayList.add(VideoListFragment.o(sb.toString(), true));
        StringBuilder sb2 = new StringBuilder();
        a.B(sb2, f.e.a.j.v.e.a.a, "GBEGBRkQUQwVW1UEDAURTUZf");
        sb2.append(this.b);
        arrayList.add(VideoListFragment.o(sb2.toString(), false));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0t/Sg+L0"), e.a("0d73gfjS")};
    }
}
