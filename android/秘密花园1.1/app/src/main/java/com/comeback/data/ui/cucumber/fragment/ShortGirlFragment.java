package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cucumber.adapter.ShortVideoAdapter;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class ShortGirlFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f525f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f525f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f525f == 1) {
                ShortGirlFragment.this.f117h.c();
            }
            ShortGirlFragment.this.f117h.a(videoList.getData());
        }
    }

    /* loaded from: classes.dex */
    public class b extends PagerSnapHelper {
        public b(ShortGirlFragment shortGirlFragment) {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            return super.findSnapView(layoutManager);
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int i2, int i3) {
            return super.findTargetSnapPosition(layoutManager, i2, i3);
        }
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.OnScrollListener {
        public c(ShortGirlFragment shortGirlFragment) {
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

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        this.mRvList.setNestedScrollingEnabled(false);
        b bVar = new b(this);
        this.mRvList.addOnScrollListener(new c(this));
        bVar.attachToRecyclerView(this.mRvList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ShortVideoAdapter(getContext(), true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.g.h.c.a().x(), new a(i2));
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
