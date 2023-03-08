package com.comeback.data.ui.iqiyi.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.iqiyi.adapter.VideoAdapter;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.t.e.b;
import f.e.a.j.t.e.d;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SpecialFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1234i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArrayList<VideoInfo>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1235f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1235f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((VideoInfo) it.next()).isAd()) {
                    it.remove();
                }
            }
            if (this.f1235f == 1) {
                SpecialFragment.this.f117h.c();
            }
            SpecialFragment.this.f117h.a(arrayList);
        }
    }

    public static SpecialFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        SpecialFragment specialFragment = new SpecialFragment();
        specialFragment.setArguments(bundle);
        return specialFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1234i = getArguments().getString(e.a("XgY="));
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
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(d.a().f(b.g(i2, this.f1234i)), new a(i2));
    }
}
