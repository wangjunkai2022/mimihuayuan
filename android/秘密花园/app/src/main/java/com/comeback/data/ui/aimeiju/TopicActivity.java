package com.comeback.data.ui.aimeiju;

import android.content.Context;
import android.content.Intent;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.aimeiju.adapter.VideoAdapter;
import com.comeback.data.ui.aimeiju.bean.VideoList;
import f.e.a.e;
import f.e.a.j.a.f.f;
import java.util.HashMap;

/* loaded from: classes.dex */
public class TopicActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f139d;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f140f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f140f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f140f == 1) {
                TopicActivity.this.f114c.c();
            }
            TopicActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, TopicActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f139d = intent.getStringExtra(e.a("XgY="));
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
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.a.f.e a2 = f.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("Blo=", hashMap, e.a("RAsZAQ=="), "RwMEAQ=="), "XgY="), this.f139d);
        hashMap.put(f.b.a.a.a.i("XwsXFw==", hashMap, e.a("UwcQBw=="), "TRYKAA=="), e.a("Bw=="));
        k(a2.d(hashMap), new a(i2));
    }
}
