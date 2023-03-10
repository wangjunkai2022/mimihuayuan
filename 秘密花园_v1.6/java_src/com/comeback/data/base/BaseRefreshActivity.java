package com.comeback.data.base;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.secret.garden.R;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.e.a.e;
import f.e.a.k.f;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import f.j.a.a.l.d;
import m.j;
/* loaded from: classes.dex */
public abstract class BaseRefreshActivity extends BaseActivity {
    public int b = 1;

    /* renamed from: c  reason: collision with root package name */
    public BaseAbstractAdapter f114c;
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
            BaseRefreshActivity.this.refreshLayout.j(true);
            BaseRefreshActivity.this.refreshLayout.m(true);
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD08");
            th.getMessage();
            f.b();
            BaseRefreshActivity.this.refreshLayout.j(false);
            BaseRefreshActivity.this.refreshLayout.m(false);
        }
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.base_refresh_recycler;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        this.refreshLayout.a0 = new d() { // from class: f.e.a.f.c
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                BaseRefreshActivity.this.n(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.f.b
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                BaseRefreshActivity.this.o(iVar);
            }
        });
        this.mRvList.setLayoutManager(m());
        BaseAbstractAdapter l2 = l();
        this.f114c = l2;
        this.mRvList.setAdapter(l2);
        this.refreshLayout.h();
    }

    public abstract BaseAbstractAdapter l();

    public RecyclerView.LayoutManager m() {
        return new LinearLayoutManager(this);
    }

    public /* synthetic */ void n(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void o(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        f.e.a.j.k0.a.d.c(this);
    }

    public abstract void p(int i2);

    public void q(boolean z) {
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        smartRefreshLayout.A = z;
        smartRefreshLayout.U = true;
        smartRefreshLayout.B = z;
    }
}
