package com.comeback.data.ui.jhlf;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.jhlf.FengliuActivity;
import com.comeback.data.ui.jhlf.adapter.MMAdapter;
import com.comeback.data.ui.jhlf.bean.MMList;
import com.comeback.secret.garden.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import f.c.a.h.d;
import f.e.a.e;
import f.e.a.j.w.h.c;
import f.i.b.j;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FengliuActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public HashMap<String, HashMap<String, String>> f1313d;

    /* renamed from: e  reason: collision with root package name */
    public List<List<b>> f1314e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<b> f1315f;
    @BindView
    public FloatingActionButton floatingActionButton;

    /* renamed from: g  reason: collision with root package name */
    public String f1316g = e.a("Vg4P");

    /* renamed from: h  reason: collision with root package name */
    public String f1317h;

    /* renamed from: i  reason: collision with root package name */
    public String f1318i;
    @BindView
    public TextView tvArea;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<MMList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1319f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1319f = i2;
        }

        @Override // com.comeback.data.base.BaseRefreshActivity.a, m.j
        public void e(Throwable th) {
            super.e(th);
            h.n1(e.a("0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"));
        }

        @Override // m.j
        public void f(Object obj) {
            MMList mMList = (MMList) obj;
            if (this.f1319f == 1) {
                FengliuActivity.this.f114c.c();
            }
            FengliuActivity.this.f114c.a(mMList.getData());
        }
    }

    /* loaded from: classes.dex */
    public class b implements f.f.b.a {
        public String a;
        public String b;

        public b(FengliuActivity fengliuActivity, String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // f.f.b.a
        public String a() {
            return this.a;
        }
    }

    public static void t(FengliuActivity fengliuActivity, boolean z, String str) {
        if (fengliuActivity != null) {
            if (TextUtils.isEmpty(str)) {
                h.n1(e.a("0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"));
            }
            if (z) {
                SearchResultActivity.t(fengliuActivity, str);
                return;
            } else {
                SearchResultActivity.u(fengliuActivity, str, fengliuActivity.f1318i, fengliuActivity.f1317h);
                return;
            }
        }
        throw null;
    }

    public static void v(Context context, String str, String str2) {
        Intent intent = new Intent(context, FengliuActivity.class);
        intent.putExtra(e.a("XgY="), str2);
        intent.putExtra(e.a("WQMOAQ=="), str);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1317h = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1318i = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_my_fengliu;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        HashMap<String, HashMap<String, String>> hashMap;
        super.e();
        j(-1);
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(App.b.getAssets().open(e.a("VAsXHUUHQUc=")));
            j jVar = new j();
            Type type = new f.e.a.j.w.b(this).b;
            f.i.b.e0.a h2 = jVar.h(inputStreamReader);
            Object c2 = jVar.c(h2, type);
            j.a(c2, h2);
            hashMap = (HashMap) c2;
        } catch (Exception e2) {
            e2.printStackTrace();
            hashMap = null;
        }
        this.f1313d = hashMap;
        this.f1315f = new ArrayList<>();
        this.f1314e = new ArrayList();
        HashMap<String, String> hashMap2 = this.f1313d.get(e.a("D1Q="));
        TextView textView = this.tvArea;
        textView.setText(this.f1317h + e.a("GofmzI7ohA=="));
        this.f1315f.add(new b(this, e.a("0ufLjejb"), e.a("Vg4P")));
        for (String str : hashMap2.keySet()) {
            this.f1315f.add(new b(this, hashMap2.get(str), str));
        }
        Iterator<b> it = this.f1315f.iterator();
        while (it.hasNext()) {
            b next = it.next();
            ArrayList arrayList = new ArrayList();
            this.f1314e.add(arrayList);
            arrayList.add(new b(this, e.a("0ufLjejb"), next.b));
            HashMap<String, String> hashMap3 = this.f1313d.get(next.b);
            if (hashMap3 != null && hashMap3.size() != 0) {
                for (String str2 : hashMap3.keySet()) {
                    arrayList.add(new b(this, hashMap3.get(str2), str2));
                }
            }
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new MMAdapter(this);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (c.class) {
            c.f4035c = null;
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        if (view.getId() != R.id.ll_area) {
            return;
        }
        d dVar = new d() { // from class: f.e.a.j.w.a
            @Override // f.c.a.h.d
            public final void a(int i2, int i3, int i4, View view2) {
                FengliuActivity.this.u(i2, i3, i4, view2);
            }
        };
        f.c.a.g.a aVar = new f.c.a.g.a(1);
        aVar.t = this;
        aVar.a = dVar;
        f.c.a.i.e eVar = new f.c.a.i.e(aVar);
        eVar.f(this.f1315f, this.f1314e, null);
        eVar.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(c.a().b(i2, this.f1316g, this.f1318i), new a(i2));
    }

    public void u(int i2, int i3, int i4, View view) {
        b bVar = this.f1314e.get(i2).get(i3);
        this.f1316g = bVar.b;
        TextView textView = this.tvArea;
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, this.f1317h, "Gg==");
        f.b.a.a.a.B(sb, this.f1315f.get(i2).a, "Gg==");
        sb.append(bVar.a);
        textView.setText(sb.toString());
        this.refreshLayout.h();
    }
}
