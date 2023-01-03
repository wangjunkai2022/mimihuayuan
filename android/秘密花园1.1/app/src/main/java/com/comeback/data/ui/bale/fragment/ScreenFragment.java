package com.comeback.data.ui.bale.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.bale.adapter.Video2Adapter;
import com.comeback.data.ui.bale.bean.RankList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;
import f.i.b.j;
import i.g0;
import i.z;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ScreenFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public int f305i;

    /* renamed from: j  reason: collision with root package name */
    public int f306j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<RankList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f307f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f307f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankList rankList = (RankList) obj;
            if (this.f307f == 1) {
                ScreenFragment.this.f117h.c();
            }
            ScreenFragment.this.f117h.a(rankList.getResult().getData());
        }
    }

    public static BaseFragment o(int i2, int i3) {
        Bundle bundle = new Bundle();
        bundle.putInt(e.a("QwME"), i2);
        bundle.putInt(e.a("QwMELQ8="), i3);
        ScreenFragment screenFragment = new ScreenFragment();
        screenFragment.setArguments(bundle);
        return screenFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f305i = getArguments().getInt(e.a("QwME"));
        this.f306j = getArguments().getInt(e.a("QwMELQ8="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new Video2Adapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        HashMap hashMap = new HashMap();
        String a2 = e.a("QwMELQ8=");
        int i3 = this.f306j;
        hashMap.put(a2, i3 == -1 ? "" : String.valueOf(i3));
        String a3 = e.a("RA0RECIX");
        int i4 = this.f305i;
        hashMap.put(a3, i4 != -1 ? String.valueOf(i4) : "");
        g(b.a().d(i2, g0.c(new j().j(hashMap), z.c(e.a("VhITCAIQWEcaCVpIEhkMBQxCAAwKAUpWB1tBEx5HWw==")))), new a(i2));
    }
}
