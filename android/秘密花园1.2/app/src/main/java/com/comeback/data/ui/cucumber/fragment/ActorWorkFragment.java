package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.VideoList5Adapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorWorkFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f487i;

    /* renamed from: j  reason: collision with root package name */
    public int f488j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f489f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f489f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f489f == 1) {
                ActorWorkFragment.this.f117h.c();
            }
            ActorWorkFragment.this.f117h.a(videoList.getData());
        }
    }

    public static BaseFragment o(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        bundle.putInt(e.a("QxsTAQ=="), i3);
        ActorWorkFragment actorWorkFragment = new ActorWorkFragment();
        actorWorkFragment.setArguments(bundle);
        return actorWorkFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f488j = getArguments().getInt(e.a("QxsTAQ=="));
        this.f487i = getArguments().getInt(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoList5Adapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(this.f488j, hashMap, f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.G(this.f487i, hashMap, e.a("XgY="), "RwMEASUc"), "RhcGFhInQEMW"), "RwMEATgaQ1Y="), e.a("BlA="));
        g(c.a().e(hashMap), new a(i2));
    }
}
