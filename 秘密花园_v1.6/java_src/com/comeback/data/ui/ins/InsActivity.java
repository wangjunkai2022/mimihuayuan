package com.comeback.data.ui.ins;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.ins.InsActivity;
import com.comeback.data.ui.ins.fragment.ImageFragment;
import com.comeback.data.ui.ins.fragment.SearchFragment;
import com.comeback.data.ui.ins.fragment.VideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.s.e.b;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class InsActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1150c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.s.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return InsActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, InsActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ins_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new ImageFragment());
        this.b.add(new VideoFragment());
        this.b.add(new SearchFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_home);
        this.navigation.setOnNavigationItemSelectedListener(this.f1150c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_image) {
            this.viewPager.setCurrentItem(0, false);
            return true;
        } else if (itemId == R.id.navigation_search) {
            this.viewPager.setCurrentItem(2, false);
            return true;
        } else if (itemId != R.id.navigation_video) {
            return false;
        } else {
            this.viewPager.setCurrentItem(1, false);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (b.class) {
            b.b = null;
        }
    }
}
