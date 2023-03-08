package com.comeback.data.ui.maomi.fragment;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.maomi.adapter.ShortVideoAdapter;
import com.comeback.data.ui.maomi.bean.ShortOriginal;
import f.e.a.e;
import f.e.a.j.d0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShortFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ShortOriginal> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ShortFragment.m(ShortFragment.this, (ShortOriginal) obj);
        }
    }

    /* loaded from: classes.dex */
    public class b extends PagerSnapHelper {
        public b(ShortFragment shortFragment) {
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
        public c(ShortFragment shortFragment) {
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

    public static void m(ShortFragment shortFragment, ShortOriginal shortOriginal) {
        if (shortFragment.f116g == 1) {
            shortFragment.f117h.c();
        }
        shortFragment.f117h.a(shortOriginal.getData().getData());
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
        b bVar = new b(this);
        this.mRvList.addOnScrollListener(new c(this));
        bVar.attachToRecyclerView(this.mRvList);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ShortVideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("QhEGFjQaXQ=="), e.a("D1NTUV1FCA=="));
            jSONObject.put(e.a("QxsTAQ=="), e.a("Bg=="));
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        g(d.a().l(f.e.a.j.d0.m.b.a(jSONObject.toString())), new a());
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        VideoPlayerManager.getInstance().onDestroy();
    }
}
