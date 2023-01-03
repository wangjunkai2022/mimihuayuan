package com.comeback.data.ui.slf.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.slf.adapter.CartoonAdapter;
import com.comeback.data.ui.slf.adapter.ImageAdapter;
import com.comeback.data.ui.slf.adapter.Novel2Adapter;
import com.comeback.data.ui.slf.adapter.VideoAdapter;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import f.e.a.e;
import f.e.a.j.k0.h.b;
import f.e.a.j.k0.h.d;
import f.i.b.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class RankFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f2060i;

    /* renamed from: j  reason: collision with root package name */
    public String f2061j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArrayList<SLFItemBean>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2062f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2062f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f2062f == 1) {
                RankFragment.this.refreshLayout.A = false;
                RankFragment.this.f117h.c();
            }
            RankFragment.this.f117h.a(arrayList);
        }
    }

    public static RankFragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putString(e.a("WBAHARk="), str2);
        RankFragment rankFragment = new RankFragment();
        rankFragment.setArguments(bundle);
        return rankFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2060i = getArguments().getString(e.a("QxsTAQ=="));
        this.f2061j = getArguments().getString(e.a("WBAHARk="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        if (this.f2060i.equals(e.a("Xg8CAw4="))) {
            return new ImageAdapter(getContext(), 0);
        }
        if (this.f2060i.equals(e.a("VAMREAQcVw=="))) {
            return new CartoonAdapter(getContext());
        }
        if (this.f2060i.equals(e.a("QQsHAQQ="))) {
            return new VideoAdapter(getContext());
        }
        return new Novel2Adapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        if (this.f2060i.equals(e.a("VAMREAQcVw=="))) {
            return new GridLayoutManager(getContext(), 3);
        }
        if (this.f2060i.equals(e.a("QQsHAQQ="))) {
            return new GridLayoutManager(getContext(), 2);
        }
        if (this.f2060i.equals(e.a("Xg8CAw4="))) {
            return new GridLayoutManager(getContext(), 2);
        }
        return super.i();
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        r rVar = new r();
        rVar.e(e.a("WBAHARk="), this.f2061j);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        g(b.a().d(this.f2060i, d.a(rVar.toString())), new a(i2));
    }
}
