package com.comeback.data.ui.cucumber.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.RankVideoAdapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import f.e.a.e;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoRankItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f534i;

    /* renamed from: j  reason: collision with root package name */
    public String f535j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VideoRankItemFragment.this.refreshLayout.t(false);
            VideoRankItemFragment videoRankItemFragment = VideoRankItemFragment.this;
            videoRankItemFragment.refreshLayout.A = false;
            videoRankItemFragment.f117h.a(((VideoList) obj).getData());
        }
    }

    public static BaseFragment n(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XAca"), str);
        bundle.putString(e.a("QxsTAQ=="), str2);
        VideoRankItemFragment videoRankItemFragment = new VideoRankItemFragment();
        videoRankItemFragment.setArguments(bundle);
        return videoRankItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f534i = getArguments().getString(e.a("XAca"));
        this.f535j = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new RankVideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(30, hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), "QxsTAQ=="), this.f535j);
        g(c.a().r(this.f534i, hashMap), new a());
    }
}
