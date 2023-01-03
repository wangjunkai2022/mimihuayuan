package com.comeback.data.ui.tv91;

import android.content.Context;
import android.graphics.Color;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.tv91.MainActivity;
import com.comeback.data.ui.tv91.fragment.HomeFragment;
import com.comeback.data.ui.tv91.fragment.NovelFragment;
import com.comeback.data.ui.tv91.fragment.StarFragment;
import com.comeback.data.ui.tv91.fragment.TypeFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.j;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public NovelFragment f2086c;

    /* renamed from: d  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2087d = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.n0.a
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
        return R.layout.activity_tv91_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFMmVS5CfA==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new TypeFragment());
        this.b.add(new StarFragment());
        NovelFragment novelFragment = new NovelFragment();
        this.f2086c = novelFragment;
        this.b.add(novelFragment);
        a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2087d);
        j b = j.b();
        if (!b.a.getBoolean(e.a("QxRaVTQHUEMA"), false)) {
            j.b().f(e.a("QxRaVTQHUEMA"), true);
            View inflate = View.inflate(this, R.layout.dialog_update, null);
            AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
            TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
            View findViewById = inflate.findViewById(R.id.view_divide);
            textView.setText(e.a("0P3Gjerg3Yn1"));
            textView.setOnClickListener(new f.e.a.j.n0.e(this, create));
            findViewById.setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
            ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("BkyGwumVp6+V9JmB7NSK66iH2cKN9pvcz+rcyM+C3P/S+f2N7P7fpcOOi/yd78aNpc+F8NWamIZ5VBqB6seF/4mE9NKC5obV69jTw8KD9/LfzcyL1//fuvOAqO6d19KMvuWK59aVoY2Uwo5TndrsjaDUjNjnm4mbleO6gsfBi9SsaFBKjeSe1s7X0+7/jtvg0fzVgdX73JfpiYjrn8rXg5DBherOlraQlfGUgcv/hP+zh+vPhM+11tXk0vnkj8fx0c7CjNTo3LbWgKbKnv7dj4/vh97tlomClf6bg8DhhfWB"));
            create.show();
        }
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.navigation_home /* 2131296617 */:
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.navigation_novel /* 2131296625 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.navigation_star /* 2131296632 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            case R.id.navigation_type /* 2131296633 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        boolean z;
        if (this.viewPager.getCurrentItem() == 3) {
            NovelFragment novelFragment = this.f2086c;
            if (novelFragment.webView.canGoBack()) {
                novelFragment.webView.goBack();
                z = false;
            } else {
                z = true;
            }
            if (!z) {
                return;
            }
        }
        super.onBackPressed();
    }
}
