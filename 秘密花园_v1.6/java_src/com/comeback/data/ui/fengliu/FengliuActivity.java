package com.comeback.data.ui.fengliu;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fengliu.FengliuActivity;
import com.comeback.data.ui.fengliu.bean.MMHost;
import com.comeback.data.ui.fengliu.bean.MMList2;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.j.i;
import f.e.a.j.j.m.d;
import f.e.a.k.j;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class FengliuActivity extends BaseRefreshActivity {

    /* renamed from: k  reason: collision with root package name */
    public static HashMap<String, String> f654k;

    /* renamed from: d  reason: collision with root package name */
    public HashMap<String, HashMap<String, String>> f655d;

    /* renamed from: h  reason: collision with root package name */
    public List<List<b>> f659h;

    /* renamed from: i  reason: collision with root package name */
    public ArrayList<b> f660i;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvOrder;
    @BindView
    public TextView tvService;
    @BindView
    public TextView tvTitle;

    /* renamed from: e  reason: collision with root package name */
    public String[] f656e = {e.a("RxcBCAIAUQ=="), e.a("QAcGDw=="), e.a("Wg0NEAM="), e.a("WwMQEAYcV0cb")};

    /* renamed from: f  reason: collision with root package name */
    public String[] f657f = {e.a("XxYXFBhJFhwXB1pSQUQbEk0="), e.a("XxYXFBhJFhwXB1tSQUQbEk0="), e.a("XxYXFBhJFhwQDlFSQUQbEk0="), e.a("XxYXFBhJFhwXE1pSQUQbEk0="), e.a("XxYXFBhJFhwXEwNUVhIaEQ=="), e.a("XxYXFBhJFhwUA1pSQUQbEk0="), e.a("XxYXFBhJFhwbB1tSQUQbEk0="), e.a("XxYXFBhJFhwbA11SQUQbEk0="), e.a("XxYXFBhJFhweB1pSQUQbEk0="), e.a("XxYXFBhJFhwXEgFQVhIaEQ==")};

    /* renamed from: g  reason: collision with root package name */
    public String f658g = e.a("RxcBCAIAUQ==");

    /* renamed from: j  reason: collision with root package name */
    public String f661j = e.a("Vg4P");

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<MMList2> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f662f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f662f = i2;
        }

        @Override // com.comeback.data.base.BaseRefreshActivity.a, m.j
        public void e(Throwable th) {
            super.e(th);
            h.p1(e.a("0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"));
        }

        @Override // m.j
        public void f(Object obj) {
            MMList2 mMList2 = (MMList2) obj;
            if (this.f662f == 1) {
                FengliuActivity.this.f114c.c();
            }
            FengliuActivity.this.f114c.a(mMList2.getData().getRecords());
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

    public static void w(Context context) {
        f.b.a.a.a.u(context, FengliuActivity.class);
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
        int i2 = j.b().a.getInt(FengliuActivity.class.getName(), -1);
        String d2 = j.b().d(e.a("Wg88DAQATQ=="));
        if (!TextUtils.isEmpty(d2)) {
            this.f657f = (String[]) ((MMHost) new f.i.b.j().d(d2, MMHost.class)).getUrls().toArray(new String[0]);
        }
        String[] strArr = this.f657f;
        if (i2 >= strArr.length) {
            i2 = strArr.length - 1;
        }
        if (i2 == -1) {
            i2 = 0;
        }
        f.e.a.k.b.m0 = this.f657f[i2];
        ArrayList arrayList = new ArrayList();
        arrayList.add(e.a("3tn7jMXX0bnxgbbe"));
        arrayList.add(e.a("0sbkg//b0bnxgbbeSQ=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeSg=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeSw=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeTA=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeTQ=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeTg=="));
        arrayList.add(e.a("0sbkg//b0bnxgbbeTw=="));
        this.tvService.setText((CharSequence) arrayList.get(i2));
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(App.b.getAssets().open(e.a("VAsXHUUHQUc=")));
            f.i.b.j jVar = new f.i.b.j();
            Type type = new f.e.a.j.j.j(this).b;
            f.i.b.e0.a h2 = jVar.h(inputStreamReader);
            Object c2 = jVar.c(h2, type);
            f.i.b.j.a(c2, h2);
            hashMap = (HashMap) c2;
        } catch (Exception e2) {
            e2.printStackTrace();
            hashMap = null;
        }
        this.f655d = hashMap;
        this.f660i = new ArrayList<>();
        this.f659h = new ArrayList();
        HashMap<String, String> hashMap2 = this.f655d.get(e.a("D1Q="));
        this.f660i.add(new b(this, e.a("0ufLjejb"), e.a("Vg4P")));
        for (String str : hashMap2.keySet()) {
            this.f660i.add(new b(this, hashMap2.get(str), str));
        }
        Iterator<b> it = this.f660i.iterator();
        while (it.hasNext()) {
            b next = it.next();
            ArrayList arrayList2 = new ArrayList();
            this.f659h.add(arrayList2);
            arrayList2.add(new b(this, e.a("0ufLjejb"), next.b));
            HashMap<String, String> hashMap3 = this.f655d.get(next.b);
            if (hashMap3 != null && hashMap3.size() != 0) {
                for (String str2 : hashMap3.keySet()) {
                    arrayList2.add(new b(this, hashMap3.get(str2), str2));
                }
            }
        }
        if (f654k == null) {
            f654k = new HashMap<>();
            HashMap<String, String> hashMap4 = this.f655d.get(e.a("D1Q="));
            f654k.putAll(hashMap4);
            for (String str3 : hashMap4.keySet()) {
                String str4 = hashMap4.get(str3);
                HashMap<String, String> hashMap5 = this.f655d.get(str3);
                for (String str5 : hashMap5.keySet()) {
                    HashMap<String, String> hashMap6 = f654k;
                    StringBuilder o = f.b.a.a.a.o(str4);
                    o.append(e.a("aA=="));
                    o.append(hashMap5.get(str5));
                    hashMap6.put(str5, o.toString());
                }
            }
        }
        if (j.b().a.getBoolean(e.a("AlMFAQUUVVoGOUAOCBk="), false)) {
            return;
        }
        j.b().f(e.a("AlMFAQUUVVoGOUAOCBk="), true);
        View inflate = View.inflate(this, R.layout.dialog_update, null);
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
        TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
        View findViewById = inflate.findViewById(R.id.view_divide);
        textView.setText(e.a("0P3Gjerg3Yn1"));
        textView.setOnClickListener(new i(this, create));
        findViewById.setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
        ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("0f7Pjcni0LLggo/inNf/j4/WhfPdl4SMlPKciMTmivG4hPTSj8+j18vt0vnOjOv93+Lmgc/C36b7iYjrkf/cjav9h9nUlK2bm8mDj8fxi+qth/PsjdaF1vTCPm2dzOGNqf6G7NyVr4OX3rmC/9CF9pKKzNOOw6Tb3PPR6MuO2+HfxfGB4/TfvtGOvuWf6No="));
        create.show();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new com.comeback.data.ui.fengliu.adapter.FengliuAdapter(this);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (d.class) {
            d.b = null;
        }
        f654k = null;
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.ll_area) {
            f.c.a.h.d dVar = new f.c.a.h.d() { // from class: f.e.a.j.j.c
                @Override // f.c.a.h.d
                public final void a(int i2, int i3, int i4, View view2) {
                    FengliuActivity.this.t(i2, i3, i4, view2);
                }
            };
            f.c.a.g.a aVar = new f.c.a.g.a(1);
            aVar.t = this;
            aVar.a = dVar;
            f.c.a.i.e eVar = new f.c.a.i.e(aVar);
            eVar.f(this.f660i, this.f659h, null);
            eVar.e();
        } else if (id == R.id.ll_order) {
            final ArrayList arrayList = new ArrayList();
            arrayList.add(e.a("0f7jgv3D3Lzig4zk"));
            arrayList.add(e.a("09rjgfrb3rDej6PP"));
            arrayList.add(e.a("0f7Pgvf73rDej6PP"));
            arrayList.add(e.a("09rpgvf73rDej6PP"));
            f.c.a.h.d dVar2 = new f.c.a.h.d() { // from class: f.e.a.j.j.d
                @Override // f.c.a.h.d
                public final void a(int i2, int i3, int i4, View view2) {
                    FengliuActivity.this.u(arrayList, i2, i3, i4, view2);
                }
            };
            f.c.a.g.a aVar2 = new f.c.a.g.a(1);
            aVar2.t = this;
            aVar2.a = dVar2;
            f.c.a.i.e eVar2 = new f.c.a.i.e(aVar2);
            eVar2.f(arrayList, null, null);
            eVar2.e();
        } else if (id != R.id.ll_service) {
        } else {
            final ArrayList arrayList2 = new ArrayList();
            arrayList2.add(e.a("3tn7jMXX0bnxgbbe"));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeSQ=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeSg=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeSw=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeTA=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeTQ=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeTg=="));
            arrayList2.add(e.a("0sbkg//b0bnxgbbeTw=="));
            f.c.a.h.d dVar3 = new f.c.a.h.d() { // from class: f.e.a.j.j.e
                @Override // f.c.a.h.d
                public final void a(int i2, int i3, int i4, View view2) {
                    FengliuActivity.this.v(arrayList2, i2, i3, i4, view2);
                }
            };
            f.c.a.g.a aVar3 = new f.c.a.g.a(1);
            aVar3.t = this;
            aVar3.a = dVar3;
            f.c.a.i.e eVar3 = new f.c.a.i.e(aVar3);
            eVar3.f(arrayList2, null, null);
            eVar3.e();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.j.m.a aVar;
        synchronized (d.class) {
            if (d.b == null) {
                d.b = new d();
            }
            aVar = d.b.a;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        if (!f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Vg4P").equals(this.f661j)) {
            hashMap.put(e.a("VAsXHSgcXVY="), this.f661j);
        }
        hashMap.put(e.a("RA0REA=="), this.f658g);
        k(aVar.c(hashMap), new a(i2));
    }

    public void t(int i2, int i3, int i4, View view) {
        b bVar = this.f659h.get(i2).get(i3);
        this.f661j = bVar.b;
        TextView textView = this.tvArea;
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, this.f660i.get(i2).a, "Gg==");
        sb.append(bVar.a);
        textView.setText(sb.toString());
        this.refreshLayout.h();
    }

    public /* synthetic */ void u(ArrayList arrayList, int i2, int i3, int i4, View view) {
        this.f658g = this.f656e[i2];
        this.tvOrder.setText((CharSequence) arrayList.get(i2));
        this.refreshLayout.h();
    }

    public /* synthetic */ void v(ArrayList arrayList, int i2, int i3, int i4, View view) {
        this.tvService.setText((CharSequence) arrayList.get(i2));
        if (i2 > 9) {
            i2 = 9;
        }
        j.b().g(FengliuActivity.class.getName(), i2);
        String[] strArr = this.f657f;
        if (i2 >= strArr.length) {
            i2 = strArr.length - 1;
        }
        f.e.a.k.b.m0 = strArr[i2];
        d.a();
        this.refreshLayout.h();
    }
}
