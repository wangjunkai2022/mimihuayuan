package com.comeback.data.ui.hgl;

import android.content.Context;
import android.os.Bundle;
import android.view.MenuItem;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.hgl.MyLiveActivity;
import com.comeback.data.ui.hgl.fragment.ChannelFragment;
import com.comeback.data.ui.hgl.fragment.HotFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MyLiveActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1020c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.p.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return MyLiveActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        if (h.x(context, e.a("0f7Pjcni0LLggaDWnNHGj4/pAhQbm4ytluydg8DghfWBjd/oj8uy287b0cnxgsDu09rogePkWEMDg7nUneXMjZrBhtzTl4SMlPKcgeTGismmi+L3hM+11ff53Nfaj8fM0szVg/H336fcgLjmm+rh"))) {
            a.u(context, MyLiveActivity.class);
        }
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hgl_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HotFragment());
        this.b.add(ChannelFragment.n(true));
        ArrayList<BaseFragment> arrayList2 = this.b;
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("VAoCCgUWVQI="), false);
        ChannelFragment channelFragment = new ChannelFragment();
        channelFragment.setArguments(bundle);
        arrayList2.add(channelFragment);
        a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1020c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_channel1 /* 2131296606 */:
                this.viewPager.setCurrentItem(1);
                return true;
            case R.id.navigation_channel2 /* 2131296607 */:
                this.viewPager.setCurrentItem(2);
                return true;
            case R.id.navigation_hot /* 2131296618 */:
                this.viewPager.setCurrentItem(0);
                return true;
            default:
                return false;
        }
    }
}
