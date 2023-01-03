package com.comeback.data.ui.mimei;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class NovelReadActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1677c;

    /* renamed from: d  reason: collision with root package name */
    public d<i0> f1678d;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public a() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6449e < 300) {
                try {
                    NovelReadActivity.this.tvDetail.setText(g0Var.b.H());
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            h.n1(e.a("0ffTgubd3LnTjonanc7Sg4PH"));
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            th.getMessage();
            f.e.a.k.f.a();
        }
    }

    public static void l(Context context, String str, String str2) {
        Intent intent = new Intent(context, NovelReadActivity.class);
        intent.putExtra(e.a("QwsXCA4="), str);
        intent.putExtra(e.a("QhAP"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QwsXCA4="));
        this.f1677c = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_novel_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvName.setText(this.b);
        d<i0> c2 = c.a().c(this.f1677c);
        this.f1678d = c2;
        c2.X(new a());
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1678d;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
