package com.comeback.data.ui.cucumber;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cucumber.fragment.ShortChoiceFragment;
import com.comeback.data.ui.cucumber.fragment.ShortGirlFragment;
import com.comeback.data.ui.cucumber.fragment.ShortRecommendFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class CucumberShortActivity extends BaseActivity {
    public TextView b;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<BaseFragment> f415c;
    @BindColor
    public int colorThird;
    @BindColor
    public int colorWhite;
    @BindView
    public TextView mTvChoice;
    @BindView
    public TextView mTvGirl;
    @BindView
    public TextView mTvRecommend;
    @BindView
    public CustomViewPager mViewpager;

    /* loaded from: classes.dex */
    public class a implements ViewPager.OnPageChangeListener {
        public a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f2, int i3) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (i2 == 0) {
                CucumberShortActivity cucumberShortActivity = CucumberShortActivity.this;
                cucumberShortActivity.m(cucumberShortActivity.mTvRecommend);
                CucumberShortActivity cucumberShortActivity2 = CucumberShortActivity.this;
                cucumberShortActivity2.m(cucumberShortActivity2.mTvGirl);
                CucumberShortActivity cucumberShortActivity3 = CucumberShortActivity.this;
                cucumberShortActivity3.l(cucumberShortActivity3.mTvChoice);
            } else if (i2 == 1) {
                CucumberShortActivity cucumberShortActivity4 = CucumberShortActivity.this;
                cucumberShortActivity4.m(cucumberShortActivity4.mTvChoice);
                CucumberShortActivity cucumberShortActivity5 = CucumberShortActivity.this;
                cucumberShortActivity5.m(cucumberShortActivity5.mTvGirl);
                CucumberShortActivity cucumberShortActivity6 = CucumberShortActivity.this;
                cucumberShortActivity6.l(cucumberShortActivity6.mTvRecommend);
            } else if (i2 == 2) {
                CucumberShortActivity cucumberShortActivity7 = CucumberShortActivity.this;
                cucumberShortActivity7.m(cucumberShortActivity7.mTvChoice);
                CucumberShortActivity cucumberShortActivity8 = CucumberShortActivity.this;
                cucumberShortActivity8.m(cucumberShortActivity8.mTvRecommend);
                CucumberShortActivity cucumberShortActivity9 = CucumberShortActivity.this;
                cucumberShortActivity9.l(cucumberShortActivity9.mTvGirl);
            }
        }
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, CucumberShortActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_short;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        this.b = this.mTvChoice;
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f415c = arrayList;
        arrayList.add(new ShortChoiceFragment());
        this.f415c.add(new ShortRecommendFragment());
        this.f415c.add(new ShortGirlFragment());
        f.b.a.a.a.D(this.f415c, -1, this.mViewpager);
        this.mViewpager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.f415c));
        this.mViewpager.setCurrentItem(0, false);
        this.mViewpager.addOnPageChangeListener(new a());
    }

    public void l(TextView textView) {
        this.b = textView;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, e.a("RAECCA4r"), 1.0f, 1.6f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, e.a("RAECCA4q"), 1.0f, 1.6f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.setDuration(300L);
        animatorSet.start();
        textView.setTextColor(this.colorWhite);
    }

    public void m(TextView textView) {
        if (this.b == textView) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, e.a("RAECCA4r"), 1.6f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, e.a("RAECCA4q"), 1.6f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(ofFloat).with(ofFloat2);
            animatorSet.setDuration(300L);
            animatorSet.start();
            textView.setTextColor(this.colorThird);
        }
    }

    @OnClick
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.tv_choice) {
            this.mViewpager.setCurrentItem(0, false);
        } else if (id == R.id.tv_girl) {
            this.mViewpager.setCurrentItem(2, false);
        } else if (id != R.id.tv_recommend) {
        } else {
            this.mViewpager.setCurrentItem(1, false);
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ButterKnife.b(this, getWindow().getDecorView());
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        VideoPlayerManager.getInstance().onDestroy();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        VideoPlayerManager.getInstance().onPause(true);
    }
}
