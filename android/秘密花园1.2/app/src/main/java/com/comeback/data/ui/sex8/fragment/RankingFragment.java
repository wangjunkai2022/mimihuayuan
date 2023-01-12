package com.comeback.data.ui.sex8.fragment;

import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankingFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<BaseFragment> f1947g;

    /* renamed from: h  reason: collision with root package name */
    public RadioGroup.OnCheckedChangeListener f1948h = new a();
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
            switch (i2) {
                case R.id.rb_author /* 2131296714 */:
                    RankingFragment.this.viewPager.setCurrentItem(3, false);
                    return;
                case R.id.rb_hot /* 2131296723 */:
                    RankingFragment.this.viewPager.setCurrentItem(1, false);
                    return;
                case R.id.rb_new /* 2131296726 */:
                    RankingFragment.this.viewPager.setCurrentItem(2, false);
                    return;
                case R.id.rb_recommend /* 2131296731 */:
                    RankingFragment.this.viewPager.setCurrentItem(0, false);
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_sex8_fm_rank;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        this.f1947g = arrayList;
        arrayList.add(RankListFragment.o(e.a("RQcACwYeWF0X")));
        this.f1947g.add(RankListFragment.o(e.a("Xw0X")));
        this.f1947g.add(RankListFragment.o(e.a("WQcU")));
        this.f1947g.add(new RankHostFragment());
        f.b.a.a.a.D(this.f1947g, -1, this.viewPager);
        this.viewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), null, this.f1947g));
        this.viewPager.setScrollable(false);
        this.rgTab.setOnCheckedChangeListener(this.f1948h);
    }
}
