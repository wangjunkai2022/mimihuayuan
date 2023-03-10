package com.comeback.data.ui.hgl.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.hgl.adapter.ChannelAdapter;
import com.comeback.data.ui.hgl.bean.ChannelList;
import com.comeback.data.widget.RecycleGridDivider;
import f.e.a.e;
import f.e.a.j.i0.c;
/* loaded from: classes.dex */
public class ChannelFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f1105i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ChannelList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ChannelFragment.this.f117h.c();
            ChannelFragment.this.f117h.a(((ChannelList) obj).getPingtai());
        }
    }

    public static ChannelFragment n(boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("VAoCCgUWVQI="), z);
        ChannelFragment channelFragment = new ChannelFragment();
        channelFragment.setArguments(bundle);
        return channelFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1105i = getArguments().getBoolean(e.a("VAoCCgUWVQI="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.t(false);
        this.mRvList.addItemDecoration(new RecycleGridDivider(2));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ChannelAdapter(getContext(), this.f1105i);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 3);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        m.e<ChannelList> e2;
        if (this.f1105i) {
            e2 = c.a().k();
        } else {
            e2 = c.a().e();
        }
        g(e2, new a());
    }
}
