package com.comeback.data.ui.jav;

import android.content.Context;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.jav.JavActivity;
import com.comeback.data.ui.jav.fragment.ActorFragment;
import com.comeback.data.ui.jav.fragment.RankFragment;
import com.comeback.data.ui.jav.fragment.SearchFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.b;
import f.e.a.k.j;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class JavActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public BottomNavigationView.OnNavigationItemSelectedListener f1204c = new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: f.e.a.j.u.a
        @Override // com.google.android.material.bottomnavigation.BottomNavigationView.OnNavigationItemSelectedListener
        public final boolean onNavigationItemSelected(MenuItem menuItem) {
            return JavActivity.this.l(menuItem);
        }
    };
    @BindView
    public BottomNavigationView navigation;
    @BindView
    public CustomViewPager viewPager;

    public static void m(Context context) {
        a.u(context, JavActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_jav_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        if (!TextUtils.isEmpty(b.g0)) {
            f.e.a.j.u.e.a.a = b.g0;
        }
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new RankFragment());
        this.b.add(new SearchFragment());
        this.b.add(new ActorFragment());
        a.E(this.b, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.navigation.setSelectedItemId(R.id.navigation_recommend);
        this.navigation.setOnNavigationItemSelectedListener(this.f1204c);
        j b = j.b();
        if (b.a.getBoolean(e.a("XQMVOx8aSUA="), false)) {
            return;
        }
        j.b().f(e.a("XQMVOx8aSUA="), true);
        View inflate = View.inflate(this, R.layout.dialog_update, null);
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
        TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
        View findViewById = inflate.findViewById(R.id.view_divide);
        textView.setText(e.a("0P3Gjerg3Yn1"));
        textView.setOnClickListener(new f.e.a.j.u.b(this, create));
        findViewById.setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
        ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("0f7Pjcni0LLggozckMzijKPKh97llKyZlumDgefPheKJjd/ojO+y1OfT0drJgszc0MXYgsbW3LbFgo/xkcjygrbx"));
        create.show();
    }

    public /* synthetic */ boolean l(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.navigation_actor) {
            this.viewPager.setCurrentItem(2);
            return true;
        } else if (itemId == R.id.navigation_rank) {
            this.viewPager.setCurrentItem(0);
            return true;
        } else if (itemId != R.id.navigation_type) {
            return false;
        } else {
            this.viewPager.setCurrentItem(1);
            return true;
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }
}
