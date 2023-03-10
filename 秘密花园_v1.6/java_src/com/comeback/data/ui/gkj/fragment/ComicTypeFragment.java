package com.comeback.data.ui.gkj.fragment;

import android.content.Context;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.gkj.adapter.Comic1Adapter;
import com.comeback.data.ui.gkj.adapter.Comic2Adapter;
import com.comeback.data.ui.gkj.adapter.Comic3Adapter;
import com.comeback.data.ui.gkj.adapter.Comic4Adapter;
import com.comeback.data.ui.gkj.adapter.PPTAdapter;
import com.comeback.data.ui.gkj.adapter.TitleAdapter;
import com.comeback.data.ui.gkj.bean.ViewModel;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.a.a.a.l.l;
import f.e.a.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ComicTypeFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f1055j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ViewModel> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ComicTypeFragment.p(ComicTypeFragment.this, ((ViewModel) obj).getData());
            SmartRefreshLayout smartRefreshLayout = ComicTypeFragment.this.refreshLayout;
            smartRefreshLayout.A = false;
            smartRefreshLayout.t(false);
        }
    }

    public static void p(ComicTypeFragment comicTypeFragment, List list) {
        if (comicTypeFragment != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ViewModel.DataBean dataBean = (ViewModel.DataBean) it.next();
                if (dataBean.getModule().equals(e.a("VA0ODQg="))) {
                    if (dataBean.getClient_style().equals(e.a("VA0ODQgsCA=="))) {
                        c cVar = new c();
                        DelegateAdapter delegateAdapter = comicTypeFragment.f120i;
                        Context context = comicTypeFragment.getContext();
                        delegateAdapter.b(new TitleAdapter(context, dataBean.getTitle() + e.a("Gg==") + dataBean.getSubtitle(), cVar));
                        g gVar = new g(3);
                        gVar.D(5);
                        gVar.C(5);
                        gVar.s = true;
                        comicTypeFragment.f120i.b(new Comic1Adapter(comicTypeFragment.getContext(), dataBean.getM_comic_data().subList(0, 6), gVar));
                    } else if (dataBean.getClient_style().equals(e.a("VA0ODQgsCg=="))) {
                        c cVar2 = new c();
                        DelegateAdapter delegateAdapter2 = comicTypeFragment.f120i;
                        Context context2 = comicTypeFragment.getContext();
                        delegateAdapter2.b(new TitleAdapter(context2, dataBean.getTitle() + e.a("Gg==") + dataBean.getSubtitle(), cVar2));
                        comicTypeFragment.f120i.b(new Comic2Adapter(comicTypeFragment.getContext(), dataBean.getM_comic_data().subList(0, 3), new i()));
                    } else if (dataBean.getClient_style().equals(e.a("VA0ODQgsCw=="))) {
                        c cVar3 = new c();
                        DelegateAdapter delegateAdapter3 = comicTypeFragment.f120i;
                        Context context3 = comicTypeFragment.getContext();
                        delegateAdapter3.b(new TitleAdapter(context3, dataBean.getTitle() + e.a("Gg==") + dataBean.getSubtitle(), cVar3));
                        comicTypeFragment.f120i.b(new Comic3Adapter(comicTypeFragment.getContext(), dataBean, new i()));
                    } else if (dataBean.getClient_style().equals(e.a("VA0ODQgsDQ=="))) {
                        comicTypeFragment.f120i.b(new Comic4Adapter(comicTypeFragment.getContext(), dataBean, new i()));
                    }
                }
                if (dataBean.getModule().equals(e.a("VQMNCg4B"))) {
                    l lVar = new l();
                    lVar.p(0, 0, 0, 0);
                    comicTypeFragment.f120i.b(new PPTAdapter(comicTypeFragment.getContext(), lVar, dataBean));
                }
            }
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1055j = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_gkj_comic;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.n.p.c b = f.e.a.j.n.p.e.b();
        String str = this.f1055j;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("UA4MBgofZkcKFlE="), str);
        hashMap.put(f.b.a.a.a.G(1, hashMap, f.b.a.a.a.i("XgwHARM=", hashMap, e.a("Ww0ABR8aVl0="), "RwMEAQ=="), "WwsODR8="), e.a("BlI="));
        g(b.h(hashMap), new a());
    }
}
