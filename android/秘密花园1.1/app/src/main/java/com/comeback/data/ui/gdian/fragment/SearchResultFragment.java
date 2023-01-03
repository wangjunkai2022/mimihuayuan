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
import f.e.a.j.l.d.a;
import f.e.a.j.l.d.b;
import f.e.a.j.l.d.c;

/* loaded from: classes.dex */
public class SearchResultFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f836i;

    /* renamed from: j  reason: collision with root package name */
    public int f837j;

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
        this.f836i = getArguments().getString(e.a("XAca"));
        this.f837j = getArguments().getInt(e.a("QxsTAQ=="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        int i2 = this.f837j;
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
        int i3 = this.f837j;
        if (i3 == 0) {
            g(f.e.a.j.l.e.e.a().c(0, e.a("WwMXARgH"), 20, i2, this.f836i), new c(this, i2));
        } else if (i3 == 1) {
            g(f.e.a.j.l.e.e.a().h(e.a("WwMXARgH"), 20, i2, this.f836i), new b(this, i2));
        } else if (i3 != 2) {
        } else {
            g(f.e.a.j.l.e.e.a().d(e.a("WwMXARgH"), 20, i2, this.f836i), new a(this, i2));
        }
    }
}
