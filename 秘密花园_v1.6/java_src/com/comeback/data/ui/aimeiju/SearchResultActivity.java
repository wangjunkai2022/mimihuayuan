package com.comeback.data.ui.aimeiju;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.aimeiju.adapter.VideoAdapter;
import com.comeback.data.ui.aimeiju.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.a.f.f;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SearchResultActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f135d;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f136f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f136f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f136f == 1) {
                SearchResultActivity.this.f114c.c();
            }
            SearchResultActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        f.b.a.a.a.v("WQMOAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f135d = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_aimeiju_search_result;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.f135d);
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
        hashMap.put(f.b.a.a.a.G(i2, hashMap, f.b.a.a.a.i("Blo=", hashMap, e.a("RAsZAQ=="), "RwMEAQ=="), "XAca"), this.f135d);
        k(a2.a(hashMap), new a(i2));
    }
}
