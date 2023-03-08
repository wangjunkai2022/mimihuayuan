package com.comeback.data.ui.fengliu;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fengliu.MyFengliuActivity;
import com.comeback.data.ui.fengliu.bean.MMInfo2;
import com.comeback.secret.garden.R;
import f.c.a.h.d;
import f.e.a.e;
import f.e.a.j.j.k;
import f.e.a.j.j.l;
import f.i.b.j;
import java.io.InputStreamReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class MyFengliuActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public HashMap<String, HashMap<String, String>> f679d;

    /* renamed from: e  reason: collision with root package name */
    public List<List<b>> f680e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<b> f681f;

    /* renamed from: g  reason: collision with root package name */
    public String f682g = e.a("Vg4P");
    @BindView
    public TextView tvArea;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ArrayList<MMInfo2>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f683f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f683f = i2;
        }

        @Override // com.comeback.data.base.BaseRefreshActivity.a, m.j
        public void e(Throwable th) {
            super.e(th);
            h.n1(e.a("0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"));
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f683f == 1) {
                MyFengliuActivity.this.f114c.c();
            }
            MyFengliuActivity.this.f114c.a(arrayList);
        }
    }

    /* loaded from: classes.dex */
    public class b implements f.f.b.a {
        public String a;
        public String b;

        public b(MyFengliuActivity myFengliuActivity, String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // f.f.b.a
        public String a() {
            return this.a;
        }
    }

    public static void u(Context context) {
        f.b.a.a.a.u(context, MyFengliuActivity.class);
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
            Type type = new l(this).b;
            f.i.b.e0.a h2 = jVar.h(inputStreamReader);
            Object c2 = jVar.c(h2, type);
            j.a(c2, h2);
            hashMap = (HashMap) c2;
        } catch (Exception e2) {
            e2.printStackTrace();
            hashMap = null;
        }
        this.f679d = hashMap;
        this.f681f = new ArrayList<>();
        this.f680e = new ArrayList();
        HashMap<String, String> hashMap2 = this.f679d.get(e.a("D1Q="));
        this.f681f.add(new b(this, e.a("0ufLjejb"), e.a("Vg4P")));
        for (String str : hashMap2.keySet()) {
            this.f681f.add(new b(this, hashMap2.get(str), str));
        }
        Iterator<b> it = this.f681f.iterator();
        while (it.hasNext()) {
            b next = it.next();
            ArrayList arrayList = new ArrayList();
            this.f680e.add(arrayList);
            arrayList.add(new b(this, e.a("0ufLjejb"), next.b));
            HashMap<String, String> hashMap3 = this.f679d.get(next.b);
            if (hashMap3 != null && hashMap3.size() != 0) {
                for (String str2 : hashMap3.keySet()) {
                    arrayList.add(new b(this, hashMap3.get(str2), str2));
                }
            }
        }
        if (f.e.a.k.j.b().a.getBoolean(e.a("Ww0WAg4dXmwHD0QU"), false)) {
            return;
        }
        f.e.a.k.j.b().f(e.a("Ww0WAg4dXmwHD0QU"), true);
        View inflate = View.inflate(this, R.layout.dialog_update, null);
        AlertDialog create = new AlertDialog.Builder(this).setView(inflate).setCancelable(false).create();
        TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
        View findViewById = inflate.findViewById(R.id.view_divide);
        textView.setText(e.a("0P3Gjerg3Yn1"));
        textView.setOnClickListener(new k(this, create));
        findViewById.setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_cancel)).setVisibility(8);
        ((TextView) inflate.findViewById(R.id.tv_title)).setText(e.a("0drKjc3b37zjgZDd"));
        ((TextView) inflate.findViewById(R.id.tv_message)).setText(e.a("0f7Pjcni0LLggKHXnufNjoDQhf7plrivlf2Age7ajNe7hPTDjeaJ1f7I0cPfj8fx3uHejOjO3qfb"));
        create.show();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new FengliuAdapter2(this);
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
        if (view.getId() != R.id.ll_area) {
            return;
        }
        d dVar = new d() { // from class: f.e.a.j.j.f
            @Override // f.c.a.h.d
            public final void a(int i2, int i3, int i4, View view2) {
                MyFengliuActivity.this.t(i2, i3, i4, view2);
            }
        };
        f.c.a.g.a aVar = new f.c.a.g.a(1);
        aVar.t = this;
        aVar.a = dVar;
        f.c.a.i.e eVar = new f.c.a.i.e(aVar);
        eVar.f(this.f681f, this.f680e, null);
        eVar.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(f.e.a.j.j.m.e.a().d(this.f682g, i2), new a(i2));
    }

    public void t(int i2, int i3, int i4, View view) {
        b bVar = this.f680e.get(i2).get(i3);
        this.f682g = bVar.b;
        TextView textView = this.tvArea;
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, this.f681f.get(i2).a, "Gg==");
        sb.append(bVar.a);
        textView.setText(sb.toString());
        this.refreshLayout.h();
    }
}
