package com.comeback.data.ui.ds;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.ui.ds.bean.RankBean;
import com.comeback.data.ui.ds.fragment.ComicListFragment;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i.j.b;
import java.util.ArrayList;
import m.j;
/* loaded from: classes.dex */
public class RankActivity extends BaseViewPagerActivity {

    /* loaded from: classes.dex */
    public class a extends j<RankBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(RankBean rankBean) {
            RankActivity.n(RankActivity.this, rankBean);
        }
    }

    public static void n(RankActivity rankActivity, RankBean rankBean) {
        if (rankActivity != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ComicListFragment.h(rankBean.getResult().getMost_clicks()));
            arrayList.add(ComicListFragment.h(rankBean.getResult().getMost_consumes()));
            arrayList.add(ComicListFragment.h(rankBean.getResult().getMost_favorites()));
            arrayList.add(ComicListFragment.h(rankBean.getResult().getMost_search()));
            rankActivity.mViewPager.setOffscreenPageLimit(arrayList.size() + (-1) <= 8 ? arrayList.size() - 1 : 8);
            rankActivity.mViewPager.setAdapter(new BaseViewPagerAdapter(rankActivity.getSupportFragmentManager(), rankActivity.m(), arrayList));
            rankActivity.mViewPager.addOnPageChangeListener(rankActivity);
            return;
        }
        throw null;
    }

    public static void o(Context context) {
        f.b.a.a.a.u(context, RankActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ds_rank;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        k(b.a().e(), new a());
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        return null;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("09jZgtvn35Xv"), e.a("0Pfmjf/z35Xv"), e.a("0fbVjPz835Xv"), e.a("0fL/g9/R35Xv")};
    }
}
