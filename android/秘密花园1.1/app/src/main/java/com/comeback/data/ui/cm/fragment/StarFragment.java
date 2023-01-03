package com.comeback.data.ui.cm.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.cm.adapter.StarAdapter;
import com.comeback.data.ui.cm.adapter.StarTitleAdapter;
import com.comeback.data.ui.cm.bean.ArtistList;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.m;
import f.e.a.e;
import f.e.a.j.e.f.b;

/* loaded from: classes.dex */
public class StarFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArtistList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ArtistList artistList = (ArtistList) obj;
            SmartRefreshLayout smartRefreshLayout = StarFragment.this.refreshLayout;
            smartRefreshLayout.A = false;
            smartRefreshLayout.t(false);
            StarFragment starFragment = StarFragment.this;
            if (starFragment != null) {
                starFragment.f120i.b(new StarTitleAdapter(starFragment.getContext(), e.a("09jZgtvn3JbAgoj/"), new c()));
                g gVar = new g(4);
                gVar.q(15, 0, 15, 0);
                gVar.D(15);
                gVar.C(15);
                gVar.s = false;
                starFragment.f120i.b(new StarAdapter(starFragment.getContext(), artistList.getRescont().getHotArtist(), gVar));
                for (ArtistList.RescontEntity.AllArtistEntity allArtistEntity : artistList.getRescont().getAllArtist()) {
                    starFragment.f120i.b(new StarTitleAdapter(starFragment.getContext(), allArtistEntity.getLetter(), new m()));
                    g gVar2 = new g(4);
                    gVar2.q(15, 0, 15, 0);
                    gVar2.D(15);
                    gVar2.C(15);
                    gVar2.s = false;
                    starFragment.f120i.b(new StarAdapter(starFragment.getContext(), allArtistEntity.getList(), gVar2));
                }
                return;
            }
            throw null;
        }
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().g(), new a());
    }
}
