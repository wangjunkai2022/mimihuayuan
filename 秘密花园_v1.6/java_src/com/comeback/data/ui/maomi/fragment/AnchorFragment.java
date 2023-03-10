package com.comeback.data.ui.maomi.fragment;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.maomi.bean.AnchorList;
import com.comeback.data.widget.BigScaleTransformer;
import com.comeback.secret.garden.R;
import f.e.a.j.d0.m.d;
import java.util.ArrayList;
import m.j;
/* loaded from: classes.dex */
public class AnchorFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public ArrayList<BaseFragment> f1690g;

    /* renamed from: h  reason: collision with root package name */
    public ViewPager f1691h;
    @BindView
    public FrameLayout mFlContent;

    /* loaded from: classes.dex */
    public class a extends j<AnchorList> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(AnchorList anchorList) {
            AnchorFragment.h(AnchorFragment.this, anchorList);
        }
    }

    public static void h(AnchorFragment anchorFragment, AnchorList anchorList) {
        if (anchorFragment != null) {
            anchorFragment.f1690g = new ArrayList<>();
            for (AnchorList.DataBean dataBean : anchorList.getData()) {
                anchorFragment.f1690g.add(AnchorCardFragment.h(dataBean));
            }
            ViewPager viewPager = (ViewPager) LayoutInflater.from(anchorFragment.getContext()).inflate(R.layout.widget_spike_pager_view_big, (ViewGroup) anchorFragment.mFlContent, true).findViewById(R.id.view_pager);
            anchorFragment.f1691h = viewPager;
            viewPager.setOffscreenPageLimit(anchorFragment.f1690g.size() - 1);
            anchorFragment.f1691h.setAdapter(new BaseViewPagerAdapter(anchorFragment.getChildFragmentManager(), null, anchorFragment.f1690g));
            anchorFragment.f1691h.setPageTransformer(false, new BigScaleTransformer());
            anchorFragment.f1691h.setCurrentItem(0, false);
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_mm_anchor;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(d.a().i(), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }
}
