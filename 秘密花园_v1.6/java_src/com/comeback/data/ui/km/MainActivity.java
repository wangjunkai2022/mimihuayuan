package com.comeback.data.ui.km;

import android.content.Context;
import android.view.MenuItem;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.km.MainActivity;
import com.comeback.data.ui.km.bean.KMInfo;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.x.f;
import f.e.a.j.x.g.d;
import java.util.ArrayList;
import java.util.HashMap;
import m.j;
/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public j f1361c;

    /* renamed from: d  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1362d = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.x.a
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
        return R.layout.activity_km_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new DisCoverFragment());
        this.b.add(new MineFragment());
        HashMap hashMap = new HashMap();
        hashMap.put(a.i("cVNTISpEfQNBVQJRTiwiWwVUW1JbQwEBRycAXj5TV1I=", hashMap, a.i("BVE=", hashMap, a.i("AUxTSlo=", hashMap, a.i("ehcuEQ==", hashMap, a.i("BkxSSlw=", hashMap, e.a("aAMTFDQFXEEAD1sJ"), "aAYGEgIQXGwHH0QC"), "aAYGEgIQXGwFA0YUEQUN"), "aBEHDzQFXEEAD1sJ"), "UwMXBQ=="), "RAsE"), e.a("UQABXQ1ADlEVXwBVTV9SCAEDUl1TRQ4EEl9QX0kJW14="));
        m.e<KMInfo> d2 = d.a().d(hashMap);
        f fVar = new f(this);
        this.f1361c = fVar;
        k(d2, fVar);
        a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1362d);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_discover) {
            this.viewPager.setCurrentItem(0);
            return true;
        } else if (itemId != R.id.navigation_mine) {
            return false;
        } else {
            this.viewPager.setCurrentItem(1);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1361c.a.c();
        synchronized (d.class) {
            d.b = null;
        }
    }
}
