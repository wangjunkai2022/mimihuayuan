package com.comeback.data.base;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.e.a.e;
import f.e.a.k.f;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import f.j.a.a.l.d;
import m.j;
/* loaded from: classes.dex */
public abstract class BaseRefreshFragment extends BaseFragment {

    /* renamed from: g  reason: collision with root package name */
    public int f116g = 0;

    /* renamed from: h  reason: collision with root package name */
    public BaseAbstractAdapter f117h;
    @BindView
    public RecyclerView mRvList;
    @BindView
    public SmartRefreshLayout refreshLayout;

    /* loaded from: classes.dex */
    public abstract class a<T> extends j<T> {
        public a() {
        }

        @Override // m.j
        public void d() {
            BaseRefreshFragment.this.refreshLayout.j(true);
            BaseRefreshFragment.this.refreshLayout.m(true);
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.b();
            BaseRefreshFragment.this.refreshLayout.j(false);
            BaseRefreshFragment.this.refreshLayout.m(false);
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.base_refresh_recycler;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        this.refreshLayout.h();
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.refreshLayout.a0 = new d() { // from class: f.e.a.f.d
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                BaseRefreshFragment.this.j(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.f.e
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                BaseRefreshFragment.this.k(iVar);
            }
        });
        this.mRvList.setLayoutManager(i());
        BaseAbstractAdapter h2 = h();
        this.f117h = h2;
        this.mRvList.setAdapter(h2);
    }

    public abstract BaseAbstractAdapter h();

    public RecyclerView.LayoutManager i() {
        return new LinearLayoutManager(getContext());
    }

    public /* synthetic */ void j(i iVar) {
        this.f116g = 0;
        int i2 = 0 + 1;
        this.f116g = i2;
        l(i2);
    }

    public /* synthetic */ void k(i iVar) {
        int i2 = this.f116g + 1;
        this.f116g = i2;
        l(i2);
    }

    public abstract void l(int i2);
}
