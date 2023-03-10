package com.comeback.data.ui.mimei.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.mimei.adapter.ComicItemAdapter;
import com.comeback.data.ui.mimei.adapter.HeadAdapter;
import com.comeback.data.ui.mimei.adapter.HomeTitle2Adapter;
import com.comeback.data.ui.mimei.bean.ComicHomeType;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.f0.j.d;
import f.e.a.j.f0.j.f;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class ComicTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public int f1791j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicHomeType> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ComicHomeType comicHomeType = (ComicHomeType) obj;
            ComicTypeFragment.this.refreshLayout.t(false);
            ComicTypeFragment comicTypeFragment = ComicTypeFragment.this;
            if (comicTypeFragment.f1791j != 0 && comicHomeType.getSuccess().getNewX() != null) {
                comicTypeFragment.q(e.a("0f7jjNTi36jHgKLX"), comicHomeType.getSuccess().getNewX().getData());
            } else {
                comicTypeFragment.f120i.b(new HeadAdapter(comicTypeFragment.getContext(), true, new c()));
            }
            for (ComicHomeType.SuccessBean.TypeBean typeBean : comicHomeType.getSuccess().getType()) {
                comicTypeFragment.f120i.b(new HomeTitle2Adapter(comicTypeFragment.getContext(), typeBean.getInfo().getName(), new c()));
                g gVar = new g(2);
                gVar.q(15, 0, 15, 0);
                gVar.D(15);
                gVar.C(15);
                gVar.s = false;
                comicTypeFragment.f120i.b(new ComicItemAdapter(comicTypeFragment.getContext(), typeBean.getData(), gVar));
            }
            if (comicHomeType.getSuccess().getRanking() != null) {
                comicTypeFragment.q(e.a("0ezxjMr/35Xv"), comicHomeType.getSuccess().getRanking().getData());
            }
            if (comicHomeType.getSuccess().getKorea_end() != null) {
                comicTypeFragment.q(e.a("0szvg9Dg0KzagIjM"), comicHomeType.getSuccess().getKorea_end().getData());
            }
            if (comicHomeType.getSuccess().getKorea_serial() != null) {
                comicTypeFragment.q(e.a("3939jNbO0KzagIjM"), comicHomeType.getSuccess().getKorea_serial().getData());
            }
            if (comicHomeType.getSuccess().getRecommend() != null) {
                comicTypeFragment.q(e.a("0t7ZgeHo373bjrn3"), comicHomeType.getSuccess().getRecommend().getData());
            }
        }
    }

    public static ComicTypeFragment r(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        ComicTypeFragment comicTypeFragment = new ComicTypeFragment();
        comicTypeFragment.setArguments(bundle);
        return comicTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1791j = getArguments().getInt(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(this.f1791j, hashMap, e.a("QxsTAQ=="), "VAoCDQU="), d.b);
        hashMap.put(e.a("Xw0QEA=="), d.f3931c);
        g(f.a().i(hashMap), new a());
    }

    public final void q(String str, List<MimeiComicItem> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f120i.b(new HomeTitle2Adapter(getContext(), str, new c()));
        g gVar = new g(2);
        gVar.q(15, 0, 15, 0);
        gVar.D(15);
        gVar.C(15);
        gVar.s = false;
        this.f120i.b(new ComicItemAdapter(getContext(), list, gVar));
    }
}
