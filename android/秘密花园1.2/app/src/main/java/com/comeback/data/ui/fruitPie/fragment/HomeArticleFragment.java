package com.comeback.data.ui.fruitPie.fragment;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.fruitPie.adapter.ArticleAdapter;
import com.comeback.data.ui.fruitPie.bean.VideoList;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;

/* loaded from: classes.dex */
public class HomeArticleFragment extends BaseRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f751f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f751f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f751f == 1) {
                HomeArticleFragment.this.f117h.c();
            }
            HomeArticleFragment.this.f117h.a(videoList.getData().getList());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new ArticleAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        f.e.a.j.k.b.a a2 = b.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("Bw==", hashMap, f.b.a.a.a.i("BlI=", hashMap, f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("BQ==", hashMap, e.a("WxYaFA4="), "RwMEAQ=="), "WwcNAx8b"), "WwMQEDQDWFQW"), "Qw0XBQcjWFQW"), e.a("AFU="));
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(a2.b(hashMap), new a(i2));
    }
}
