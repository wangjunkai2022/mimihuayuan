package com.comeback.data.ui.iqiyi;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.iqiyi.fragment.CategoryFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CategoryActivity extends BaseViewPagerActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1199c;
    @BindView
    public TextView tvTitle;

    public static void n(Context context, String str, String str2) {
        Intent intent = new Intent(context, CategoryActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XgY="));
        this.f1199c = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_iqiyi_category;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(Color.parseColor(e.a("FFIFVVlBDQ==")));
        h(Color.parseColor(e.a("FFIFVVlBDQ==")));
        this.tvTitle.setText(this.f1199c);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(CategoryFragment.o(this.b, e.a("QwsOAQ==")));
        arrayList.add(CategoryFragment.o(this.b, e.a("RQcACwYeXF0X")));
        arrayList.add(CategoryFragment.o(this.b, e.a("VA4KBwA=")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0ezLjObj"), e.a("0f7jgv3D"), e.a("09jZgtvn")};
    }
}
