package com.comeback.data.ui.mimei;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.mimei.fragment.CTypeFragment;
import com.comeback.data.ui.mimei.fragment.NTypeFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ComicTypeActivity extends BaseViewPagerActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1747c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1748d;
    @BindView
    public TextView tvTitle;

    public static void n(Context context, String str, String str2, boolean z) {
        Intent intent = new Intent(context, ComicTypeActivity.class);
        intent.putExtra(e.a("XAca"), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        intent.putExtra(e.a("XhEgCwYaWg=="), z);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("XAca"));
        this.f1747c = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1748d = intent.getBooleanExtra(e.a("XhEgCwYaWg=="), true);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_viewpage;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.f1747c);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        if (this.f1748d) {
            arrayList.add(CTypeFragment.o(4, this.b));
            arrayList.add(CTypeFragment.o(1, this.b));
            arrayList.add(CTypeFragment.o(3, this.b));
            arrayList.add(CTypeFragment.o(6, this.b));
            arrayList.add(CTypeFragment.o(5, this.b));
            arrayList.add(CTypeFragment.o(2, this.b));
        } else {
            arrayList.add(NTypeFragment.o(1, this.b));
            arrayList.add(NTypeFragment.o(2, this.b));
            arrayList.add(NTypeFragment.o(3, this.b));
            arrayList.add(NTypeFragment.o(4, this.b));
            arrayList.add(NTypeFragment.o(5, this.b));
            arrayList.add(NTypeFragment.o(6, this.b));
            arrayList.add(NTypeFragment.o(7, this.b));
            arrayList.add(NTypeFragment.o(8, this.b));
        }
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return this.f1748d ? new String[]{e.a("3v3KgtfY"), e.a("0u/2jMr/36/f"), e.a("0vLvgNHJ"), e.a("dA0Q"), e.a("dCWG/9U="), e.a("0P3Og8T0")} : new String[]{e.a("393ygNHB3YrCgojB"), e.a("0urVgvf+0ZzCgLf2"), e.a("0s/Fg//s35PSg6/K"), e.a("0t7Zgc7L3LT/jorW"), e.a("0dXIjOLB3YnJg5Lc"), e.a("0dL3jN/b3o39g5HU"), e.a("0Nnsge7L0brBgLfi"), e.a("0eHmgsfB357VgorH")};
    }
}
