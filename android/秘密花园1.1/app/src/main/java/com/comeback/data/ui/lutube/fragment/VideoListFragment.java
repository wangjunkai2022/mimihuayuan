package com.comeback.data.ui.lutube.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.lutube.adapter.VideoListAdapter;
import com.comeback.data.ui.lutube.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.a0.k.b;
import f.e.a.j.a0.k.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1443i;

    /* renamed from: j  reason: collision with root package name */
    public String f1444j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1445f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1445f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1445f == 1) {
                VideoListFragment.this.f117h.c();
            }
            VideoListFragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static VideoListFragment o(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("XgY="), i2);
        bundle.putString(e.a("QxsTAQ=="), str);
        VideoListFragment videoListFragment = new VideoListFragment();
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1443i = getArguments().getInt(e.a("XgY="), 0);
        this.f1444j = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_lutube_video;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        if (this.f1444j.equals(e.a("RAoMFh8="))) {
            return new GridLayoutManager(getContext(), 2);
        }
        return super.i();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        int i3 = this.f1443i;
        if (i3 == 999) {
            i3 = 0;
        }
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        if (this.f1443i == 999) {
            hashMap.put(f.b.a.a.a.i("UwMa", hashMap, e.a("Qw0T"), "WBAHARk="), e.a("QQsGExg="));
        } else {
            hashMap.put(e.a("Qw0T"), "");
            hashMap.put(e.a("WBAHARk="), e.a("QwsOAQ=="));
        }
        hashMap.put(e.a("QQsHAQQsTUoDAw=="), this.f1444j);
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), f.e.a.k.b.u);
        g(a2.k(i3, hashMap), new a(i2));
    }
}
