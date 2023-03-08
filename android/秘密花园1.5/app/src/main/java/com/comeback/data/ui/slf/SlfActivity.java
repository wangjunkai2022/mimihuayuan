package com.comeback.data.ui.slf;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.slf.SlfActivity;
import com.comeback.data.ui.slf.fragment.CartoonFragment;
import com.comeback.data.ui.slf.fragment.ImageFragment;
import com.comeback.data.ui.slf.fragment.MeFragment;
import com.comeback.data.ui.slf.fragment.NovelFragment;
import com.comeback.data.ui.slf.fragment.VideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SlfActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2038c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.l0.e
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return SlfActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, SlfActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FCQnUV5FDg==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new CartoonFragment());
        this.b.add(new VideoFragment());
        this.b.add(new ImageFragment());
        this.b.add(new NovelFragment());
        this.b.add(new MeFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2038c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_cartoon /* 2131296609 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.navigation_image /* 2131296623 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            case R.id.navigation_me /* 2131296625 */:
                this.viewPager.setCurrentItem(4, false);
                return true;
            case R.id.navigation_novel /* 2131296629 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.navigation_video /* 2131296639 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            default:
                return false;
        }
    }
}
