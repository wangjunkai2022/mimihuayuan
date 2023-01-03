package com.comeback.data.ui.iqiyi.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.iqiyi.adapter.VideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import f.e.a.e;
import f.e.a.j.s.e.b;
import f.e.a.j.s.e.d;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class UserCenterFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public boolean f1162i;

    /* renamed from: j  reason: collision with root package name */
    public String f1163j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArrayList<VideoInfo>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1164f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1164f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1164f == 1) {
                UserCenterFragment.this.f117h.c();
            }
            UserCenterFragment.this.f117h.a(arrayList);
        }
    }

    public static UserCenterFragment o(String str, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(e.a("XhE0CxkY"), z);
        bundle.putString(e.a("XgY="), str);
        UserCenterFragment userCenterFragment = new UserCenterFragment();
        userCenterFragment.setArguments(bundle);
        return userCenterFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1162i = getArguments().getBoolean(e.a("XhE0CxkY"));
        this.f1163j = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        m.e<ArrayList<VideoInfo>> eVar;
        if (this.f1162i) {
            eVar = d.a().f(b.h(i2, this.f1163j));
        } else {
            eVar = d.a().h(b.h(i2, this.f1163j));
        }
        g(eVar, new a(i2));
    }
}
