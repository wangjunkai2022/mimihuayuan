package com.comeback.data.ui.iqiyi;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.iqiyi.IQYMainActivity;
import com.comeback.data.ui.iqiyi.fragment.ChoiceFragment;
import com.comeback.data.ui.iqiyi.fragment.DiscoverFragment;
import com.comeback.data.ui.iqiyi.fragment.HomeFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class IQYMainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1130c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.s.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return IQYMainActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, IQYMainActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_iqiyi_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-16777216);
        h(Color.parseColor(e.a("FFIFVVlBDQ==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new ChoiceFragment());
        this.b.add(new DiscoverFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1130c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_choice) {
            j(Color.parseColor(e.a("FFIFVVlBDQ==")));
            this.viewPager.setCurrentItem(1, false);
            return true;
        } else if (itemId == R.id.navigation_discover) {
            j(Color.parseColor(e.a("FFIFVVlBDQ==")));
            this.viewPager.setCurrentItem(2, false);
            return true;
        } else if (itemId != R.id.navigation_home) {
            return false;
        } else {
            j(-16777216);
            this.viewPager.setCurrentItem(0, false);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        VideoPlayerManager.getInstance().onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        VideoPlayerManager.getInstance().onPause(true);
    }
}
