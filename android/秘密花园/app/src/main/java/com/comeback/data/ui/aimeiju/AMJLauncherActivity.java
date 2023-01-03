package com.comeback.data.ui.aimeiju;

import android.content.Context;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.aimeiju.bean.BaseUrlBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.e.a.k.b;
import f.i.b.j;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class AMJLauncherActivity extends BaseActivity {
    public d<i0> b;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public a() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6449e < 300) {
                try {
                    b.f3972e = ((BaseUrlBean) new j().d(g0Var.b.H(), BaseUrlBean.class)).getData().getBaseUrl().replace(e.a("GAsNAA4LF0MbFhsGCBpMAlgRTA=="), "");
                } catch (IOException e2) {
                    e2.printStackTrace();
                    h.n1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PHjNjnl4SMlPKcjsPyi8WTi+bpjM6X"));
                    AMJLauncherActivity.l(AMJLauncherActivity.this);
                }
            } else {
                h.n1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PHjNjnl4SMlPKcjsPyi8WTi+bpjM6X"));
            }
            AMJLauncherActivity.l(AMJLauncherActivity.this);
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            h.n1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PHjNjnl4SMlPKcjsPyi8WTi+bpjM6X"));
            AMJLauncherActivity.l(AMJLauncherActivity.this);
        }
    }

    public static void l(AMJLauncherActivity aMJLauncherActivity) {
        if (aMJLauncherActivity != null) {
            aMJLauncherActivity.k(f.e.a.j.a.f.f.a().b(), new f.e.a.j.a.d(aMJLauncherActivity));
            return;
        }
        throw null;
    }

    public static void m(AMJLauncherActivity aMJLauncherActivity) {
        if (aMJLauncherActivity != null) {
            AimeijuActivity.m(aMJLauncherActivity);
            aMJLauncherActivity.finish();
            return;
        }
        throw null;
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, AMJLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_amj_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        d<i0> c2 = c.a().c(e.a("XxYXFBhJFhweDFUXCERWWU4NFh0OXVpcHkldCRwPG0VHChNLCgNJHBIIUBUXAwdEQQcRSwgbWF0UAw=="));
        this.b = c2;
        c2.X(new a());
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.b;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
