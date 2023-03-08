package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cucumber.fragment.ColumnFragment;
import com.comeback.data.ui.cucumber.fragment.HomeFragment;
import com.comeback.data.ui.cucumber.fragment.MineFragment;
import com.comeback.data.ui.cucumber.fragment.RankFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.j.g.h.c;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CucumberActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f413c = new a();
    @BindView
    public RadioGroup rgTab;
    @BindView
    public CustomViewPager viewPager;

    /* loaded from: classes.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.rb_column /* 2131296716 */:
                    CucumberActivity.this.viewPager.setCurrentItem(1, false);
                    return;
                case R.id.rb_home /* 2131296722 */:
                    CucumberActivity.this.viewPager.setCurrentItem(0, false);
                    return;
                case R.id.rb_mine /* 2131296724 */:
                    CucumberActivity.this.viewPager.setCurrentItem(3, false);
                    return;
                case R.id.rb_rank /* 2131296730 */:
                    CucumberActivity.this.viewPager.setCurrentItem(2, false);
                    return;
                default:
                    return;
            }
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, CucumberActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new ColumnFragment());
        this.b.add(new RankFragment());
        this.b.add(new MineFragment());
        f.b.a.a.a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.rgTab.setOnCheckedChangeListener(this.f413c);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (c.class) {
            c.b = null;
        }
    }
}
