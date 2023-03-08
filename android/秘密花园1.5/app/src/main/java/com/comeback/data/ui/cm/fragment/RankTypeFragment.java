package com.comeback.data.ui.cm.fragment;

import android.os.Bundle;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.cm.adapter.VideoAdapter;
import com.comeback.data.ui.cm.bean.RankVideo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e.f.b;

/* loaded from: classes.dex */
public class RankTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f385i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RankVideo> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f386f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f386f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankVideo rankVideo = (RankVideo) obj;
            if (this.f386f == 1) {
                RankTypeFragment.this.f117h.c();
            }
            RankTypeFragment.this.f117h.a(rankVideo.getRescont().getAll());
        }
    }

    public static BaseFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QwME"), str);
        RankTypeFragment rankTypeFragment = new RankTypeFragment();
        rankTypeFragment.setArguments(bundle);
        return rankTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f385i = getArguments().getString(e.a("QwME"));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().h(this.f385i, i2), new a(i2));
    }
}
