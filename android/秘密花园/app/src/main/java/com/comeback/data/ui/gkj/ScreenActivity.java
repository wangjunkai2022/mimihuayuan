package com.comeback.data.ui.gkj;

import android.content.Context;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.gkj.ScreenActivity;
import com.comeback.data.ui.gkj.adapter.ScreenAdapter;
import com.comeback.data.ui.gkj.adapter.Tag2Adapter;
import com.comeback.data.ui.gkj.adapter.Tag3Adapter;
import com.comeback.data.ui.gkj.adapter.TagAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.data.ui.gkj.bean.ScreenBean;
import com.comeback.secret.garden.R;
import f.e.a.j.m.c;
import f.e.a.j.m.d;
import f.e.a.j.m.f;
import f.e.a.j.m.h;
import f.e.a.j.m.m;
import f.e.a.j.m.p.e;
import f.j.a.a.f.i;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class ScreenActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public TagAdapter f884d;

    /* renamed from: e  reason: collision with root package name */
    public Tag2Adapter f885e;

    /* renamed from: f  reason: collision with root package name */
    public Tag3Adapter f886f;

    /* renamed from: g  reason: collision with root package name */
    public Tag3Adapter f887g;

    /* renamed from: h  reason: collision with root package name */
    public Tag3Adapter f888h;
    @BindView
    public RecyclerView rvList1;
    @BindView
    public RecyclerView rvList2;
    @BindView
    public RecyclerView rvList3;
    @BindView
    public RecyclerView rvList4;
    @BindView
    public RecyclerView rvList5;

    /* loaded from: classes.dex */
    public class a extends j<ScreenBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(ScreenBean screenBean) {
            ScreenBean screenBean2 = screenBean;
            ScreenActivity screenActivity = ScreenActivity.this;
            screenActivity.rvList1.setLayoutManager(new LinearLayoutManager(screenActivity, 0, false));
            TagAdapter tagAdapter = new TagAdapter(screenActivity, new f(screenActivity));
            screenActivity.f884d = tagAdapter;
            screenActivity.rvList1.setAdapter(tagAdapter);
            screenActivity.f884d.a(screenBean2.getType());
            screenActivity.rvList2.setLayoutManager(new StaggeredGridLayoutManager(3, 0));
            Tag2Adapter tag2Adapter = new Tag2Adapter(screenActivity, new m(screenActivity));
            screenActivity.f885e = tag2Adapter;
            screenActivity.rvList2.setAdapter(tag2Adapter);
            screenActivity.f885e.a(screenBean2.getType().get(0).getChildren());
            screenActivity.rvList3.setLayoutManager(new LinearLayoutManager(screenActivity, 0, false));
            Tag3Adapter tag3Adapter = new Tag3Adapter(screenActivity, new c(screenActivity));
            screenActivity.f886f = tag3Adapter;
            screenActivity.rvList3.setAdapter(tag3Adapter);
            screenActivity.f886f.a(screenBean2.getState());
            screenActivity.rvList4.setLayoutManager(new LinearLayoutManager(screenActivity, 0, false));
            Tag3Adapter tag3Adapter2 = new Tag3Adapter(screenActivity, new h(screenActivity));
            screenActivity.f887g = tag3Adapter2;
            screenActivity.rvList4.setAdapter(tag3Adapter2);
            screenActivity.f887g.a(screenBean2.getPay());
            screenActivity.rvList5.setLayoutManager(new LinearLayoutManager(screenActivity, 0, false));
            Tag3Adapter tag3Adapter3 = new Tag3Adapter(screenActivity, new d(screenActivity));
            screenActivity.f888h = tag3Adapter3;
            screenActivity.rvList5.setAdapter(tag3Adapter3);
            screenActivity.f888h.a(screenBean2.getSort());
            screenActivity.refreshLayout.h();
        }
    }

    /* loaded from: classes.dex */
    public class b extends BaseRefreshActivity.a<ComicList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f890f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public b(int i2) {
            super();
            this.f890f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicList comicList = (ComicList) obj;
            if (this.f890f == 1) {
                ScreenActivity.this.f114c.c();
            }
            ScreenActivity.this.f114c.a(comicList.getData());
        }
    }

    public static void A(Context context) {
        f.b.a.a.a.u(context, ScreenActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_screen;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new f.j.a.a.l.d() { // from class: f.e.a.j.m.e
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                ScreenActivity.this.y(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.m.g
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                ScreenActivity.this.z(iVar);
            }
        });
        this.mRvList.setLayoutManager(m());
        ScreenAdapter screenAdapter = new ScreenAdapter(this);
        this.f114c = screenAdapter;
        this.mRvList.setAdapter(screenAdapter);
        k(e.b().e(""), new a());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ScreenAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.m.p.c b2 = e.b();
        TagAdapter tagAdapter = this.f884d;
        String key = ((ScreenBean.TypeBean) tagAdapter.b.get(tagAdapter.f968d)).getKey();
        Tag2Adapter tag2Adapter = this.f885e;
        int id = ((ScreenBean.TypeBean.ChildrenBean) tag2Adapter.b.get(tag2Adapter.f960d)).getId();
        String f2 = this.f886f.f();
        String f3 = this.f887g.f();
        String f4 = this.f888h.f();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.e.a.e.a("UA4MBgofZkcKFlE="), key);
        hashMap.put(f.e.a.e.a("QxsTATQaXQ=="), String.valueOf(id));
        hashMap.put(f.e.a.e.a("RBYCEA4="), f2);
        hashMap.put(f.e.a.e.a("XhE8FAoK"), f3);
        hashMap.put(f.e.a.e.a("RA0REA=="), f4);
        hashMap.put(f.b.a.a.a.i("BlA=", hashMap, f.e.a.e.a("WwsODR8="), "RwMEAQ=="), String.valueOf(i2));
        k(b2.a(hashMap), new b(i2));
    }

    public void u(int i2) {
        this.f885e.c();
        this.f885e.a(((ScreenBean.TypeBean) this.f884d.b.get(i2)).getChildren());
        this.refreshLayout.h();
    }

    public /* synthetic */ void v(int i2) {
        this.refreshLayout.h();
    }

    public /* synthetic */ void w(int i2) {
        this.refreshLayout.h();
    }

    public /* synthetic */ void x(int i2) {
        this.refreshLayout.h();
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
