package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.RankActorAdapter;
import com.comeback.data.ui.cucumber.bean.ActorList;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ActorRankItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f485i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ActorList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ActorRankItemFragment.this.refreshLayout.t(false);
            ActorRankItemFragment actorRankItemFragment = ActorRankItemFragment.this;
            actorRankItemFragment.refreshLayout.A = false;
            actorRankItemFragment.f117h.a(((ActorList) obj).getData());
        }
    }

    public static BaseFragment n(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        ActorRankItemFragment actorRankItemFragment = new ActorRankItemFragment();
        actorRankItemFragment.setArguments(bundle);
        return actorRankItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f485i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new RankActorAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(30, hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), "QxsTAQ=="), this.f485i);
        g(c.a().u(hashMap), new a());
    }
}
