package com.comeback.data.ui.xj;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.xj.MainActivity;
import com.comeback.data.ui.xj.fragment.ChannelFragment;
import com.comeback.data.ui.xj.fragment.HomeFragment;
import com.comeback.data.ui.xj.fragment.HotFragment;
import com.comeback.data.ui.xj.fragment.ShortFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.s0.d;
import f.e.a.k.b;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class MainActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f2266c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.s0.a
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
        return R.layout.activity_xj_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        if (TextUtils.isEmpty(b.f4061j) || TextUtils.isEmpty(b.f4062k)) {
            View inflate = View.inflate(this, R.layout.dialog_update, null);
            AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
            TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
            View findViewById = inflate.findViewById(R.id.view_divide);
            textView.setText(e.a("0P3Gjerg3Yn1"));
            textView.setOnClickListener(new d(this, create));
            findViewById.setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
            ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
            ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("3sT6jP760ZT1j5b2nvbujr3Dhv3DlIKHleyQiMTmhs21hP34jeGU1efY0cPJgtfO2N7vjMTE3pv+g6Tpke3ug5j3"));
            create.show();
        }
        i();
        h(Color.parseColor(e.a("FFBVVlJBfw==")));
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new HomeFragment());
        this.b.add(new ChannelFragment());
        this.b.add(new ShortFragment());
        this.b.add(new HotFragment());
        a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f2266c);
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.menu_chanel /* 2131296592 */:
                this.viewPager.setCurrentItem(1, false);
                return true;
            case R.id.menu_home /* 2131296593 */:
                i();
                this.viewPager.setCurrentItem(0, false);
                return true;
            case R.id.menu_hot /* 2131296594 */:
                this.viewPager.setCurrentItem(3, false);
                return true;
            case R.id.menu_short /* 2131296595 */:
                this.viewPager.setCurrentItem(2, false);
                return true;
            default:
                return false;
        }
    }
}
