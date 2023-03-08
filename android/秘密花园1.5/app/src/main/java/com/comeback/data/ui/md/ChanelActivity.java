package com.comeback.data.ui.md;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.md.adapter.VideoAdapter;
import com.comeback.data.ui.md.bean.MdApiBean;
import com.comeback.data.ui.md.bean.VideoList;
import f.e.a.e;
import f.e.a.j.e0.d.b;
import f.e.a.j.e0.d.d;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class ChanelActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1709d;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1710f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1710f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f1710f == 1) {
                ChanelActivity.this.f114c.c();
            }
            ChanelActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void u(Context context, String str, String str2) {
        Intent intent = new Intent(context, ChanelActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("VAoCCg4fcFc="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1709d = intent.getStringExtra(e.a("VAoCCg4fcFc="));
        intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        TreeMap treeMap = new TreeMap();
        treeMap.put(e.a("WwsQEDQBVkQ="), e.a("AVI="));
        treeMap.put(e.a("RwMEAQ=="), String.valueOf(i2));
        treeMap.put(e.a("QxsTAQ=="), e.a("BQ=="));
        if (!TextUtils.isEmpty(this.f1709d)) {
            treeMap.put(e.a("VAoCCgUWVQ=="), this.f1709d);
        }
        b b = f.e.a.j.e0.d.e.b();
        d.a(treeMap);
        m.e<MdApiBean> d2 = b.d(treeMap);
        a aVar = new a(i2);
        d2.d(m.r.a.a()).b(m.r.a.a()).a(f.e.a.j.e0.a.a).b(m.l.b.a.a()).c(aVar);
        this.a.b(aVar);
    }
}
