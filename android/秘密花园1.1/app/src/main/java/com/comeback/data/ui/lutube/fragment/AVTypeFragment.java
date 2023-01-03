package com.comeback.data.ui.lutube.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.lutube.adapter.VideoTypeAdapter;
import com.comeback.data.ui.lutube.bean.VideoType;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.a0.k.d;
import f.e.a.k.b;
import m.j;

/* loaded from: classes.dex */
public class AVTypeFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public VideoTypeAdapter f1421g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f1422h;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a extends j<VideoType> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(VideoType videoType) {
            AVTypeFragment.this.f1421g.a(videoType.getResponse().getCategories());
        }
    }

    public static AVTypeFragment h(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhEiEg=="), z);
        AVTypeFragment aVTypeFragment = new AVTypeFragment();
        aVTypeFragment.setArguments(bundle);
        return aVTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1422h = getArguments().getBoolean(e.a("XhEiEg=="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        m.e<VideoType> c2;
        if (this.f1422h) {
            c2 = d.a().l(b.u);
        } else {
            c2 = d.a().c(b.u);
        }
        g(c2, new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 3));
        VideoTypeAdapter videoTypeAdapter = new VideoTypeAdapter(getContext(), this.f1422h);
        this.f1421g = videoTypeAdapter;
        this.rvList.setAdapter(videoTypeAdapter);
    }
}
