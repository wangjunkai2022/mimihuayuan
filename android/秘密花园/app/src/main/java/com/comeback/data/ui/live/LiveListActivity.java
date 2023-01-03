package com.comeback.data.ui.live;

import android.content.Context;
import android.content.Intent;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.live.adapter.RoomAdapter;
import com.comeback.data.ui.live.bean.LiveRoomList;
import f.e.a.e;
import f.e.a.j.h0.c;

/* loaded from: classes.dex */
public class LiveListActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1370d;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<LiveRoomList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            LiveListActivity.this.f114c.c();
            LiveListActivity.this.f114c.a(((LiveRoomList) obj).getData().getLists());
        }
    }

    public static void s(Context context, String str) {
        Intent intent = new Intent(context, LiveListActivity.class);
        f.b.a.a.a.v("VgYHFg4ASg==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1370d = intent.getStringExtra(e.a("VgYHFg4ASg=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.refreshLayout.t(false);
        this.mRvList.setPadding(10, 0, 10, 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new RoomAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(c.a().i(e.a("UwdQBw4VDQIVBwRWGVMBUwZVU1NbEl8BF1YNAUpcWlg="), e.a("Bg=="), this.f1370d), new a());
    }
}
