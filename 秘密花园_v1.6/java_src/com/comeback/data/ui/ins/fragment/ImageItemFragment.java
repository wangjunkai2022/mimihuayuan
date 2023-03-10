package com.comeback.data.ui.ins.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.ins.adapter.ImageAdapter;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.s.e.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ImageItemFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1184i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ImageList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1185f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1185f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ImageList imageList = (ImageList) obj;
            if (this.f1185f == 1) {
                ImageItemFragment.this.f117h.c();
            }
            ImageItemFragment.this.f117h.a(imageList.getData().getResultList());
        }
    }

    public static ImageItemFragment o(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("XgY="), str);
        ImageItemFragment imageItemFragment = new ImageItemFragment();
        imageItemFragment.setArguments(bundle);
        return imageItemFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1184i = getArguments().getString(e.a("XgY="), e.a("Bw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ins_img;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ImageAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new StaggeredGridLayoutManager(2, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.s.e.a a2 = b.a();
        String str = this.f1184i;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("VhEA", hashMap, f.b.a.a.a.G(20, hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "RAsZAQ=="), "RA0REA=="), "Rw0QED8KSVY="), String.valueOf(0));
        g(a2.f(str, hashMap, f.e.a.k.b.v0), new a(i2));
    }
}
