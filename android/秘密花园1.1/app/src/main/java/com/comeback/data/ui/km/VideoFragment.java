package com.comeback.data.ui.km;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.km.bean.KMVideoList;
import com.comeback.data.widget.RecycleGridDivider;
import f.e.a.e;
import f.e.a.j.w.g.b;
import f.e.a.j.w.g.d;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VideoFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f1307i;

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

    public static VideoFragment n(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhErCx8="), z);
        VideoFragment videoFragment = new VideoFragment();
        videoFragment.setArguments(bundle);
        return videoFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1307i = getArguments().getBoolean(e.a("XhErCx8="));
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
        m.e<KMVideoList> a2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwcRNAoUXA=="), 14);
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (Exception unused) {
        }
        Map<String, String> a3 = b.a(jSONObject.toString());
        if (this.f1307i) {
            a2 = d.a().b(a3);
        } else {
            a2 = d.a().a(a3);
        }
        g(a2, new a());
    }
}
