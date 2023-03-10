package com.comeback.data.base;

import android.util.Pair;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseVRefreshActivity;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import f.j.a.a.l.d;
import java.util.List;
/* loaded from: classes.dex */
public abstract class BaseVRefreshActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public DelegateAdapter f119d;

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        this.refreshLayout.a0 = new d() { // from class: f.e.a.f.f
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                BaseVRefreshActivity.this.s(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.f.g
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                BaseVRefreshActivity.this.t(iVar);
            }
        });
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.mRvList.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(this);
        this.mRvList.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        this.f119d = delegateAdapter;
        this.mRvList.setAdapter(delegateAdapter);
        this.refreshLayout.h();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return null;
    }

    public void r() {
        List<Pair<DelegateAdapter.AdapterDataObserver, DelegateAdapter.Adapter>> list = this.f119d.f44f;
        int size = list == null ? 0 : list.size();
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            this.f119d.g();
            size = i2;
        }
    }

    public /* synthetic */ void s(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void t(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }
}
