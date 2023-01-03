package com.comeback.data.ui.maomi;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.maomi.fragment.AnchorFragment;
import com.comeback.data.ui.maomi.fragment.VoiceListFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class VoiceActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;
    @BindColor
    public int colorPrimary;
    @BindColor
    public int colorSecond;
    @BindView
    public TextView mTvType1;
    @BindView
    public TextView mTvType2;
    @BindView
    public TextView mTvType3;
    @BindView
    public TextView mTvType4;
    @BindView
    public TextView mTvType5;
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
            VoiceActivity voiceActivity = VoiceActivity.this;
            voiceActivity.m(voiceActivity.mTvType1);
            VoiceActivity voiceActivity2 = VoiceActivity.this;
            voiceActivity2.m(voiceActivity2.mTvType2);
            VoiceActivity voiceActivity3 = VoiceActivity.this;
            voiceActivity3.m(voiceActivity3.mTvType3);
            VoiceActivity voiceActivity4 = VoiceActivity.this;
            voiceActivity4.m(voiceActivity4.mTvType4);
            VoiceActivity voiceActivity5 = VoiceActivity.this;
            voiceActivity5.m(voiceActivity5.mTvType5);
            if (i2 == 0) {
                VoiceActivity voiceActivity6 = VoiceActivity.this;
                voiceActivity6.l(voiceActivity6.mTvType1);
            } else if (i2 == 1) {
                VoiceActivity voiceActivity7 = VoiceActivity.this;
                voiceActivity7.l(voiceActivity7.mTvType2);
            } else if (i2 == 2) {
                VoiceActivity voiceActivity8 = VoiceActivity.this;
                voiceActivity8.l(voiceActivity8.mTvType3);
            } else if (i2 == 3) {
                VoiceActivity voiceActivity9 = VoiceActivity.this;
                voiceActivity9.l(voiceActivity9.mTvType4);
            } else {
                VoiceActivity voiceActivity10 = VoiceActivity.this;
                voiceActivity10.l(voiceActivity10.mTvType5);
            }
        }
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, VoiceActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_voice;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(VoiceListFragment.n(e.a("QhIHBR8W")));
        this.b.add(VoiceListFragment.n(e.a("Rw0TEQcSSw==")));
        this.b.add(VoiceListFragment.n(e.a("WwcNAx8b")));
        ArrayList<BaseFragment> arrayList2 = this.b;
        String a2 = e.a("WwcNAx8b");
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XAca"), a2);
        bundle.putBoolean(e.a("XhEvCwUU"), true);
        VoiceListFragment voiceListFragment = new VoiceListFragment();
        voiceListFragment.setArguments(bundle);
        arrayList2.add(voiceListFragment);
        this.b.add(new AnchorFragment());
        f.b.a.a.a.E(this.b, 1, this.mViewpager);
        this.mViewpager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.mViewpager.setCurrentItem(0, false);
        this.mViewpager.addOnPageChangeListener(new a());
    }

    public void l(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, e.a("RAECCA4r"), 1.0f, 1.2f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, e.a("RAECCA4q"), 1.0f, 1.2f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2);
        animatorSet.setDuration(200L);
        animatorSet.start();
        textView.setTextColor(this.colorPrimary);
    }

    public void m(TextView textView) {
        textView.setTextColor(this.colorSecond);
        textView.setScaleX(1.0f);
        textView.setScaleY(1.0f);
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.tv_type1 /* 2131297062 */:
                this.mViewpager.setCurrentItem(0, false);
                return;
            case R.id.tv_type2 /* 2131297063 */:
                this.mViewpager.setCurrentItem(1, false);
                return;
            case R.id.tv_type3 /* 2131297064 */:
                this.mViewpager.setCurrentItem(2, false);
                return;
            case R.id.tv_type4 /* 2131297065 */:
                this.mViewpager.setCurrentItem(3, false);
                return;
            case R.id.tv_type5 /* 2131297066 */:
                this.mViewpager.setCurrentItem(4, false);
                return;
            default:
                return;
        }
    }
}
