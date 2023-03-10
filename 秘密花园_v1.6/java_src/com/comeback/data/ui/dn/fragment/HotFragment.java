package com.comeback.data.ui.dn.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.dn.adapter.VideoBrowseAdapter;
import com.comeback.data.ui.dn.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.j.h.c.b;
/* loaded from: classes.dex */
public class HotFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HotFragment.m(HotFragment.this, (VideoList) obj);
        }
    }

    public static void m(HotFragment hotFragment, VideoList videoList) {
        if (hotFragment.f116g == 1) {
            hotFragment.f117h.c();
        }
        hotFragment.f117h.a(videoList.getData().getInfo());
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
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().c(i2), new a());
    }
}
