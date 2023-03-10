package com.comeback.data.ui.xiami.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xiami.adapter.SpecialAdapter;
import com.comeback.data.ui.xiami.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.q0.f.b;
import f.e.a.j.q0.f.d;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SpecialFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2257f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2257f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2257f == 1) {
                SpecialFragment.this.f117h.c();
            }
            SpecialFragment.this.f117h.a(videoList.getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xm_special;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new SpecialAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(this.f116g, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), e.a("QAcBOwQVX1oQD1UL"));
        g(a2.h(hashMap), new a(i2));
    }
}
