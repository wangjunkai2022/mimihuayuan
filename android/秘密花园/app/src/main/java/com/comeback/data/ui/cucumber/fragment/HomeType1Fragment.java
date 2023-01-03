package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.VideoListAdapter;
import com.comeback.data.ui.cucumber.bean.DefaultChannel;
import com.comeback.data.ui.cucumber.bean.VideoList;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HomeType1Fragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public DefaultChannel.DataBean f499i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f500f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f500f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f500f == 1) {
                HomeType1Fragment.this.f117h.c();
            }
            HomeType1Fragment.this.f117h.a(videoList.getData());
        }
    }

    public static BaseFragment o(DefaultChannel.DataBean dataBean) {
        BaseFragment baseFragment;
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBQ=="), dataBean);
        if (dataBean.isHasSelection()) {
            baseFragment = new HomeType2Fragment();
        } else {
            baseFragment = new HomeType1Fragment();
        }
        baseFragment.setArguments(bundle);
        return baseFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f499i = (DefaultChannel.DataBean) getArguments().getParcelable(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("BlA=", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), "RAcPAQgHUFwdMk0XHQ=="), String.valueOf(this.f499i.getChannelType()));
        hashMap.put(e.a("Wg0HEQcWcFc="), String.valueOf(this.f499i.getParentModule()));
        g(c.a().w(hashMap, hashMap), new a(i2));
    }
}
