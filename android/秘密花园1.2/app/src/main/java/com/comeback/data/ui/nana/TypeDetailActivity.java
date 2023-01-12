package com.comeback.data.ui.nana;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.nana.fragment.VideoListFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TypeDetailActivity extends BaseViewPagerActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1845c;

    public static void n(Context context, String str, String str2) {
        Intent intent = new Intent(context, TypeDetailActivity.class);
        intent.putExtra(e.a("VAMXAQwcS0o="), str);
        intent.putExtra(e.a("QQsHAQQnQEMW"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("VAMXAQwcS0o="));
        this.f1845c = intent.getStringExtra(e.a("QQsHAQQnQEMW"));
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
        arrayList.add(VideoListFragment.p(this.f1845c, e.a("QwsOAQ=="), this.b));
        arrayList.add(VideoListFragment.p(this.f1845c, e.a("QQsGExg="), this.b));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0f7jgv3D"), e.a("0OHOjfzb")};
    }
}
