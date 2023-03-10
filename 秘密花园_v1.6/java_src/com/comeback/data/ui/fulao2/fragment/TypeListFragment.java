package com.comeback.data.ui.fulao2.fragment;

import android.os.Bundle;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.VideoList;
import f.e.a.e;
import f.e.a.j.l.h.b;
import f.e.a.j.l.h.f;
import java.util.HashMap;
/* loaded from: classes.dex */
public class TypeListFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f859i;

    /* renamed from: j  reason: collision with root package name */
    public int f860j;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f861f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f861f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f861f == 1) {
                TypeListFragment.this.f117h.c();
            }
            TypeListFragment.this.f117h.a(videoList.getResponse().getVideos());
        }
    }

    public static TypeListFragment o(String str, int i2) {
        Bundle bundle = new Bundle();
        bundle.putString(e.a("QxsTAQ=="), str);
        bundle.putInt(e.a("VAMXAQwcS0osD1A="), i2);
        TypeListFragment typeListFragment = new TypeListFragment();
        typeListFragment.setArguments(bundle);
        return typeListFragment;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f859i = getArguments().getString(e.a("QxsTAQ=="));
        this.f860j = getArguments().getInt(e.a("VAMXAQwcS0osD1A="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new VideoListAdapter(getContext(), this.f859i.equals(e.a("VA0VARk=")));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        b b = f.b();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("Ww0NAw==", hashMap, f.b.a.a.a.i("QwsOAQ==", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WBAHARk="), "QQsHAQQsTUoDAw=="), "QxsTAQ=="), this.f859i);
        hashMap.put(f.b.a.a.a.G(this.f860j, hashMap, e.a("VAMXAQwcS0o="), "QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis() / 1000));
        g(b.h(0, hashMap), new a(i2));
    }
}
