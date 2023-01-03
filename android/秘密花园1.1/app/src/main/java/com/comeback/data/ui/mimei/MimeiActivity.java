package com.comeback.data.ui.mimei;

import android.content.Context;
import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.mimei.fragment.CollectFragment;
import com.comeback.data.ui.mimei.fragment.ComicFragment;
import com.comeback.data.ui.mimei.fragment.NovelFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MimeiActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;

    /* renamed from: c  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1671c = new a();
    @BindView
    public RadioGroup rgTab;
    @BindView
    public CustomViewPager viewPager;

    /* loaded from: classes.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            if (i2 == R.id.rb_collect) {
                MimeiActivity.this.viewPager.setCurrentItem(2, false);
            } else if (i2 == R.id.rb_comic) {
                MimeiActivity.this.viewPager.setCurrentItem(0, false);
            } else if (i2 != R.id.rb_novel) {
            } else {
                MimeiActivity.this.viewPager.setCurrentItem(1, false);
            }
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, MimeiActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new ComicFragment());
        this.b.add(new NovelFragment());
        this.b.add(new CollectFragment());
        f.b.a.a.a.D(this.b, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.viewPager.setScrollable(false);
        this.rgTab.setOnCheckedChangeListener(this.f1671c);
    }
}
