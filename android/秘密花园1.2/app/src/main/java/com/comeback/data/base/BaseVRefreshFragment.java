package com.comeback.data.base;

import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseVRefreshFragment;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import f.j.a.a.l.d;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseVRefreshFragment extends BaseRefreshFragment {

    /* renamed from: i  reason: collision with root package name */
    public DelegateAdapter f120i;

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        this.refreshLayout.a0 = new d() { // from class: f.e.a.f.i
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                BaseVRefreshFragment.this.n(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.f.h
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                BaseVRefreshFragment.this.o(iVar);
            }
        });
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.mRvList.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(getContext());
        this.mRvList.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        this.f120i = delegateAdapter;
        this.mRvList.setAdapter(delegateAdapter);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public BaseAbstractAdapter h() {
        return null;
    }

    public void m() {
        List<Pair<DelegateAdapter.AdapterDataObserver, DelegateAdapter.Adapter>> list = this.f120i.f44f;
        int size = list == null ? 0 : list.size();
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            this.f120i.g();
            size = i2;
        }
    }

    public /* synthetic */ void n(i iVar) {
        this.f116g = 0;
        int i2 = 0 + 1;
        this.f116g = i2;
        l(i2);
    }

    public /* synthetic */ void o(i iVar) {
        int i2 = this.f116g + 1;
        this.f116g = i2;
        l(i2);
    }
}
