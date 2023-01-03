package com.comeback.data.ui.md.fragment;

import android.text.TextUtils;
import android.widget.EditText;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.md.adapter.VideoAdapter;
import com.comeback.data.ui.md.bean.SearchBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d0.d.b;
import f.e.a.j.d0.d.d;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class SearchFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public String f1646i;
    @BindView
    public EditText searchInput;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<SearchBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1647f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1647f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SearchBean searchBean = (SearchBean) obj;
            if (this.f1647f == 1) {
                SearchFragment.this.f117h.c();
            }
            SearchFragment.this.f117h.a(searchBean.getData().getData());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_md_search;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void e() {
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
        TreeMap treeMap = new TreeMap();
        treeMap.put(e.a("WwsQEDQBVkQ="), e.a("AVI="));
        treeMap.put(e.a("RwMEAQ=="), String.valueOf(i2));
        if (!TextUtils.isEmpty(this.f1646i)) {
            treeMap.put(e.a("XAcaEwQBXQ=="), this.f1646i);
            b b = f.e.a.j.d0.d.e.b();
            d.a(treeMap);
            m.e<SearchBean> a2 = b.a(treeMap);
            a aVar = new a(i2);
            a2.d(m.r.a.a()).b(m.l.b.a.a()).c(aVar);
            this.a.b(aVar);
            return;
        }
        this.refreshLayout.k();
    }
}
