package com.comeback.data.ui.ba;

import android.content.Context;
import android.text.TextUtils;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.ba.bean.HostBean;
import com.comeback.secret.garden.R;
import f.e.a.j.c.g.c;
import f.e.a.k.b;
import m.j;

/* loaded from: classes.dex */
public class BaLauncherActivity extends BaseActivity {

    /* loaded from: classes.dex */
    public class a extends j<HostBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
            BaLauncherActivity.l(BaLauncherActivity.this);
        }

        @Override // m.j
        public void e(Throwable th) {
            BaLauncherActivity.l(BaLauncherActivity.this);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(HostBean hostBean) {
            HostBean hostBean2 = hostBean;
            if (!TextUtils.isEmpty(hostBean2.getTarget())) {
                b.Z = hostBean2.getTarget();
            }
            if (!TextUtils.isEmpty(hostBean2.getRelease())) {
                b.a0 = hostBean2.getRelease();
            }
        }
    }

    public static void l(BaLauncherActivity baLauncherActivity) {
        if (baLauncherActivity != null) {
            BaActivity.m(baLauncherActivity);
            baLauncherActivity.finish();
            return;
        }
        throw null;
    }

    public static void m(Context context) {
        f.b.a.a.a.u(context, BaLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ba_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        k(c.a().g(50), new a());
    }
}
