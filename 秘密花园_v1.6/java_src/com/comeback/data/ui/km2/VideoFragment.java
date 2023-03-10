package com.comeback.data.ui.km2;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.km2.bean.KMVideoList;
import com.comeback.data.widget.RecycleGridDivider;
import f.e.a.e;
import f.e.a.j.y.j.d;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class VideoFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f1435i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<KMVideoList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VideoFragment.m(VideoFragment.this, (KMVideoList) obj);
        }
    }

    public static void m(VideoFragment videoFragment, KMVideoList kMVideoList) {
        if (videoFragment.f116g == 1) {
            videoFragment.f117h.c();
        }
        videoFragment.f117h.a(kMVideoList.getData().getList());
    }

    public static VideoFragment n(int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        VideoFragment videoFragment = new VideoFragment();
        videoFragment.setArguments(bundle);
        return videoFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1435i = getArguments().getInt(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.mRvList.addItemDecoration(new RecycleGridDivider());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new StaggeredGridLayoutManager(2, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwMEAQ=="), i2);
            jSONObject.put(e.a("QxsTAQ=="), this.f1435i);
        } catch (Exception unused) {
        }
        g(d.a().b(f.e.a.j.y.j.a.c(jSONObject)), new a());
    }
}
