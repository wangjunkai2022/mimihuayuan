package com.comeback.data.ui.xj.fragment;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;
import com.comeback.data.ui.xj.bean.ShortList;

/* loaded from: classes.dex */
public class ShortRecommendFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ShortList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ShortRecommendFragment.m(ShortRecommendFragment.this, (ShortList) obj);
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
            ((ShortVideoAdapter) ShortRecommendFragment.this.f117h).f2224d = findTargetSnapPosition;
            return findTargetSnapPosition;
        }
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.OnScrollListener {
        public c(ShortRecommendFragment shortRecommendFragment) {
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

    public static void m(ShortRecommendFragment shortRecommendFragment, ShortList shortList) {
        if (shortRecommendFragment.f116g == 1) {
            shortRecommendFragment.f117h.c();
        }
        shortRecommendFragment.f117h.a(shortList.getData().getVideos());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.setBackgroundColor(-16777216);
        this.mRvList.setNestedScrollingEnabled(false);
        b bVar = new b();
        this.mRvList.addOnScrollListener(new c(this));
        bVar.attachToRecyclerView(this.mRvList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ShortVideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.r0.f.b.a().k(), new a());
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
