package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.fulao2.fragment.TypeListFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TypeDetailActivity extends BaseViewPagerActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public int f796c;
    @BindView
    public TextView tvTitle;

    public static void n(Context context, String str, int i2) {
        Intent intent = new Intent(context, TypeDetailActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("VAMXAQwcS0osD1A="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f796c = intent.getIntExtra(e.a("VAMXAQwcS0osD1A="), 0);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lutube_video;
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
        arrayList.add(TypeListFragment.o(e.a("QgwACx0WSw=="), this.f796c));
        arrayList.add(TypeListFragment.o(e.a("VA0VARk="), this.f796c));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0fXDg8vy"), e.a("0f7qg8vy")};
    }
}
