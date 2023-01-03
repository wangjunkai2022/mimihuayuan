package com.comeback.data.ui.xj;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.xj.MainActivity;
import com.comeback.data.ui.xj.fragment.ChannelFragment;
import com.comeback.data.ui.xj.fragment.HomeFragment;
import com.comeback.data.ui.xj.fragment.HotFragment;
import com.comeback.data.ui.xj.fragment.ShortFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2187c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.r0.a
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
        return R.layout.activity_xj_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        h(Color.parseColor(e.a("FFBVVlJBfw==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new ChannelFragment());
        this.b.add(new ShortFragment());
        this.b.add(new HotFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2187c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.menu_chanel /* 2131296588 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            case R.id.menu_home /* 2131296589 */:
                i();
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.menu_hot /* 2131296590 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.menu_short /* 2131296591 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            default:
                return false;
        }
    }
}
