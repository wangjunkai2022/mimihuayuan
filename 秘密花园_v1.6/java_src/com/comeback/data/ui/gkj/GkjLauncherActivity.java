package com.comeback.data.ui.gkj;

import android.content.Context;
import android.view.View;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.j.n.p.e;
import f.e.a.k.b;
/* loaded from: classes.dex */
public class GkjLauncherActivity extends BaseActivity {
    public static void l(Context context) {
        a.u(context, GkjLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.ll_node1 /* 2131296565 */:
                e.f3999c = b.C;
                break;
            case R.id.ll_node2 /* 2131296566 */:
                e.f3999c = b.D;
                break;
        }
        GKJActivity.m(this);
        finish();
    }
}
