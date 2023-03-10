package com.comeback.data.ui.cucumber;

import android.content.Context;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRealmListActivity;
import com.comeback.data.ui.cucumber.adapter.CollectListAdapter;
import com.comeback.data.ui.cucumber.bean.RealmVideo;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.k.g;
import g.a.j0;
import g.a.x;
/* loaded from: classes.dex */
public class CollectActivity extends BaseRealmListActivity<RealmVideo> {
    public static void p(Context context) {
        a.u(context, CollectActivity.class);
    }

    @Override // com.comeback.data.base.BaseRealmListActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public BaseAbstractAdapter<RealmVideo> l() {
        return new CollectListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public String n() {
        return e.a("0eryg/H336fFjqPo");
    }

    @Override // com.comeback.data.base.BaseRealmListActivity
    public j0<RealmVideo> o() {
        return g.d(x.P()).e(RealmVideo.class);
    }
}
