package com.comeback.data.ui.gkj;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.commom.fragment.DevelopFragment;
import com.comeback.data.ui.gkj.GKJActivity;
import com.comeback.data.ui.gkj.fragment.HomeFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.m.p.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class GKJActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f877c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.m.b
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return GKJActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, GKJActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hm_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new DevelopFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f877c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_collect) {
            this.viewPager.setCurrentItem(1, false);
            return true;
        } else if (itemId != R.id.navigation_type) {
            return false;
        } else {
            this.viewPager.setCurrentItem(0, false);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        e.a();
    }
}
