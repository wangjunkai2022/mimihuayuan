package com.comeback.data.ui.dn.fragment;

import android.text.TextUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.dn.adapter.VideoBrowseAdapter;
import com.comeback.data.ui.dn.bean.VideoList;
import f.e.a.e;
import f.e.a.j.h.c.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SearchVideoFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f572i = "";

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SearchVideoFragment.m(SearchVideoFragment.this, (VideoList) obj);
        }
    }

    public static void m(SearchVideoFragment searchVideoFragment, VideoList videoList) {
        if (searchVideoFragment.f116g == 1) {
            searchVideoFragment.f117h.c();
        }
        searchVideoFragment.f117h.a(videoList.getData().getInfo());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoBrowseAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        if (TextUtils.isEmpty(this.f572i)) {
            this.refreshLayout.k();
            this.refreshLayout.j(true);
            return;
        }
        f.e.a.j.h.c.a a2 = b.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("GlM=", hashMap, f.b.a.a.a.i("TQpOBwU=", hashMap, f.b.a.a.a.i("fw0OAUUFUFcWCWcCGRgAAw==", hashMap, e.a("RAcREgIQXA=="), "WwMNAx4SXlY="), "QgsH"), "Rw=="), "XAca"), this.f572i);
        g(a2.e(hashMap), new a());
    }
}
