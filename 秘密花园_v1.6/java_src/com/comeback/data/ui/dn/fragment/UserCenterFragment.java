package com.comeback.data.ui.dn.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.dn.adapter.VideoBrowseAdapter;
import com.comeback.data.ui.dn.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h.c.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class UserCenterFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f574i;

    /* renamed from: j  reason: collision with root package name */
    public String f575j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            UserCenterFragment.m(UserCenterFragment.this, (VideoList) obj);
        }
    }

    public static void m(UserCenterFragment userCenterFragment, VideoList videoList) {
        if (userCenterFragment.f116g == 1) {
            userCenterFragment.f117h.c();
        }
        userCenterFragment.f117h.a(videoList.getData().getInfo());
    }

    public static UserCenterFragment n(String str, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhE0CxkY"), z);
        bundle.putString(e.a("XgY="), str);
        UserCenterFragment userCenterFragment = new UserCenterFragment();
        userCenterFragment.setArguments(bundle);
        return userCenterFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f574i = getArguments().getBoolean(e.a("XhE0CxkY"));
        this.f575j = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoBrowseAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.h.c.a a2 = b.a();
        HashMap hashMap = new HashMap();
        if (this.f574i) {
            hashMap.put(f.b.a.a.a.i("GlM=", hashMap, f.b.a.a.a.i("TQpOBwU=", hashMap, f.b.a.a.a.i("YQsHAQRdXlYHLlsKHTwKD1IN", hashMap, e.a("RAcREgIQXA=="), "WwMNAx4SXlY="), "QgsH"), "Qw0WDQ8="), this.f575j);
            hashMap.put(e.a("Rw=="), String.valueOf(i2));
        } else {
            hashMap.put(f.b.a.a.a.i("GlM=", hashMap, f.b.a.a.a.i("TQpOBwU=", hashMap, f.b.a.a.a.i("YhEGFkUUXEc/D18CLgMHDlgR", hashMap, e.a("RAcREgIQXA=="), "WwMNAx4SXlY="), "QgsH"), "Qw0WDQ8="), this.f575j);
            hashMap.put(e.a("Rw=="), String.valueOf(i2));
        }
        g(a2.f(hashMap), new a());
    }
}
