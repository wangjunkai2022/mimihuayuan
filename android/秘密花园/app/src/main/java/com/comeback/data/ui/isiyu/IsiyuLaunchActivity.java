package com.comeback.data.ui.isiyu;

import android.content.Context;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.isiyu.bean.UserInfo;
import com.comeback.secret.garden.R;
import f.e.a.j.t.e.e;
import f.e.a.k.f;
import m.j;

/* loaded from: classes.dex */
public class IsiyuLaunchActivity extends BaseActivity {

    /* loaded from: classes.dex */
    public class a extends j<UserInfo> {
        public a(IsiyuLaunchActivity isiyuLaunchActivity) {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            th.getMessage();
            f.a();
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(UserInfo userInfo) {
        }
    }

    public static void l(Context context) {
        MainActivity.l(context);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_loading;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        k(e.a().h(), new a(this));
    }
}
