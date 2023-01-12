package com.comeback.data.ui.md;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.md.MdActivity;
import com.comeback.data.ui.md.fragment.ChanelFragment;
import com.comeback.data.ui.md.fragment.HomeFragment;
import com.comeback.data.ui.md.fragment.SearchFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.e0.d.e;
import f.e.a.k.b;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MdActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1712c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.e0.b
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return MdActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        e.f3920c = b.p0;
        a.u(context, MdActivity.class);
    }

    public static void n(Context context) {
        e.f3920c = b.q0;
        a.u(context, MdActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_md_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new ChanelFragment());
        this.b.add(new SearchFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_home);
        this.navigation.setOnNavigationItemSelectedListener(this.f1712c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_dashboard) {
            this.viewPager.setCurrentItem(1, false);
            return true;
        } else if (itemId == R.id.navigation_home) {
            this.viewPager.setCurrentItem(0, false);
            return true;
        } else if (itemId != R.id.navigation_search) {
            return false;
        } else {
            this.viewPager.setCurrentItem(2, false);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e.a();
    }
}
