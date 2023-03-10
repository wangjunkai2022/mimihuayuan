package com.comeback.data.ui.fruitPie.fragment;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.fruitPie.SearchActivity;
import com.comeback.data.ui.fruitPie.adapter.DiscoverAdapter;
import com.comeback.data.ui.fruitPie.bean.DiscoverBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;
import m.j;
/* loaded from: classes.dex */
public class DiscoverFragment extends BaseFragment {
    @BindView
    public RecyclerView rvNew;
    @BindView
    public RecyclerView rvRecommend;

    /* loaded from: classes.dex */
    public class a extends j<DiscoverBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(DiscoverBean discoverBean) {
            DiscoverBean discoverBean2 = discoverBean;
            DiscoverFragment discoverFragment = DiscoverFragment.this;
            discoverFragment.rvRecommend.setLayoutManager(new GridLayoutManager(discoverFragment.getContext(), 2));
            DiscoverAdapter discoverAdapter = new DiscoverAdapter(discoverFragment.getContext());
            discoverFragment.rvRecommend.setAdapter(discoverAdapter);
            discoverAdapter.a(discoverBean2.getData().getRecommend());
            discoverFragment.rvNew.setLayoutManager(new GridLayoutManager(discoverFragment.getContext(), 2));
            DiscoverAdapter discoverAdapter2 = new DiscoverAdapter(discoverFragment.getContext());
            discoverFragment.rvNew.setAdapter(discoverAdapter2);
            discoverAdapter2.a(discoverBean2.getData().getNewHot().getData());
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_pie_discover;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        g(b.a().g(hashMap), new a());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
    }

    @OnClick
    public void onClick(View view) {
        if (view.getId() != R.id.iv_search) {
            return;
        }
        SearchActivity.t(getContext());
    }
}
