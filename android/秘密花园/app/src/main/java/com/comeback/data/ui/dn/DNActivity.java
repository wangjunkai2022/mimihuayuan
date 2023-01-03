package com.comeback.data.ui.dn;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindColor;
import butterknife.BindView;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.dn.fragment.HotFragment;
import com.comeback.data.ui.dn.fragment.RecommendFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DNActivity extends BaseActivity {
    public ArrayList<BaseFragment> b;
    @BindColor
    public int colorThird;
    @BindColor
    public int colorWhite;
    @BindView
    public TextView mTvNew;
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
            DNActivity dNActivity = DNActivity.this;
            TextView textView = i2 == 1 ? dNActivity.mTvNew : dNActivity.mTvRecommend;
            if (dNActivity != null) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, e.a("RAECCA4r"), 1.0f, 1.6f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(textView, e.a("RAECCA4q"), 1.0f, 1.6f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(ofFloat).with(ofFloat2);
                animatorSet.setDuration(300L);
                animatorSet.start();
                textView.setTextColor(dNActivity.colorWhite);
                DNActivity dNActivity2 = DNActivity.this;
                TextView textView2 = i2 == 1 ? dNActivity2.mTvRecommend : dNActivity2.mTvNew;
                if (dNActivity2 != null) {
                    ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(textView2, e.a("RAECCA4r"), 1.6f, 1.0f);
                    ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(textView2, e.a("RAECCA4q"), 1.6f, 1.0f);
                    AnimatorSet animatorSet2 = new AnimatorSet();
                    animatorSet2.play(ofFloat3).with(ofFloat4);
                    animatorSet2.setDuration(300L);
                    animatorSet2.start();
                    textView2.setTextColor(dNActivity2.colorThird);
                    return;
                }
                throw null;
            }
            throw null;
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, DNActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_dn_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.add(new RecommendFragment());
        this.b.add(new HotFragment());
        f.b.a.a.a.D(this.b, -1, this.mViewpager);
        this.mViewpager.setAdapter(new BaseViewPagerAdapter(getSupportFragmentManager(), null, this.b));
        this.mViewpager.setCurrentItem(0, false);
        this.mViewpager.addOnPageChangeListener(new a());
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
