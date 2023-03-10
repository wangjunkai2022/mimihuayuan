package com.comeback.data.ui.mimei.fragment;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.mimei.adapter.ComicAdapter;
import com.comeback.data.ui.mimei.bean.MimeiComicItem;
import com.comeback.secret.garden.R;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class CollectFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public ComicAdapter f1790g;
    @BindView
    public RecyclerView rvList;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.include_only_recycleview;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void d() {
        if (this.f108c && this.f109d) {
            e();
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.f1790g.c();
        j0<? extends g0> e2 = g.d(x.P()).e(MimeiComicItem.class);
        ComicAdapter comicAdapter = this.f1790g;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((MimeiComicItem) e2.get(i2));
        }
        comicAdapter.b(arrayList, comicAdapter.b.size());
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 3));
        ComicAdapter comicAdapter = new ComicAdapter(getContext());
        this.f1790g = comicAdapter;
        this.rvList.setAdapter(comicAdapter);
    }
}
