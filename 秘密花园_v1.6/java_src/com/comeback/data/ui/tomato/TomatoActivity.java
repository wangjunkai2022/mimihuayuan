package com.comeback.data.ui.tomato;

import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.tomato.TomatoActivity;
import com.comeback.data.ui.tomato.fragment.HomeFragment;
import com.comeback.data.ui.tomato.fragment.LiveFragment;
import com.comeback.data.ui.tomato.fragment.PapaFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class TomatoActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2162c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.n0.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return TomatoActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_tomato_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FAQCAgoVWA==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new LiveFragment());
        this.b.add(new HomeFragment());
        this.b.add(new PapaFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2162c);
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
    }
}
