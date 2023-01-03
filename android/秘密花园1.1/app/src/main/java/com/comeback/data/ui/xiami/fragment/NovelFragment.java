package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.DividerItemDecoration;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xiami.adapter.NovelAdapter;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.data.ui.xiami.bean.NovelList;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class NovelFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public Category.DataBean.InfoBean f2174i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<NovelList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2175f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2175f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            NovelList novelList = (NovelList) obj;
            if (this.f2175f == 1) {
                NovelFragment.this.f117h.c();
            }
            NovelFragment.this.f117h.a(novelList.getData());
        }
    }

    public static NovelFragment o(Category.DataBean.InfoBean infoBean) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBSkWWF0="), infoBean);
        NovelFragment novelFragment = new NovelFragment();
        novelFragment.setArguments(bundle);
        return novelFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2174i = (Category.DataBean.InfoBean) getArguments().getParcelable(e.a("UwMXBSkWWF0="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.mRvList.addItemDecoration(new DividerItemDecoration(getContext(), 1));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new NovelAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("QAcBOwQVX1oQD1UL", hashMap, f.b.a.a.a.G(this.f116g, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), "VAoKCA86XQ=="), String.valueOf(this.f2174i.getChildId()));
        g(a2.g(hashMap), new a(i2));
    }
}
