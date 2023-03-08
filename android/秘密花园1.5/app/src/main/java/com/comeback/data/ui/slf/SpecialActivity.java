package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.slf.adapter.SpecialAdapter;
import com.comeback.data.ui.slf.bean.Special;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l0.h.b;
import f.e.a.j.l0.h.d;
import f.i.b.r;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SpecialActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f2040d;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ArrayList<Special>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2041f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2041f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f2041f == 1) {
                SpecialActivity.this.f114c.c();
            }
            SpecialActivity.this.f114c.a(arrayList);
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, SpecialActivity.class);
        f.b.a.a.a.v("QxsTAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2040d = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_cat_id;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FCQnUV5FDg==")));
        super.e();
        this.tvTitle.setText(e.a("09rwjcnr3KP7j6/h"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new SpecialAdapter(this, this.f2040d);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        r rVar = new r();
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        k(b.a().o(this.f2040d, d.a(rVar.toString())), new a(i2));
    }
}
