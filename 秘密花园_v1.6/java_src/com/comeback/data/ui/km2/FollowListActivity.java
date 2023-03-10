package com.comeback.data.ui.km2;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.km2.bean.Km2User;
import f.b.a.a.a;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class FollowListActivity extends BaseRefreshActivity {
    public static void r(Context context) {
        a.u(context, FollowListActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        q(false);
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        UserListAdapter userListAdapter = new UserListAdapter(this);
        this.f114c = userListAdapter;
        this.mRvList.setAdapter(userListAdapter);
        j0<? extends g0> e2 = g.d(x.P()).e(Km2User.class);
        BaseAbstractAdapter baseAbstractAdapter = this.f114c;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((Km2User) e2.get(i2));
        }
        baseAbstractAdapter.a(arrayList);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new UserListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
    }
}
