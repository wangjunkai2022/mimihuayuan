package com.comeback.data.ui.iqiyi;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.iqiyi.fragment.UserCenterFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UserCenterActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1211c;

    /* renamed from: d  reason: collision with root package name */
    public String f1212d;
    @BindView
    public ImageView ivHeader;
    @BindView
    public TabLayout tabLayout;
    @BindView
    public TextView tvName;
    @BindView
    public CustomViewPager viewPager;

    public static void l(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, UserCenterActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        intent.putExtra(e.a("XwcCACIeWFQW"), str3);
        intent.addFlags(603979776);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
        this.f1211c = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1212d = intent.getStringExtra(e.a("XwcCACIeWFQW"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_iqiyi_user;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFIFVVlBDQ==")));
        h(Color.parseColor(e.a("FFIFVVlBDQ==")));
        h.E0(this.f1212d, this.ivHeader);
        this.tvName.setText(this.f1211c);
        this.viewPager.setScrollable(true);
        ArrayList arrayList = new ArrayList();
        arrayList.add(UserCenterFragment.o(this.b, true));
        arrayList.add(UserCenterFragment.o(this.b, false));
        a.E(arrayList, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), new String[]{e.a("09//gfjy"), e.a("0vT/gsfR")}, arrayList));
        this.tabLayout.setupWithViewPager(this.viewPager);
    }
}
