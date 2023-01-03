package com.comeback.data.ui.mimei.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.mimei.adapter.AnimateItemAdapter;
import com.comeback.data.ui.mimei.adapter.HomeTitle2Adapter;
import com.comeback.data.ui.mimei.bean.AnimateHomeType;
import com.comeback.data.ui.mimei.bean.MimeiAnimateItem;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.e0.j.f;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class AnimateTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public int f1705j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<AnimateHomeType> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            AnimateHomeType animateHomeType = (AnimateHomeType) obj;
            AnimateTypeFragment.this.refreshLayout.t(false);
            AnimateTypeFragment animateTypeFragment = AnimateTypeFragment.this;
            if (animateTypeFragment.f1705j != 0) {
                animateTypeFragment.q(e.a("0f7jgv3D3LnbgaDc"), animateHomeType.getSuccess().getNewX().getData());
            }
            for (AnimateHomeType.SuccessBean.TypeBean typeBean : animateHomeType.getSuccess().getType()) {
                animateTypeFragment.f120i.b(new HomeTitle2Adapter(animateTypeFragment.getContext(), typeBean.getInfo().getName(), new c()));
                g gVar = new g(3);
                gVar.q(15, 0, 15, 0);
                gVar.D(15);
                gVar.C(15);
                gVar.s = false;
                animateTypeFragment.f120i.b(new AnimateItemAdapter(animateTypeFragment.getContext(), typeBean.getData(), gVar));
            }
            animateTypeFragment.q(e.a("0ezxjMr/35Xv"), animateHomeType.getSuccess().getRanking().getData());
            animateTypeFragment.q(e.a("0szvg9Dg0KzagIjM"), animateHomeType.getSuccess().getKorea_end().getData());
            animateTypeFragment.q(e.a("3939jNbO0KzagIjM"), animateHomeType.getSuccess().getKorea_serial().getData());
            animateTypeFragment.q(e.a("0t7ZgeHo373bjrn3"), animateHomeType.getSuccess().getRecommend().getData());
        }
    }

    public static AnimateTypeFragment r(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        AnimateTypeFragment animateTypeFragment = new AnimateTypeFragment();
        animateTypeFragment.setArguments(bundle);
        return animateTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1705j = getArguments().getInt(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (this.f1705j != 0) {
            hashMap.put(e.a("QxsTAQ=="), String.valueOf(this.f1705j));
        }
        g(f.a().b(hashMap), new a());
    }

    public final void q(String str, List<MimeiAnimateItem> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f120i.b(new HomeTitle2Adapter(getContext(), str, new c()));
        g gVar = new g(3);
        gVar.q(15, 0, 15, 0);
        gVar.D(15);
        gVar.C(15);
        gVar.s = false;
        this.f120i.b(new AnimateItemAdapter(getContext(), list, gVar));
    }
}
