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
public class CategoryFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1148i;

    /* renamed from: j  reason: collision with root package name */
    public String f1149j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ArrayList<VideoInfo>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1150f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1150f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1150f == 1) {
                CategoryFragment.this.f117h.c();
            }
            CategoryFragment.this.f117h.a(arrayList);
        }
    }

    public static CategoryFragment o(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        bundle.putString(e.a("WBAHARk="), str2);
        CategoryFragment categoryFragment = new CategoryFragment();
        categoryFragment.setArguments(bundle);
        return categoryFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1148i = getArguments().getString(e.a("XgY="));
        this.f1149j = getArguments().getString(e.a("WBAHARk="));
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
        g(d.a().b(b.c(this.f1148i, this.f1149j, i2)), new a(i2));
    }
}
