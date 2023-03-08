package com.comeback.data.ui.avbobo;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.avbobo.MainActivity;
import com.comeback.data.ui.avbobo.fragment.HomeFragment;
import com.comeback.data.ui.avbobo.fragment.HotFragment;
import com.comeback.data.ui.avbobo.fragment.MeFragment;
import com.comeback.data.ui.avbobo.fragment.SearchFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.b.g.b;
import f.e.a.j.b.g.d;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f154c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.b.a
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
        return R.layout.activity_avbobo_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new HotFragment());
        this.b.add(new SearchFragment());
        this.b.add(new MeFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f154c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        h.c0(this);
        switch (menuItem.getItemId()) {
            case R.id.navigation_home /* 2131296621 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.navigation_hot /* 2131296622 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            case R.id.navigation_me /* 2131296625 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.navigation_search /* 2131296633 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            default:
                return false;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (d.class) {
            synchronized (b.class) {
                b.f3896e = null;
            }
            d.b = null;
        }
    }
}
