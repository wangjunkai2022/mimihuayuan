package com.comeback.data.ui.gdian;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.gdian.GDianActivity;
import com.comeback.data.ui.gdian.fragment.ImageFragment;
import com.comeback.data.ui.gdian.fragment.LiveFragment;
import com.comeback.data.ui.gdian.fragment.NovelFragment;
import com.comeback.data.ui.gdian.fragment.VideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.j.m.e.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class GDianActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f876c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.m.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return GDianActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, GDianActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gdian_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new VideoFragment());
        this.b.add(new ImageFragment());
        this.b.add(new NovelFragment());
        this.b.add(new LiveFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_home);
        this.navigation.setOnNavigationItemSelectedListener(this.f876c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_image /* 2131296623 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            case R.id.navigation_live /* 2131296624 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.navigation_novel /* 2131296629 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            case R.id.navigation_video /* 2131296639 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            default:
                return false;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (e.class) {
            e.b = null;
        }
    }
}
