package com.comeback.data.ui.lutube.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.lutube.adapter.VideoListAdapter;
import com.comeback.data.ui.lutube.bean.VideoList;
import f.e.a.e;
import f.e.a.j.a0.k.b;
import f.e.a.j.a0.k.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoList2Fragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1434i;

    /* renamed from: j  reason: collision with root package name */
    public String f1435j;

    /* renamed from: k  reason: collision with root package name */
    public String f1436k;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1437f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1437f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1437f == 1) {
                VideoList2Fragment.this.f117h.c();
            }
            VideoList2Fragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static VideoList2Fragment o(int i2, String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WBAHARk="), str2);
        VideoList2Fragment videoList2Fragment = new VideoList2Fragment();
        videoList2Fragment.setArguments(bundle);
        return videoList2Fragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1434i = getArguments().getInt(e.a("XgY="), 0);
        this.f1435j = getArguments().getString(e.a("QxsTAQ=="));
        this.f1436k = getArguments().getString(e.a("WBAHARk="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), false);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(e.a("WBAHARk="), this.f1436k);
        hashMap.put(f.b.a.a.a.G(this.f1434i, hashMap, e.a("VAMXAQwcS0o="), "QQsHAQQsTUoDAw=="), this.f1435j);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), f.e.a.k.b.u);
        g(a2.b(hashMap), new a(i2));
    }
}
