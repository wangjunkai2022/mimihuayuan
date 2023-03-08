package com.comeback.data.ui.mimei.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.mimei.adapter.HeadAdapter;
import com.comeback.data.ui.mimei.adapter.HomeTitle2Adapter;
import com.comeback.data.ui.mimei.adapter.NovelItemAdapter;
import com.comeback.data.ui.mimei.bean.MimeiNovelItem;
import com.comeback.data.ui.mimei.bean.NovelHomeType;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.f0.j.f;
import java.util.List;

/* loaded from: classes.dex */
public class NovelFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NovelHomeType> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            NovelHomeType novelHomeType = (NovelHomeType) obj;
            NovelFragment.this.refreshLayout.t(false);
            NovelFragment novelFragment = NovelFragment.this;
            if (novelFragment != null) {
                novelFragment.f120i.b(new HeadAdapter(novelFragment.getContext(), false, new c()));
                novelFragment.q(e.a("0f7jgv3D3IP8jpvT"), novelHomeType.getSuccess().getNewX().getData());
                novelFragment.q(e.a("39L/gc3K373bjrn3"), novelHomeType.getSuccess().getRecommend().getData());
                for (NovelHomeType.SuccessBean.TypeBean typeBean : novelHomeType.getSuccess().getType()) {
                    novelFragment.f120i.b(new HomeTitle2Adapter(novelFragment.getContext(), typeBean.getInfo().getName(), new c()));
                    g gVar = new g(2);
                    gVar.q(15, 0, 15, 0);
                    gVar.D(15);
                    gVar.C(15);
                    gVar.s = false;
                    novelFragment.f120i.b(new NovelItemAdapter(novelFragment.getContext(), typeBean.getData(), gVar));
                }
                novelFragment.q(e.a("09jZgtvn35XvRmAoKFtT"), novelHomeType.getSuccess().getRanking().getData());
                return;
            }
            throw null;
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.a().e(), new a());
    }

    public final void q(String str, List<MimeiNovelItem> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f120i.b(new HomeTitle2Adapter(getContext(), str, new c()));
        g gVar = new g(2);
        gVar.q(15, 0, 15, 0);
        gVar.D(15);
        gVar.C(15);
        gVar.s = false;
        this.f120i.b(new NovelItemAdapter(getContext(), list, gVar));
    }
}
