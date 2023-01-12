package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cucumber.bean.UserDetail;
import com.comeback.data.ui.cucumber.fragment.UserVideoFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.ArrayList;
import m.j;

/* loaded from: classes.dex */
public class UserDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<BaseFragment> f436c;
    @BindView
    public ImageView ivBg;
    @BindView
    public RatioImageView ivHead;
    @BindView
    public RadioGroup radioGroup;
    @BindView
    public RadioButton rb1;
    @BindView
    public RadioButton rb2;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvInfo;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvName;
    @BindView
    public CustomViewPager viewPager;

    /* loaded from: classes.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        public a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.rb_1 /* 2131296710 */:
                    UserDetailActivity.this.rb1.setBackgroundResource(R.drawable.bg_radius_cucumber2);
                    UserDetailActivity.this.rb2.setBackground(null);
                    UserDetailActivity.this.viewPager.setCurrentItem(0, false);
                    return;
                case R.id.rb_2 /* 2131296711 */:
                    UserDetailActivity.this.rb2.setBackgroundResource(R.drawable.bg_radius_cucumber2);
                    UserDetailActivity.this.rb1.setBackground(null);
                    UserDetailActivity.this.viewPager.setCurrentItem(1, false);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<UserDetail> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.printStackTrace();
        }

        @Override // m.j
        public void f(UserDetail userDetail) {
            UserDetailActivity userDetailActivity = UserDetailActivity.this;
            UserDetail.DataEntity dataEntity = userDetail.getData().get(0);
            userDetailActivity.tvName.setText(dataEntity.getName());
            TextView textView = userDetailActivity.tvCount;
            textView.setText(dataEntity.getFansCnt() + e.a("0NDqgNPu"));
            userDetailActivity.tvInfo.setVisibility(8);
            userDetailActivity.tvIntro.setText(dataEntity.getUserDescs());
            h.u0(dataEntity.getIcon(), userDetailActivity.ivHead);
            h.u0(dataEntity.getIcon(), userDetailActivity.ivBg);
        }
    }

    public static void l(Context context, String str) {
        Intent intent = new Intent(context, UserDetailActivity.class);
        f.b.a.a.a.v("VA0HAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("VA0HAQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_user;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f436c = arrayList;
        arrayList.add(UserVideoFragment.o(this.b, 1));
        this.f436c.add(UserVideoFragment.o(this.b, 3));
        f.b.a.a.a.E(this.f436c, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.f436c));
        this.viewPager.setScrollable(false);
        this.radioGroup.setOnCheckedChangeListener(new a());
        k(c.a().g(this.b), new b());
    }
}
