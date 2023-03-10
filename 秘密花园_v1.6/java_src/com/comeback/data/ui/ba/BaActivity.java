package com.comeback.data.ui.ba;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.ba.BaActivity;
import com.comeback.data.ui.ba.fragment.CollectFragment;
import com.comeback.data.ui.ba.fragment.DiscoverFragment;
import com.comeback.data.ui.ba.fragment.RecommendFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BaActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f221c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.c.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return BaActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, BaActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ba_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new RecommendFragment());
        this.b.add(new DiscoverFragment());
        this.b.add(new CollectFragment());
        a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f221c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_collect) {
            this.viewPager.setCurrentItem(2);
            return true;
        } else if (itemId == R.id.navigation_discover) {
            this.viewPager.setCurrentItem(1);
            return true;
        } else if (itemId != R.id.navigation_recommend) {
            return false;
        } else {
            this.viewPager.setCurrentItem(0);
            return true;
        }
    }
}
