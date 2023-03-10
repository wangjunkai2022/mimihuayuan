package com.comeback.data.ui.ba.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.ba.adapter.ComicAdapter;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import com.comeback.secret.garden.R;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CollectFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public ComicAdapter f250g;
    @BindView
    public RecyclerView rvList;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ba_collect;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void d() {
        if (this.f108c && this.f109d) {
            e();
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.f250g.c();
        j0<? extends g0> e2 = g.d(x.P()).e(BaComicsBean.class);
        ComicAdapter comicAdapter = this.f250g;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((BaComicsBean) e2.get(i2));
        }
        comicAdapter.b(arrayList, comicAdapter.b.size());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 3));
        ComicAdapter comicAdapter = new ComicAdapter(getContext());
        this.f250g = comicAdapter;
        this.rvList.setAdapter(comicAdapter);
    }
}
