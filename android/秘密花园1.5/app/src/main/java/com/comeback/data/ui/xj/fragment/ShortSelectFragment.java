package com.comeback.data.ui.xj.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xj.adapter.ShortListAdapter;
import com.comeback.data.ui.xj.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.s0.g.b;

/* loaded from: classes.dex */
public class ShortSelectFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f2340i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2341f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2341f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2341f == 1) {
                ShortSelectFragment.this.f117h.c();
            }
            ShortSelectFragment.this.f117h.a(videoList.getData().getVodrows());
        }
    }

    public static ShortSelectFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        ShortSelectFragment shortSelectFragment = new ShortSelectFragment();
        shortSelectFragment.setArguments(bundle);
        return shortSelectFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2340i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.setPadding(h.M(8.0f), 0, h.M(8.0f), 0);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ShortListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().f(this.f2340i, i2), new a(i2));
    }
}
