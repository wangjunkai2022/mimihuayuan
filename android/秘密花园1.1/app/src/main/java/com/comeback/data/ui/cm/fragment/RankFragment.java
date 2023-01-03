package com.comeback.data.ui.cm.fragment;

import android.widget.RadioGroup;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.cm.fragment.RankFragment;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankFragment extends BaseFragment {
    @BindView
    public RadioGroup radioGroup;
    @BindView
    public CustomViewPager viewpager;

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
                RankFragment.this.radioGroup.check(R.id.rb_play);
            } else if (i2 == 1) {
                RankFragment.this.radioGroup.check(R.id.rb_new);
            } else if (i2 != 2) {
            } else {
                RankFragment.this.radioGroup.check(R.id.rb_prise);
            }
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_cm_rank;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(RankTypeFragment.o(e.a("RwMEAR0aXEQA")));
        arrayList.add(RankTypeFragment.o(e.a("WQcU")));
        arrayList.add(RankTypeFragment.o(e.a("TQMN")));
        f.b.a.a.a.E(arrayList, 1, this.viewpager);
        this.viewpager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), new String[]{e.a("0fDOgv/N36bD"), e.a("0f7jgv3D"), e.a("0ODajN7t36bD")}, arrayList));
        this.viewpager.addOnPageChangeListener(new a());
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.e.e.c
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                RankFragment.this.h(radioGroup, i2);
            }
        });
    }

    public /* synthetic */ void h(RadioGroup radioGroup, int i2) {
        switch (i2) {
            case R.id.rb_new /* 2131296722 */:
                this.viewpager.setCurrentItem(1, false);
                return;
            case R.id.rb_novel /* 2131296723 */:
            default:
                return;
            case R.id.rb_play /* 2131296724 */:
                this.viewpager.setCurrentItem(0, false);
                return;
            case R.id.rb_prise /* 2131296725 */:
                this.viewpager.setCurrentItem(2, false);
                return;
        }
    }
}
