package com.comeback.data.ui.km2;

import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.km2.AreaChooseActivity;
import com.comeback.data.ui.km2.TagAdapter;
import com.comeback.data.ui.km2.bean.AreaBean;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.g;
import f.e.a.e;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AreaChooseActivity extends BaseVRefreshActivity {

    /* renamed from: f  reason: collision with root package name */
    public static AreaBean f1316f;

    /* renamed from: e  reason: collision with root package name */
    public TagAdapter.b f1317e = new a();

    /* loaded from: classes.dex */
    public class a implements TagAdapter.b {
        public a() {
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<AreaBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1318f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f1318f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            AreaBean areaBean = (AreaBean) obj;
            if (this.f1318f == 1) {
                AreaChooseActivity.this.r();
            }
            AreaChooseActivity.this.x(areaBean);
        }
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.x.a
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                AreaChooseActivity.this.y(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.x.b
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                AreaChooseActivity.this.z(iVar);
            }
        });
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.mRvList.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 100);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(this);
        this.mRvList.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        this.f119d = delegateAdapter;
        this.mRvList.setAdapter(delegateAdapter);
        AreaBean areaBean = f1316f;
        if (areaBean == null) {
            this.refreshLayout.h();
        } else {
            x(areaBean);
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("WQMOAQ=="), e.a("0u70gNHf3Ivx"));
        } catch (Exception unused) {
        }
        k(f.e.a.j.x.j.d.a().f(f.e.a.j.x.j.a.c(jSONObject)), new b(i2));
    }

    public final void w(String str, List<AreaBean.DataEntity.AreaLisCityEntity.CityEntity> list) {
        this.f119d.b(new AAdapter(this, str, new f.a.a.a.l.i()));
        g gVar = new g(4);
        gVar.q(15, 0, 15, 0);
        gVar.D(15);
        gVar.C(15);
        gVar.s = false;
        this.f119d.b(new TagAdapter(this, list, gVar, this.f1317e));
    }

    public final void x(AreaBean areaBean) {
        f1316f = areaBean;
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        smartRefreshLayout.A = false;
        smartRefreshLayout.t(false);
        AreaBean.DataEntity.AreaLisCityEntity areaList = areaBean.getData().getAreaList();
        w(e.a("0OHOjfzb3Kz9g4zl"), areaList.getHot());
        w(e.a("dg=="), areaList.getTotal().getA());
        w(e.a("dQ=="), areaList.getTotal().getB());
        w(e.a("dA=="), areaList.getTotal().getC());
        w(e.a("cw=="), areaList.getTotal().getD());
        w(e.a("cg=="), areaList.getTotal().getE());
        w(e.a("cQ=="), areaList.getTotal().getF());
        w(e.a("cA=="), areaList.getTotal().getG());
        w(e.a("fw=="), areaList.getTotal().getH());
        w(e.a("fQ=="), areaList.getTotal().getJ());
        w(e.a("fA=="), areaList.getTotal().getK());
        w(e.a("ew=="), areaList.getTotal().getL());
        w(e.a("eg=="), areaList.getTotal().getM());
        w(e.a("eQ=="), areaList.getTotal().getN());
        w(e.a("Zw=="), areaList.getTotal().getP());
        w(e.a("Zg=="), areaList.getTotal().getQ());
        w(e.a("ZQ=="), areaList.getTotal().getR());
        w(e.a("ZA=="), areaList.getTotal().getS());
        w(e.a("Yw=="), areaList.getTotal().getT());
        w(e.a("YA=="), areaList.getTotal().getW());
        w(e.a("bw=="), areaList.getTotal().getX());
        w(e.a("bg=="), areaList.getTotal().getY());
        w(e.a("bQ=="), areaList.getTotal().getZ());
    }

    public /* synthetic */ void y(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void z(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }
}
