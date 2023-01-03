package com.comeback.data.ui.xiami.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.xiami.adapter.ImageAdapter;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.data.ui.xiami.bean.ImageList;
import f.e.a.e;
import f.e.a.j.p0.f.b;
import f.e.a.j.p0.f.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ImageFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public Category.DataBean.InfoBean f2171i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ImageList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2172f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2172f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ImageList imageList = (ImageList) obj;
            if (this.f2172f == 1) {
                ImageFragment.this.f117h.c();
            }
            ImageFragment.this.f117h.a(imageList.getData());
        }
    }

    public static ImageFragment o(Category.DataBean.InfoBean infoBean) {
        Bundle bundle = new Bundle();
        bundle.putParcelable(e.a("UwMXBSkWWF0="), infoBean);
        ImageFragment imageFragment = new ImageFragment();
        imageFragment.setArguments(bundle);
        return imageFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f2171i = (Category.DataBean.InfoBean) getArguments().getParcelable(e.a("UwMXBSkWWF0="));
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
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("QAcBOwQVX1oQD1UL", hashMap, f.b.a.a.a.G(this.f116g, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), "VAoKCA86XQ=="), String.valueOf(this.f2171i.getChildId()));
        g(a2.k(hashMap), new a(i2));
    }
}
