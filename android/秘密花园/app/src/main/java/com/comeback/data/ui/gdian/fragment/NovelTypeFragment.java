package com.comeback.data.ui.gdian.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.adapter.NovelAdapter;
import com.comeback.data.ui.gdian.bean.NovelList;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f833i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NovelList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f834f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f834f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            NovelList novelList = (NovelList) obj;
            if (this.f834f == 1) {
                NovelTypeFragment.this.f117h.c();
            }
            NovelTypeFragment.this.f117h.a(novelList.getData().getData());
        }
    }

    public static NovelTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("RA0REA=="), str);
        NovelTypeFragment novelTypeFragment = new NovelTypeFragment();
        novelTypeFragment.setArguments(bundle);
        return novelTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f833i = getArguments().getString(e.a("RA0REA=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.l.e.e.a().d(this.f833i, 20, i2, ""), new a(i2));
    }
}
