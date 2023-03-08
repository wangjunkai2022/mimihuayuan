package com.comeback.data.ui.fruitPie;

import android.content.Context;
import android.content.Intent;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.fruitPie.fragment.H5Fragment;
import com.comeback.data.ui.fruitPie.fragment.NativePlayFragment;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import f.e.a.f.l;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DetailActivity extends BaseViewPagerActivity {
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public String f701c;

    public static void n(Context context, int i2, String str) {
        Intent intent = new Intent(context, DetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        intent.putExtra(e.a("QxsTAQ=="), str);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getIntExtra(e.a("XgY="), 1);
        this.f701c = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_furit_detail;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        super.e();
        TabLayout tabLayout = this.mTabLayout;
        tabLayout.post(new l(this, tabLayout, 120));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(H5Fragment.i(this.b, this.f701c));
        arrayList.add(new NativePlayFragment());
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0c/Agv30"), e.a("0uz8g+L0")};
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        NativePlayFragment.f758h = "";
    }
}
