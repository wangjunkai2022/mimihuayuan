package com.comeback.data.ui.lutube;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.lutube.MainActivity;
import com.comeback.data.ui.lutube.fragment.HomeAVFragment;
import com.comeback.data.ui.lutube.fragment.HomeCollectFragment;
import com.comeback.data.ui.lutube.fragment.HomeTypeFragment;
import com.comeback.data.ui.lutube.fragment.HomeVideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.b0.k.d;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1474c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.b0.b
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
        return R.layout.activity_lutube_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FAQCAgoVWA==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeAVFragment());
        this.b.add(new HomeVideoFragment());
        this.b.add(new HomeTypeFragment());
        this.b.add(new HomeCollectFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1474c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_av /* 2131296608 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.navigation_collect /* 2131296613 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.navigation_type /* 2131296637 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            case R.id.navigation_video /* 2131296639 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            default:
                return false;
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
