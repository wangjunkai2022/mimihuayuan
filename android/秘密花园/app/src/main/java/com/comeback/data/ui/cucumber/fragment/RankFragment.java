package com.comeback.data.ui.cucumber.fragment;

import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public int[] f511g = {R.drawable.ranked_newvideo_img, R.drawable.ranked_search_img, R.drawable.ranked_newvideo_img, R.drawable.ranked_sir_img, R.drawable.ranked_lady_img, R.drawable.ranked_talk_img};
    @BindView
    public ImageView ivBg;
    @BindView
    public TabLayout tabLayout;
    @BindView
    public CustomViewPager viewPager;

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
            RankFragment rankFragment = RankFragment.this;
            rankFragment.ivBg.setImageResource(rankFragment.f511g[i2]);
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_rank2;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(VideoRankFragment.i(e.a("QQsGEwYcTw==")));
        arrayList.add(VideoRankFragment.i(e.a("WQcUCQQF")));
        arrayList.add(VideoRankFragment.i(e.a("WxcQDRk=")));
        arrayList.add(ActorRankFragment.i());
        arrayList.add(VideoRankFragment.i(e.a("QxcABQQ=")));
        int i2 = 8;
        if (arrayList.size() - 1 <= 8) {
            i2 = arrayList.size() - 1;
        }
        this.viewPager.setOffscreenPageLimit(i2);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), new String[]{e.a("38XhgdbC35Xv"), e.a("0fTTg+L035Xv"), e.a("0fDbFwIB35Xv"), e.a("0sfQgNfr35Xv"), e.a("0vLzgszO35Xv")}, arrayList));
        this.tabLayout.setupWithViewPager(this.viewPager);
        this.viewPager.addOnPageChangeListener(new a());
    }
}
