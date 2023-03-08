package com.comeback.data.ui.gdian.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.adapter.ImageAdapter;
import com.comeback.data.ui.gdian.adapter.NovelAdapter;
import com.comeback.data.ui.gdian.adapter.VideoAdapter;
import f.e.a.e;
import f.e.a.j.m.d.a;
import f.e.a.j.m.d.b;
import f.e.a.j.m.d.c;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f909i;

    /* renamed from: j  reason: collision with root package name */
    public int f910j;

    public static SearchResultFragment s(int i2, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QxsTAQ=="), i2);
        bundle.putString(e.a("XAca"), str);
        SearchResultFragment searchResultFragment = new SearchResultFragment();
        searchResultFragment.setArguments(bundle);
        return searchResultFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f909i = getArguments().getString(e.a("XAca"));
        this.f910j = getArguments().getInt(e.a("QxsTAQ=="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        int i2 = this.f910j;
        if (i2 != 0) {
            if (i2 != 1) {
                return new NovelAdapter(getContext());
            }
            return new ImageAdapter(getContext());
        }
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        int i3 = this.f910j;
        if (i3 == 0) {
            g(f.e.a.j.m.e.e.a().c(0, e.a("WwMXARgH"), 20, i2, this.f909i), new c(this, i2));
        } else if (i3 == 1) {
            g(f.e.a.j.m.e.e.a().h(e.a("WwMXARgH"), 20, i2, this.f909i), new b(this, i2));
        } else if (i3 != 2) {
        } else {
            g(f.e.a.j.m.e.e.a().d(e.a("WwMXARgH"), 20, i2, this.f909i), new a(this, i2));
        }
    }
}
