package com.comeback.data.ui.cm;

import android.content.Context;
import android.content.Intent;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.cm.bean.PlayBean;
import f.e.a.e;
import f.e.a.j.e.f.b;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<PlayBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            e.a("aD0=");
        }

        @Override // m.j
        public void f(PlayBean playBean) {
            PlayActivity.this.m(playBean.getRescont().getVideopath());
        }
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, PlayActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        k(b.a().f(str, e.a("Bg==")), new a());
    }
}
