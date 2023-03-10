package com.comeback.data.ui.xiami;

import android.content.Context;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.xiami.bean.Category;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.i.b.c0.u;
import f.i.b.j;
import java.io.InputStreamReader;
/* loaded from: classes.dex */
public class XMLauncherActivity extends BaseActivity {
    public static void l(Context context) {
        a.u(context, XMLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(App.b.getAssets().open(e.a("TwsCCQJdTUsH")));
            j jVar = new j();
            f.i.b.e0.a h2 = jVar.h(inputStreamReader);
            Object c2 = jVar.c(h2, Category.class);
            j.a(c2, h2);
            MainActivity.f2215d = (Category) u.a(Category.class).cast(c2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        MainActivity.m(this);
        finish();
    }
}
