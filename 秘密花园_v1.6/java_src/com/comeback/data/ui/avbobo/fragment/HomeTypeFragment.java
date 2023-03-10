package com.comeback.data.ui.avbobo.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.avbobo.MoviePlayActivity;
import com.comeback.data.ui.avbobo.adapter.HMovieItemAdapter;
import com.comeback.data.ui.avbobo.adapter.HomeTitleAdapter;
import com.comeback.data.ui.avbobo.bean.ChannelList;
import com.comeback.data.ui.avbobo.fragment.HomeTypeFragment;
import com.comeback.data.ui.commom.PPTAdapter;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.b.g.d;
import java.util.HashMap;
/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f194j;

    /* renamed from: k  reason: collision with root package name */
    public String f195k;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ChannelList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ChannelList channelList = (ChannelList) obj;
            HomeTypeFragment.this.refreshLayout.A = false;
            final HomeTypeFragment homeTypeFragment = HomeTypeFragment.this;
            if (homeTypeFragment != null) {
                for (final ChannelList.DataBean dataBean : channelList.getData()) {
                    if (dataBean.getName().contains(e.a("39/Ngvne"))) {
                        c cVar = new c();
                        cVar.p(0, 0, 0, 0);
                        PPTAdapter pPTAdapter = new PPTAdapter(homeTypeFragment.getContext(), cVar, dataBean, 1);
                        homeTypeFragment.f120i.b(pPTAdapter);
                        pPTAdapter.f393c = new PPTAdapter.b() { // from class: f.e.a.j.b.f.a
                            @Override // com.comeback.data.ui.commom.PPTAdapter.b
                            public final void a(int i2) {
                                HomeTypeFragment.this.s(dataBean, i2);
                            }
                        };
                    } else if (!dataBean.getName().contains(e.a("0sfQgNfr373bjrn3"))) {
                        homeTypeFragment.f120i.b(new HomeTitleAdapter(homeTypeFragment.getContext(), dataBean, new c()));
                        g gVar = new g(2);
                        gVar.q(15, 0, 15, 0);
                        gVar.D(15);
                        gVar.C(15);
                        gVar.s = false;
                        homeTypeFragment.f120i.b(new HMovieItemAdapter(homeTypeFragment.getContext(), dataBean.getLoadDataItems(), gVar));
                    }
                }
                return;
            }
            throw null;
        }
    }

    public static BaseFragment t(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("UBAMERs="), str);
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f194j = getArguments().getString(e.a("QxsTASIX"));
        this.f195k = getArguments().getString(e.a("UBAMERs="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (TextUtils.isEmpty(this.f195k)) {
            g(d.a().g(this.f194j), new f.e.a.j.b.f.e(this));
        } else {
            r(i2);
        }
    }

    public final void r(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RwMRAQUHZlQBCUEXJwMH"), this.f195k);
        hashMap.put(f.b.a.a.a.i("Bg==", hashMap, e.a("WQcGACccWFcwDl0LHBgGBQ=="), "WwsODR8="), e.a("BlA="));
        g(d.a().f(hashMap), new a());
    }

    public /* synthetic */ void s(ChannelList.DataBean dataBean, int i2) {
        MoviePlayActivity.q(getContext(), dataBean.getLoadDataItems().get(i2));
    }
}
