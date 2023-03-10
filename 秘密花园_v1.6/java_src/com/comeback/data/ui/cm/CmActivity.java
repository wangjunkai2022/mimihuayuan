package com.comeback.data.ui.cm;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cm.CmActivity;
import com.comeback.data.ui.cm.fragment.DiscoverFragment;
import com.comeback.data.ui.cm.fragment.HomeFragment;
import com.comeback.data.ui.cm.fragment.MineFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.e.f.b;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CmActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f316c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.e.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return CmActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, CmActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cm_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new DiscoverFragment());
        this.b.add(new MineFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f316c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_discover) {
            this.viewPager.setCurrentItem(1, false);
            return true;
        } else if (itemId == R.id.navigation_home) {
            this.viewPager.setCurrentItem(0, false);
            return true;
        } else if (itemId != R.id.navigation_me) {
            return false;
        } else {
            this.viewPager.setCurrentItem(2, false);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        synchronized (b.class) {
            b.b = null;
        }
        super.onDestroy();
    }
}
