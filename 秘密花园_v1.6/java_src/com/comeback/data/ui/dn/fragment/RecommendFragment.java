package com.comeback.data.ui.dn.fragment;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.dn.adapter.ShortVideoAdapter;
import com.comeback.data.ui.dn.bean.VideoList;
import com.comeback.secret.garden.R;
/* loaded from: classes.dex */
public class RecommendFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public ShortVideoAdapter f568i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            RecommendFragment.m(RecommendFragment.this, (VideoList) obj);
        }
    }

    /* loaded from: classes.dex */
    public class b extends PagerSnapHelper {
        public b() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            return super.findSnapView(layoutManager);
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
            int findTargetSnapPosition = super.findTargetSnapPosition(layoutManager, i2, i3);
            RecommendFragment.this.f568i.f552d = findTargetSnapPosition;
            return findTargetSnapPosition;
        }
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.OnScrollListener {
        public c(RecommendFragment recommendFragment) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            ExoUserPlayer videoPlayer = VideoPlayerManager.getInstance().getVideoPlayer();
            if (videoPlayer != null && i2 == 0) {
                videoPlayer.onResume();
            } else {
                VideoPlayerManager.getInstance().onPause(true);
            }
        }
    }

    public static void m(RecommendFragment recommendFragment, VideoList videoList) {
        if (recommendFragment.f116g == 1) {
            recommendFragment.f117h.c();
        }
        recommendFragment.f117h.a(videoList.getData().getInfo());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        this.mRvList.setNestedScrollingEnabled(false);
        b bVar = new b();
        this.mRvList.addOnScrollListener(new c(this));
        bVar.attachToRecyclerView(this.mRvList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        ShortVideoAdapter shortVideoAdapter = new ShortVideoAdapter(getContext());
        this.f568i = shortVideoAdapter;
        return shortVideoAdapter;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.h.c.b.a().d(), new a());
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
