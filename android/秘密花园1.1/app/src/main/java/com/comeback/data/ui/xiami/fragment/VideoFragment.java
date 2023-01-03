package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xiami.adapter.VideoAdapter;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.data.ui.xiami.bean.VideoList;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class VideoFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public Category.DataBean.InfoBean f2183i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2184f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2184f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2184f == 1) {
                VideoFragment.this.f117h.c();
            }
            VideoFragment.this.f117h.a(videoList.getData());
        }
    }

    public static VideoFragment o(Category.DataBean.InfoBean infoBean) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBSkWWF0="), infoBean);
        VideoFragment videoFragment = new VideoFragment();
        videoFragment.setArguments(bundle);
        return videoFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2183i = (Category.DataBean.InfoBean) getArguments().getParcelable(e.a("UwMXBSkWWF0="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("QAcBOwQVX1oQD1UL", hashMap, f.b.a.a.a.G(this.f116g, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), "VAoKCA86XQ=="), String.valueOf(this.f2183i.getChildId()));
        hashMap.put(e.a("VAMXAQwcS0o6Ag=="), this.f2183i.getCategoryId());
        g(a2.b(hashMap), new a(i2));
    }
}
