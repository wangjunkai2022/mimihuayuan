package com.comeback.data.ui.bale;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import androidx.fragment.app.FragmentManager;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.bale.bean.ScreenBean;
import com.comeback.data.ui.bale.fragment.ScreenFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;
import java.util.ArrayList;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class ScreenActivity extends BaseActivity {

    /* renamed from: e  reason: collision with root package name */
    public static ScreenBean f261e;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f262c;

    /* renamed from: d  reason: collision with root package name */
    public int f263d = 0;
    @BindView
    public CustomViewPager viewPager;

    /* loaded from: classes.dex */
    public class a extends j<ScreenBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ScreenBean screenBean) {
            ScreenBean screenBean2 = screenBean;
            ScreenActivity.f261e = screenBean2;
            List<ScreenBean.ResultBean> result = screenBean2.getResult();
            ScreenBean.ResultBean resultBean = new ScreenBean.ResultBean();
            resultBean.setId(-1);
            resultBean.setTitle(e.a("0ufLjejb"));
            result.add(0, resultBean);
            ScreenActivity.this.l();
        }
    }

    public static void m(Context context, int i2, int i3) {
        Intent intent = new Intent(context, ScreenActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        intent.putExtra(e.a("QwMELQ8="), i3);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getIntExtra(e.a("XgY="), -1);
        this.f262c = intent.getIntExtra(e.a("QwMELQ8="), -1);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_bale_screen;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        if (f261e == null) {
            k(b.a().f(), new a());
        } else {
            l();
        }
    }

    public final void l() {
        List<ScreenBean.ResultBean> result = f261e.getResult();
        ArrayList arrayList = new ArrayList();
        for (ScreenBean.ResultBean resultBean : result) {
            arrayList.add(ScreenFragment.o(resultBean.getId(), this.f262c));
        }
        this.viewPager.setOffscreenPageLimit(arrayList.size() + (-1) <= 8 ? arrayList.size() - 1 : 8);
        CustomViewPager customViewPager = this.viewPager;
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        int size = result.size();
        String[] strArr = new String[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = result.get(i2).getTitle();
            if (this.b == result.get(i2).getId()) {
                this.f263d = i2;
            }
        }
        customViewPager.setAdapter(new BaseViewPagerAdapter(supportFragmentManager, strArr, arrayList));
        this.viewPager.setCurrentItem(this.f263d);
    }
}
