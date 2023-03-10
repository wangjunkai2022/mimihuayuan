package com.comeback.data.ui.jav.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.jav.adapter.ActorAdapter;
import com.comeback.data.ui.jav.adapter.VideoAdapter;
import f.e.a.e;
import f.e.a.j.i0.c;
import f.e.a.k.b;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;
/* loaded from: classes.dex */
public class VideoListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1314i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f1315j;

    /* renamed from: k  reason: collision with root package name */
    public d<i0> f1316k;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            VideoListFragment.m(VideoListFragment.this, true);
            VideoListFragment.this.refreshLayout.m(true);
            if (g0Var.a.f6533e > 300) {
                e.a("BFJTRA4BS1wB");
                f.e.a.k.f.a();
                return;
            }
            try {
                String H = g0Var.b.H();
                if (this.a == 1) {
                    VideoListFragment.this.f117h.c();
                }
                if (VideoListFragment.this.f1315j) {
                    VideoListFragment.this.f117h.a(f.e.a.j.v.e.a.d(H).getList());
                    return;
                }
                VideoListFragment.this.f117h.a(f.e.a.j.v.e.a.a(H));
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.e.a.k.f.b();
            VideoListFragment.n(VideoListFragment.this, false);
            VideoListFragment.this.refreshLayout.m(false);
        }
    }

    public static void m(VideoListFragment videoListFragment, boolean z) {
        videoListFragment.refreshLayout.j(z);
    }

    public static void n(VideoListFragment videoListFragment, boolean z) {
        videoListFragment.refreshLayout.j(z);
    }

    public static VideoListFragment o(String str, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QhAP"), str);
        bundle.putBoolean(e.a("XhE1DQ8WVg=="), z);
        VideoListFragment videoListFragment = new VideoListFragment();
        videoListFragment.setArguments(bundle);
        return videoListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1314i = getArguments().getString(e.a("QhAP"));
        this.f1315j = getArguments().getBoolean(e.a("XhE1DQ8WVg=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        if (this.f1315j) {
            return new VideoAdapter(getContext(), false);
        }
        return new ActorAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), this.f1315j ? 2 : 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        d<i0> b = c.a().b(this.f1314i + e.a("ERICAw5O") + i2, b.h0, b.f4054c);
        this.f1316k = b;
        b.X(new a(i2));
    }

    @Override // com.comeback.data.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        d<i0> dVar = this.f1316k;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
