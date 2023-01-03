package com.comeback.data.ui.km;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.km.bean.KMVideoList;
import com.comeback.data.ui.km.bean.User;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.w.g.b;
import f.e.a.j.w.g.d;
import f.e.a.k.g;
import g.a.x;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class UserCenterActivity extends BaseRefreshActivity {
    @BindColor
    public int basic_primary_text;

    /* renamed from: d  reason: collision with root package name */
    public String f1298d;

    /* renamed from: e  reason: collision with root package name */
    public String f1299e;
    @BindView
    public TextView tvFollow;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<KMVideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1300f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1300f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            KMVideoList kMVideoList = (KMVideoList) obj;
            if (this.f1300f == 1) {
                UserCenterActivity.this.f114c.c();
            }
            UserCenterActivity.this.f114c.a(kMVideoList.getData().getList());
        }
    }

    public static void u(Context context, String str, String str2) {
        Intent intent = new Intent(context, UserCenterActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("XgY="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1299e = intent.getStringExtra(e.a("XgY="));
        this.f1298d = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_km_user;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        super.e();
        this.mRvList.setPadding(2, 0, 2, 0);
        this.tvName.setText(this.f1298d);
        if (g.d(x.P()).f(User.class, e.a("Whc8DQ8="), this.f1299e).size() != 0) {
            t(this.tvFollow);
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoList2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("QisH"), this.f1299e);
            jSONObject.put(e.a("WgcqAA=="), 42241308);
            jSONObject.put(e.a("RwMEAQ=="), i2);
            jSONObject.put(e.a("RwcRNAoUXA=="), 18);
        } catch (Exception unused) {
        }
        k(d.a().e(b.a(jSONObject.toString())), new a(i2));
    }

    public final void t(TextView textView) {
        textView.setEnabled(false);
        textView.setClickable(false);
        textView.setBackgroundResource(R.drawable.detail_focus_no_bg);
        textView.setText(e.a("0tXRge7A34Db"));
        textView.setTextColor(this.basic_primary_text);
    }
}
