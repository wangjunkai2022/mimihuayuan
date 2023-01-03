package com.comeback.data.ui.hgl;

import android.content.Context;
import android.content.Intent;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.hgl.adapter.RoomAdapter;
import com.comeback.data.ui.hgl.bean.RoomList;
import f.e.a.e;
import f.e.a.j.h0.c;

/* loaded from: classes.dex */
public class LiveListActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1017d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1018e;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<RoomList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            LiveListActivity.this.f114c.c();
            LiveListActivity.this.f114c.a(((RoomList) obj).getZhubo());
        }
    }

    public static void s(Context context, String str, boolean z) {
        Intent intent = new Intent(context, LiveListActivity.class);
        intent.putExtra(e.a("VgYHFg4ASg=="), str);
        intent.putExtra(e.a("VAoCCgUWVQ=="), z);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1017d = intent.getStringExtra(e.a("VgYHFg4ASg=="));
        this.f1018e = intent.getBooleanExtra(e.a("VAoCCgUWVQ=="), true);
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
        m.e<RoomList> g2;
        if (this.f1018e) {
            g2 = c.a().a(this.f1017d);
        } else {
            g2 = c.a().g(this.f1017d);
        }
        k(g2, new a());
    }
}
