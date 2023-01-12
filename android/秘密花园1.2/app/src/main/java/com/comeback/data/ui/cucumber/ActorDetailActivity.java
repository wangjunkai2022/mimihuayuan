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
import com.comeback.data.ui.cucumber.bean.Actor;
import com.comeback.data.ui.cucumber.bean.ActorList;
import com.comeback.data.ui.cucumber.fragment.ActorWorkFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.ArrayList;
import m.j;

/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseActivity {
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<BaseFragment> f404c;
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
                    ActorDetailActivity.this.rb1.setBackgroundResource(R.drawable.bg_radius_cucumber2);
                    ActorDetailActivity.this.rb2.setBackground(null);
                    ActorDetailActivity.this.viewPager.setCurrentItem(0, false);
                    return;
                case R.id.rb_2 /* 2131296711 */:
                    ActorDetailActivity.this.rb2.setBackgroundResource(R.drawable.bg_radius_cucumber2);
                    ActorDetailActivity.this.rb1.setBackground(null);
                    ActorDetailActivity.this.viewPager.setCurrentItem(1, false);
                    return;
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ActorList> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ActorList actorList) {
            ActorDetailActivity actorDetailActivity = ActorDetailActivity.this;
            Actor actor = actorList.getData().get(0);
            actorDetailActivity.tvName.setText(actor.getNameCn());
            TextView textView = actorDetailActivity.tvCount;
            textView.setText(actor.getVideosCount() + e.a("3uHLgdbC3rr0"));
            actorDetailActivity.tvInfo.setText(actor.getInfo());
            actorDetailActivity.tvIntro.setText(actor.getBriefIntroduction());
            h.u0(actor.getPhotoUrl(), actorDetailActivity.ivHead);
            h.u0(actor.getPhotoUrl(), actorDetailActivity.ivBg);
        }
    }

    public static void l(Context context, int i2) {
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getIntExtra(e.a("XgY="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_actor;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f404c = arrayList;
        arrayList.add(ActorWorkFragment.o(this.b, 1));
        this.f404c.add(ActorWorkFragment.o(this.b, 2));
        f.b.a.a.a.E(this.f404c, 1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.f404c));
        this.viewPager.setScrollable(false);
        this.radioGroup.setOnCheckedChangeListener(new a());
        k(c.a().n(this.b), new b());
    }
}
