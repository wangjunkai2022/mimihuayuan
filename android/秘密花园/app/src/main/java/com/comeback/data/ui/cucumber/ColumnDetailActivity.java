package com.comeback.data.ui.cucumber;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cucumber.adapter.VideoList4Adapter;
import com.comeback.data.ui.cucumber.bean.ColumnDetail;
import com.comeback.data.ui.cucumber.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.g.b;
import f.e.a.j.g.h.c;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ColumnDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public ColumnDetail f406d;

    /* renamed from: e  reason: collision with root package name */
    public int f407e;

    /* renamed from: f  reason: collision with root package name */
    public int f408f;
    @BindView
    public ImageView ivBg;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f409f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f409f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f409f == 1) {
                ColumnDetailActivity.this.f114c.c();
            }
            ColumnDetailActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void v(Context context, int i2, int i3) {
        Intent intent = new Intent(context, ColumnDetailActivity.class);
        intent.putExtra(e.a("WQMVLQ8="), i2);
        intent.putExtra(e.a("WQMVJwcA"), i3);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f407e = intent.getIntExtra(e.a("WQMVLQ8="), 0);
        this.f408f = intent.getIntExtra(e.a("WQMVJwcA"), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cucumber_column;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoList4Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        if (this.f406d == null) {
            k(c.a().v(this.f407e), new b(this));
        } else {
            u(i2);
        }
    }

    public final void u(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(this.f407e, hashMap, f.b.a.a.a.i("BlA=", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEASUc"), "RwMEATgaQ1Y="), "WQMVLQ8="), "WQMVJwcA"), String.valueOf(this.f408f));
        HashMap hashMap2 = new HashMap();
        hashMap2.put(e.a("RwMEASUc"), Integer.valueOf(i2));
        hashMap2.put(e.a("RwMEATgaQ1Y="), 12);
        hashMap2.put(e.a("WQMVLQ8="), Integer.valueOf(this.f407e));
        hashMap2.put(e.a("WQMVJwcA"), Integer.valueOf(this.f408f));
        k(c.a().o(hashMap, hashMap2), new a(i2));
    }
}
