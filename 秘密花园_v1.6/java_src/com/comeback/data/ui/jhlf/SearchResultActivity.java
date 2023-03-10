package com.comeback.data.ui.jhlf;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.jhlf.adapter.MMAdapter;
import com.comeback.data.ui.jhlf.bean.MMList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.w.h.c;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SearchResultActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1333d;

    /* renamed from: e  reason: collision with root package name */
    public String f1334e;

    /* renamed from: f  reason: collision with root package name */
    public String f1335f;
    @BindView
    public TextView tvArea;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ArrayList<MMList.DataEntity>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1336f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1336f = i2;
        }

        @Override // com.comeback.data.base.BaseRefreshActivity.a, m.j
        public void e(Throwable th) {
            super.e(th);
            h.p1(e.a("0ffTgubd0b3Eg7vxnc7Sg4PHjNjnm5aElcW0gefPhNamhdj4jfuv1sP73Mjtj+vs0e/BjOHx3rHK"));
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1336f == 1) {
                SearchResultActivity.this.f114c.c();
            }
            SearchResultActivity.this.f114c.a(arrayList);
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        f.b.a.a.a.v("XAca", intent, str, context, intent);
    }

    public static void u(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        intent.putExtra(e.a("XAca"), str);
        intent.putExtra(e.a("XgY="), str2);
        intent.putExtra(e.a("WQMOAQ=="), str3);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1333d = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1334e = intent.getStringExtra(e.a("XgY="));
        this.f1335f = intent.getStringExtra(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.actiivty_jhlf_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        TextView textView = this.tvArea;
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(this.f1333d) ? e.a("0ufLg8Dq") : this.f1333d);
        sb.append(e.a("Gg=="));
        sb.append(e.a("0ufLgfDO3LbAj6DJkMXujaf+hNDJXg=="));
        sb.append(this.f1335f);
        textView.setText(sb.toString());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new MMAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        m.e<ArrayList<MMList.DataEntity>> a2;
        if (TextUtils.isEmpty(this.f1334e)) {
            a2 = c.a().d(i2, this.f1335f);
        } else {
            a2 = c.a().a(i2, this.f1334e, this.f1335f);
        }
        k(a2, new a(i2));
    }
}
