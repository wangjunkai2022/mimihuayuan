package com.comeback.data.ui.maomi;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.maomi.MainActivity;
import com.comeback.data.ui.maomi.fragment.DiscoverFragment;
import com.comeback.data.ui.maomi.fragment.ShortFragment;
import com.comeback.data.ui.maomi.fragment.VideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.d0.m.d;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1610c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.d0.a
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
        return R.layout.activity_mm_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new VideoFragment());
        this.b.add(new ShortFragment());
        this.b.add(new DiscoverFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1610c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_discover) {
            this.navigation.setBackgroundColor(-1);
            j(-1);
            this.viewPager.setCurrentItem(2, false);
            return true;
        } else if (itemId == R.id.navigation_short) {
            j(-16777216);
            this.viewPager.setCurrentItem(1, false);
            this.navigation.setBackgroundColor(Color.parseColor(e.a("FFBRVllBCw==")));
            return true;
        } else if (itemId != R.id.navigation_video) {
            return false;
        } else {
            j(-1);
            this.viewPager.setCurrentItem(0, false);
            this.navigation.setBackgroundColor(-1);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (d.class) {
            d.b = null;
        }
    }
}
