package com.comeback.data.ui.xj.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xj.adapter.VideoListAdapter;
import com.comeback.data.ui.xj.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.s0.g.b;
/* loaded from: classes.dex */
public class HotItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f2339i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2340f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2340f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2340f == 1) {
                HotItemFragment.this.f117h.c();
            }
            HotItemFragment.this.f117h.a(videoList.getData().getVodrows());
        }
    }

    public static HotItemFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        HotItemFragment hotItemFragment = new HotItemFragment();
        hotItemFragment.setArguments(bundle);
        return hotItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2339i = getArguments().getString(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().a(this.f2339i, i2), new a(i2));
    }
}
