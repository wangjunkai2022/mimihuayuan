package com.comeback.data.ui.xiami;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.xiami.MainActivity;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.data.ui.xiami.fragment.HomeFragment;
import com.comeback.data.ui.xiami.fragment.HotFragment;
import com.comeback.data.ui.xiami.fragment.SpecialFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    public static Category f2136d;
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2137c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.p0.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return MainActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, MainActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFMFVV5BAA==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new HotFragment());
        this.b.add(new SpecialFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2137c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_home /* 2131296617 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.navigation_hot /* 2131296618 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            case R.id.navigation_special /* 2131296631 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            default:
                return false;
        }
    }
}
