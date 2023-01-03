package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.ShortGirdAdapter;
import com.comeback.data.ui.cucumber.adapter.VideoList3Adapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class UserVideoFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f529i;

    /* renamed from: j  reason: collision with root package name */
    public String f530j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f531f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f531f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f531f == 1) {
                UserVideoFragment.this.f117h.c();
            }
            UserVideoFragment.this.f117h.a(videoList.getData());
        }
    }

    public static UserVideoFragment o(String str, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        bundle.putString(e.a("XgwVDR8WelwXAw=="), str);
        UserVideoFragment userVideoFragment = new UserVideoFragment();
        userVideoFragment.setArguments(bundle);
        return userVideoFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f529i = getArguments().getInt(e.a("QxsTAQ=="));
        this.f530j = getArguments().getString(e.a("XgwVDR8WelwXAw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        if (this.f529i == 1) {
            return new VideoList3Adapter(getContext());
        }
        return new ShortGirdAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        if (this.f529i == 1) {
            return super.i();
        }
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.g.h.a a2 = c.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("XgwVDR8WelwXAw=="), this.f530j);
        hashMap.put(f.b.a.a.a.i("BlA=", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), "QxsTAQ=="), String.valueOf(this.f529i));
        g(a2.f(hashMap), new a(i2));
    }
}
