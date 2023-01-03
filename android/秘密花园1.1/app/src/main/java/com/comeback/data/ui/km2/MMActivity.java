package com.comeback.data.ui.km2;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.km2.bean.MMList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.x.j.d;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MMActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1327d = e.a("AVBQ");
    @BindView
    public TextView tvArea;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<MMList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1328f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1328f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            MMList mMList = (MMList) obj;
            if (this.f1328f == 1) {
                MMActivity.this.f114c.c();
            }
            MMActivity.this.f114c.a(mMList.getData().getList());
        }
    }

    public static void t(Context context) {
        f.b.a.a.a.u(context, MMActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_km_mm;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new MMListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, @Nullable Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 == 100) {
            this.f1327d = intent.getStringExtra(e.a("XgY="));
            this.tvArea.setText(intent.getStringExtra(e.a("WQMOAQ==")));
            this.refreshLayout.h();
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (d.class) {
            d.b = null;
        }
        AreaChooseActivity.f1316f = null;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("VhAGBTQaXQ=="), this.f1327d);
            jSONObject.put(e.a("RwMEAQ=="), i2);
            jSONObject.put(e.a("QwMEOwIX"), "");
        } catch (Exception unused) {
        }
        k(d.a().d(f.e.a.j.x.j.a.c(jSONObject)), new a(i2));
    }
}
