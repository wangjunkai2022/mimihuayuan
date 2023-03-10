package com.comeback.data.ui.ds;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.ds.DsActivity;
import com.comeback.data.ui.ds.fragment.CollectFragment;
import com.comeback.data.ui.ds.fragment.DiscoverFragment;
import com.comeback.data.ui.ds.fragment.RecommendFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class DsActivity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    public static String f593d = "";
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f594c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.i.b
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return DsActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        f593d = e.a("BQ==");
        a.u(context, DsActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ds_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new RecommendFragment());
        this.b.add(new DiscoverFragment());
        this.b.add(new CollectFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f594c);
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
