package com.comeback.data.ui.iqiyi.fragment;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.iqiyi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.j.s.e.d;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class HomeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public ShortVideoAdapter f1154i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArrayList<VideoInfo>> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            HomeFragment.m(HomeFragment.this, (ArrayList) obj);
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
            HomeFragment.this.f1154i.f1141d = findTargetSnapPosition;
            return findTargetSnapPosition;
        }
    }

    /* loaded from: classes.dex */
    public class c extends RecyclerView.OnScrollListener {
        public c(HomeFragment homeFragment) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i2) {
            super.onScrollStateChanged(recyclerView, i2);
            ExoUserPlayer videoPlayer = VideoPlayerManager.getInstance().getVideoPlayer();
            if (videoPlayer == null || i2 != 0) {
                VideoPlayerManager.getInstance().onPause(true);
            } else {
                videoPlayer.onResume();
            }
        }
    }

    public static void m(HomeFragment homeFragment, ArrayList arrayList) {
        if (homeFragment != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((VideoInfo) it.next()).isAd()) {
                    it.remove();
                }
            }
            if (homeFragment.f116g == 1) {
                homeFragment.f117h.c();
            }
            homeFragment.f117h.a(arrayList);
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_iqiyi_home;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void c() {
        VideoPlayerManager.getInstance().onPause(true);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        this.refreshLayout.setBackgroundColor(-16777216);
        this.mRvList.setNestedScrollingEnabled(false);
        b bVar = new b();
        this.mRvList.addOnScrollListener(new c(this));
        bVar.attachToRecyclerView(this.mRvList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        ShortVideoAdapter shortVideoAdapter = new ShortVideoAdapter(getContext());
        this.f1154i = shortVideoAdapter;
        return shortVideoAdapter;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(d.a().f(f.e.a.j.s.e.b.d(i2)), new a());
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
