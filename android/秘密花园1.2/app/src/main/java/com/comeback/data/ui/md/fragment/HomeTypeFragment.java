package com.comeback.data.ui.md.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.md.adapter.VideoAdapter;
import com.comeback.data.ui.md.bean.MdApiBean;
import com.comeback.data.ui.md.bean.VideoList;
import f.e.a.e;
import f.e.a.j.e0.d.b;
import f.e.a.j.e0.d.d;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class HomeTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1718i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1719f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1719f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1719f == 1) {
                HomeTypeFragment.this.f117h.c();
            }
            HomeTypeFragment.this.f117h.a(videoList.getData());
        }
    }

    public static HomeTypeFragment p(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("VAoCCgUWVQ=="), str);
        HomeTypeFragment homeTypeFragment = new HomeTypeFragment();
        homeTypeFragment.setArguments(bundle);
        return homeTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1718i = getArguments().getString(e.a("VAoCCgUWVQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        TreeMap treeMap = new TreeMap();
        treeMap.put(e.a("RwMEAQ=="), String.valueOf(i2));
        if (!TextUtils.isEmpty(this.f1718i)) {
            treeMap.put(e.a("VAoCCgUWVQ=="), this.f1718i);
        }
        treeMap.put(e.a("WwsQEDQBVkQ="), e.a("BVI="));
        treeMap.put(e.a("QxsTAQ=="), e.a("BQ=="));
        b b = f.e.a.j.e0.d.e.b();
        d.a(treeMap);
        m.e<MdApiBean> d2 = b.d(treeMap);
        a aVar = new a(i2);
        d2.d(m.r.a.a()).b(m.r.a.a()).a(f.e.a.j.e0.c.a.a).b(m.l.b.a.a()).c(aVar);
        this.a.b(aVar);
    }
}
