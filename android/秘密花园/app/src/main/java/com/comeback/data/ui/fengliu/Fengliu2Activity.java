package com.comeback.data.ui.fengliu;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fengliu.Fengliu2Activity;
import com.comeback.data.ui.fengliu.bean.MMList;
import com.comeback.secret.garden.R;
import f.c.a.h.d;
import f.e.a.e;
import f.e.a.j.j.g;
import f.i.b.j;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Fengliu2Activity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public HashMap<String, HashMap<String, String>> f639d;

    /* renamed from: g  reason: collision with root package name */
    public List<List<b>> f642g;

    /* renamed from: h  reason: collision with root package name */
    public ArrayList<b> f643h;
    @BindView
    public LinearLayout llService;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvOrder;
    @BindView
    public TextView tvService;
    @BindView
    public TextView tvTitle;

    /* renamed from: e  reason: collision with root package name */
    public String[] f640e = {e.a("RxcBCAIAUQ=="), e.a("QAcGDw=="), e.a("Wg0NEAM="), e.a("WwMQEAYcV0cb")};

    /* renamed from: f  reason: collision with root package name */
    public String f641f = e.a("RxcBCAIAUQ==");

    /* renamed from: i  reason: collision with root package name */
    public String f644i = e.a("Vg4P");

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<MMList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f645f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f645f = i2;
        }

        @Override // com.comeback.data.base.BaseRefreshActivity.a, m.j
        public void e(Throwable th) {
            super.e(th);
            h.n1(e.a("0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"));
        }

        @Override // m.j
        public void f(Object obj) {
            MMList mMList = (MMList) obj;
            if (this.f645f == 1) {
                Fengliu2Activity.this.f114c.c();
            }
            Fengliu2Activity.this.f114c.a(mMList.getData());
        }
    }

    /* loaded from: classes.dex */
    public class b implements f.f.b.a {
        public String a;
        public String b;

        public b(Fengliu2Activity fengliu2Activity, String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // f.f.b.a
        public String a() {
            return this.a;
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fengliu;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        HashMap<String, HashMap<String, String>> hashMap;
        super.e();
        j(-1);
        this.tvService.setVisibility(8);
        this.llService.setVisibility(8);
        if (TextUtils.isEmpty(f.e.a.k.b.m0)) {
            new AlertDialog.Builder(this).setTitle(e.a("0e3zg8/J")).setMessage(e.a("0MLXjMzQ3JfCjoDCl9bvg5jVhMniloe2lf2Age7a")).setNegativeButton(e.a("0sfeg/H3"), new g(this)).create().show();
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(App.b.getAssets().open(e.a("VAsXHUUHQUc=")));
            j jVar = new j();
            Type type = new f.e.a.j.j.h(this).b;
            f.i.b.e0.a h2 = jVar.h(inputStreamReader);
            Object c2 = jVar.c(h2, type);
            j.a(c2, h2);
            hashMap = (HashMap) c2;
        } catch (Exception e2) {
            e2.printStackTrace();
            hashMap = null;
        }
        this.f639d = hashMap;
        this.f643h = new ArrayList<>();
        this.f642g = new ArrayList();
        HashMap<String, String> hashMap2 = this.f639d.get(e.a("D1Q="));
        this.f643h.add(new b(this, e.a("0ufLjejb"), e.a("Vg4P")));
        for (String str : hashMap2.keySet()) {
            this.f643h.add(new b(this, hashMap2.get(str), str));
        }
        Iterator<b> it = this.f643h.iterator();
        while (it.hasNext()) {
            b next = it.next();
            ArrayList arrayList = new ArrayList();
            this.f642g.add(arrayList);
            arrayList.add(new b(this, e.a("0ufLjejb"), next.b));
            HashMap<String, String> hashMap3 = this.f639d.get(next.b);
            if (!(hashMap3 == null || hashMap3.size() == 0)) {
                for (String str2 : hashMap3.keySet()) {
                    arrayList.add(new b(this, hashMap3.get(str2), str2));
                }
            }
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new FengliuAdapter(this);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (f.e.a.j.j.m.e.class) {
            f.e.a.j.j.m.e.b = null;
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_area) {
            f.e.a.j.j.b bVar = new d() { // from class: f.e.a.j.j.b
                @Override // f.c.a.h.d
                public final void a(int i2, int i3, int i4, View view2) {
                    Fengliu2Activity.this.t(i2, i3, i4, view2);
                }
            };
            f.c.a.g.a aVar = new f.c.a.g.a(1);
            aVar.t = this;
            aVar.a = bVar;
            f.c.a.i.e eVar = new f.c.a.i.e(aVar);
            eVar.f(this.f643h, this.f642g, null);
            eVar.e();
        } else if (id == R.id.ll_order) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(e.a("0f7jgv3D3Lzig4zk"));
            arrayList.add(e.a("09rjgfrb3rDej6PP"));
            arrayList.add(e.a("0f7Pgvf73rDej6PP"));
            arrayList.add(e.a("09rpgvf73rDej6PP"));
            f.e.a.j.j.a aVar2 = new d(arrayList) { // from class: f.e.a.j.j.a
                public final /* synthetic */ ArrayList b;

                {
                    this.b = r2;
                }

                @Override // f.c.a.h.d
                public final void a(int i2, int i3, int i4, View view2) {
                    Fengliu2Activity.this.u(this.b, i2, i3, i4, view2);
                }
            };
            f.c.a.g.a aVar3 = new f.c.a.g.a(1);
            aVar3.t = this;
            aVar3.a = aVar2;
            f.c.a.i.e eVar2 = new f.c.a.i.e(aVar3);
            eVar2.f(arrayList, null, null);
            eVar2.e();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.j.m.a a2 = f.e.a.j.j.m.e.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("BVY=", hashMap, f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("Vg4P", hashMap, e.a("QxsTAQ=="), "RwMEAQ=="), "RwcRNAoUXA=="), "VAsXHSgcXVY="), this.f644i);
        hashMap.put(e.a("RA0REA=="), this.f641f);
        k(a2.b(hashMap), new a(i2));
    }

    public void t(int i2, int i3, int i4, View view) {
        b bVar = this.f642g.get(i2).get(i3);
        this.f644i = bVar.b;
        TextView textView = this.tvArea;
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, this.f643h.get(i2).a, "Gg==");
        sb.append(bVar.a);
        textView.setText(sb.toString());
        this.refreshLayout.h();
    }

    public /* synthetic */ void u(ArrayList arrayList, int i2, int i3, int i4, View view) {
        this.f641f = this.f640e[i2];
        this.tvOrder.setText((CharSequence) arrayList.get(i2));
        this.refreshLayout.h();
    }
}
