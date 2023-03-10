package com.comeback.data.ui.ins.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.ins.adapter.VideoAdapter;
import com.comeback.data.ui.ins.bean.VideoList;
import f.e.a.e;
import f.e.a.j.s.e.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class VideoItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1200i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1201f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1201f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1201f == 1) {
                VideoItemFragment.this.f117h.c();
            }
            VideoItemFragment.this.f117h.a(videoList.getData().getResultList());
        }
    }

    public static VideoItemFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        VideoItemFragment videoItemFragment = new VideoItemFragment();
        videoItemFragment.setArguments(bundle);
        return videoItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1200i = getArguments().getString(e.a("XgY="), e.a("Bw=="));
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
        f.e.a.j.s.e.a a2 = b.a();
        String str = this.f1200i;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("VhEA", hashMap, f.b.a.a.a.G(20, hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RAsZAQ=="), "RA0REA=="), "Rw0QED8KSVY="), String.valueOf(1));
        g(a2.i(str, hashMap, f.e.a.k.b.v0), new a(i2));
    }
}
