package com.comeback.data.ui.nana.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.nana.adapter.BannerAdapter;
import com.comeback.data.ui.nana.adapter.VTitleAdapter;
import com.comeback.data.ui.nana.adapter.VVideoAdapter;
import com.comeback.data.ui.nana.bean.MenuBean;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.j.h0.l.b;
import f.e.a.j.h0.m.d;
import f.e.a.j.h0.m.e;
import java.util.Iterator;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class RecommendFragment extends BaseVRefreshFragment {

    /* renamed from: j  reason: collision with root package name */
    public String f1869j;

    /* loaded from: classes.dex */
    public class a extends j<MenuBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            RecommendFragment.this.refreshLayout.m(false);
        }

        @Override // m.j
        public void f(MenuBean menuBean) {
            RecommendFragment.q(RecommendFragment.this, menuBean, 0);
        }
    }

    public static void q(RecommendFragment recommendFragment, MenuBean menuBean, int i2) {
        if (recommendFragment != null) {
            List<MenuBean.ResponseEntity> response = menuBean.getResponse();
            if (response == null || response.size() <= i2) {
                return;
            }
            MenuBean.ResponseEntity responseEntity = response.get(i2);
            recommendFragment.g(e.a().f(recommendFragment.f1869j, responseEntity.getId(), d.a), new f.e.a.j.h0.l.a(recommendFragment, i2, responseEntity, menuBean));
            return;
        }
        throw null;
    }

    public static void s(RecommendFragment recommendFragment, MenuBean.ResponseEntity responseEntity, VideoListBean videoListBean) {
        if (recommendFragment != null) {
            if (f.e.a.e.a("VQMNCg4B").equals(responseEntity.getTitle())) {
                List<VideoListBean.ResponseEntity.VideosEntity> videos = videoListBean.getResponse().getVideos();
                Iterator<VideoListBean.ResponseEntity.VideosEntity> it = videos.iterator();
                while (it.hasNext()) {
                    if (TextUtils.isEmpty(it.next().getId())) {
                        it.remove();
                    }
                }
                recommendFragment.f120i.b(new BannerAdapter(recommendFragment.getContext(), new i(), videos, new b(recommendFragment)));
                return;
            }
            recommendFragment.f120i.b(new VTitleAdapter(recommendFragment.getContext(), responseEntity, new c()));
            g gVar = new g(2);
            gVar.D(5);
            gVar.C(5);
            gVar.s = true;
            recommendFragment.f120i.b(new VVideoAdapter(recommendFragment.getContext(), videoListBean.getResponse().getVideos(), gVar));
            return;
        }
        throw null;
    }

    public static BaseFragment t(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(f.e.a.e.a("QQsHAQQsTUoDAw=="), str);
        RecommendFragment recommendFragment = new RecommendFragment();
        recommendFragment.setArguments(bundle);
        return recommendFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1869j = getArguments().getString(f.e.a.e.a("QQsHAQQsTUoDAw=="), "");
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(e.a().e(this.f1869j, d.a), new a());
    }
}
