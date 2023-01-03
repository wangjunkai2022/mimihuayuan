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
public class VideoList3Fragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1439i;

    /* renamed from: j  reason: collision with root package name */
    public String f1440j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1441f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1441f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1441f == 1) {
                VideoList3Fragment.this.f117h.c();
            }
            VideoList3Fragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static VideoList3Fragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WQMOAQ=="), str2);
        VideoList3Fragment videoList3Fragment = new VideoList3Fragment();
        videoList3Fragment.setArguments(bundle);
        return videoList3Fragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1439i = getArguments().getString(e.a("QxsTAQ=="));
        this.f1440j = getArguments().getString(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), this.f1439i.equals(e.a("Ww0NAw==")));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b a2 = d.a();
        String str = this.f1439i;
        String str2 = this.f1440j;
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), f.e.a.k.b.u);
        g(a2.h(str, str2, hashMap), new a(i2));
    }
}
