package com.comeback.data.ui.fulao2;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.fulao2.FuLao2Activity;
import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.fragment.CollectFragment;
import com.comeback.data.ui.fulao2.fragment.CoverFragment;
import com.comeback.data.ui.fulao2.fragment.DiscoverFragment;
import com.comeback.data.ui.fulao2.fragment.HostFragment;
import com.comeback.data.ui.fulao2.fragment.UncoverFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.l.h.f;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FuLao2Activity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    public static Host f772d;
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f773c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.l.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return FuLao2Activity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, FuLao2Activity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fulao2_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new UncoverFragment());
        this.b.add(new CoverFragment());
        this.b.add(new DiscoverFragment());
        this.b.add(new CollectFragment());
        this.b.add(new HostFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f773c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_collect /* 2131296613 */:
                this.viewPager.setCurrentItem(3, false);
                this.navigation.setBackground(getResources().getDrawable(R.drawable.mask_nav_bar_favorite));
                return true;
            case R.id.navigation_cover /* 2131296615 */:
                this.viewPager.setCurrentItem(1, false);
                this.navigation.setBackground(getResources().getDrawable(R.drawable.mask_nav_bar_cover));
                return true;
            case R.id.navigation_discover /* 2131296617 */:
                this.viewPager.setCurrentItem(2, false);
                this.navigation.setBackground(getResources().getDrawable(R.drawable.mask_nav_bar_explore));
                return true;
            case R.id.navigation_me /* 2131296625 */:
                this.viewPager.setCurrentItem(4, false);
                this.navigation.setBackground(getResources().getDrawable(R.drawable.mask_nav_bar_account));
                return true;
            case R.id.navigation_uncover /* 2131296638 */:
                this.viewPager.setCurrentItem(0, false);
                this.navigation.setBackground(getResources().getDrawable(R.drawable.mask_nav_bar_uncover));
                return true;
            default:
                return false;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f.a();
    }
}
