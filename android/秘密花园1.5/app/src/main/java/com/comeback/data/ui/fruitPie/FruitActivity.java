package com.comeback.data.ui.fruitPie;

import android.content.Context;
import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.fruitPie.fragment.AuthorFragment;
import com.comeback.data.ui.fruitPie.fragment.DiscoverFragment;
import com.comeback.data.ui.fruitPie.fragment.HomeFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.j.k.b.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FruitActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f702c = new a();
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
                case R.id.tab_anchor /* 2131296854 */:
                    FruitActivity.this.viewPager.setCurrentItem(2, false);
                    return;
                case R.id.tab_discover /* 2131296855 */:
                    FruitActivity.this.viewPager.setCurrentItem(1, false);
                    return;
                case R.id.tab_layout /* 2131296856 */:
                default:
                    return;
                case R.id.tab_main_page /* 2131296857 */:
                    FruitActivity.this.viewPager.setCurrentItem(0, false);
                    return;
            }
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, FruitActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fruit_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new DiscoverFragment());
        this.b.add(new AuthorFragment());
        f.b.a.a.a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.rgTab.setOnCheckedChangeListener(this.f702c);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (b.class) {
            b.b = null;
        }
    }
}
