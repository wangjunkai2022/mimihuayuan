package com.comeback.data.ui.gdian.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gdian.adapter.ImageAdapter;
import com.comeback.data.ui.gdian.bean.ImageList;
import f.e.a.e;
/* loaded from: classes.dex */
public class ImageTypeFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f902i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ImageList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f903f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f903f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ImageList imageList = (ImageList) obj;
            if (this.f903f == 1) {
                ImageTypeFragment.this.f117h.c();
            }
            ImageTypeFragment.this.f117h.a(imageList.getData().getData());
        }
    }

    public static ImageTypeFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("RA0REA=="), str);
        ImageTypeFragment imageTypeFragment = new ImageTypeFragment();
        imageTypeFragment.setArguments(bundle);
        return imageTypeFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f902i = getArguments().getString(e.a("RA0REA=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ImageAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(f.e.a.j.m.e.e.a().h(this.f902i, 20, i2, ""), new a(i2));
    }
}
