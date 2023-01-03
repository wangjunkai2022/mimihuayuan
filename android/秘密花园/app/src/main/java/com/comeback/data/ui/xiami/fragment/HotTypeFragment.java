package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xiami.adapter.VideoAdapter;
import com.comeback.data.ui.xiami.bean.VideoList;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HotTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f2168i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2169f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2169f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2169f == 1) {
                HotTypeFragment.this.f117h.c();
            }
            HotTypeFragment.this.f117h.a(videoList.getData());
        }
    }

    public static HotTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        HotTypeFragment hotTypeFragment = new HotTypeFragment();
        hotTypeFragment.setArguments(bundle);
        return hotTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2168i = getArguments().getString(e.a("QxsTAQ=="));
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
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("QAcBOwQVX1oQD1UL", hashMap, f.b.a.a.a.G(this.f116g, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), "QxsTAQ=="), this.f2168i);
        g(a2.j(hashMap), new a(i2));
    }
}
