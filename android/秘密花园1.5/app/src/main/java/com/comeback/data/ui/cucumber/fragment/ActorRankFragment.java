package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cucumber.fragment.ActorRankFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ActorRankFragment extends BaseFragment {
    @BindView
    public RadioGroup radioGroup;
    @BindView
    public CustomViewPager viewpager;

    public static BaseFragment i() {
        Bundle bundle = new Bundle();
        ActorRankFragment actorRankFragment = new ActorRankFragment();
        actorRankFragment.setArguments(bundle);
        return actorRankFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cucumber_rank_base;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(ActorRankItemFragment.n(e.a("Bg==")));
        arrayList.add(ActorRankItemFragment.n(e.a("BQ==")));
        arrayList.add(ActorRankItemFragment.n(e.a("BA==")));
        this.viewpager.setScrollable(false);
        a.E(arrayList, 1, this.viewpager);
        this.viewpager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), new String[]{e.a("0fXGgs3v"), e.a("0vPLgs3v"), e.a("0f7rgs3v")}, arrayList));
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.g.g.a
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                ActorRankFragment.this.h(radioGroup, i2);
            }
        });
    }

    public /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        if (i2 == R.id.rb_day) {
            this.viewpager.setCurrentItem(0, false);
        } else if (i2 == R.id.rb_month) {
            this.viewpager.setCurrentItem(2, false);
        } else if (i2 != R.id.rb_week) {
        } else {
            this.viewpager.setCurrentItem(1, false);
        }
    }
}
