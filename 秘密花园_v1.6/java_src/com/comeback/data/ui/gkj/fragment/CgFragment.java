package com.comeback.data.ui.gkj.fragment;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.gkj.adapter.CgAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import f.e.a.e;
import f.e.a.j.n.p.c;
import java.util.HashMap;
/* loaded from: classes.dex */
public class CgFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1052i;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<ComicList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1053f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1053f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicList comicList = (ComicList) obj;
            if (this.f1053f == 1) {
                CgFragment.this.f117h.c();
            }
            CgFragment.this.f117h.a(comicList.getLists().getData());
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        this.f1052i = getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return new CgAdapter(getContext());
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public RecyclerView.LayoutManager i() {
        return new StaggeredGridLayoutManager(2, 1);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        c b = f.e.a.j.n.p.e.b();
        String str = this.f1052i;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("UA4MBgofZkcKFlE="), str);
        hashMap.put(f.b.a.a.a.i("BlQ=", hashMap, e.a("WwsODR8="), "RwMEAQ=="), String.valueOf(i2));
        g(b.e(hashMap), new a(i2));
    }
}
