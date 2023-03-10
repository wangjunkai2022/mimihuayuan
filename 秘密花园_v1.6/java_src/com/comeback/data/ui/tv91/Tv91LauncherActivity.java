package com.comeback.data.ui.tv91;

import android.content.Context;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.tv91.bean.ConfigBean;
import com.comeback.secret.garden.R;
import f.e.a.k.b;
import m.j;
/* loaded from: classes.dex */
public class Tv91LauncherActivity extends BaseActivity {

    /* loaded from: classes.dex */
    public class a extends j<ConfigBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.printStackTrace();
        }

        @Override // m.j
        public void f(ConfigBean configBean) {
            ConfigBean configBean2 = configBean;
            b.n = configBean2.getAHost();
            f.e.a.j.o0.i.b.f4017c = configBean2.getN();
            configBean2.getSHost();
            synchronized (f.e.a.j.o0.i.b.class) {
                f.e.a.j.o0.i.b.b = null;
            }
            MainActivity.m(Tv91LauncherActivity.this);
            Tv91LauncherActivity.this.finish();
        }
    }

    public static void l(Context context) {
        if (h.x(context, "")) {
            f.b.a.a.a.u(context, Tv91LauncherActivity.class);
        }
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_tv91_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        k(f.e.a.j.o0.i.b.a().g(), new a());
    }
}
