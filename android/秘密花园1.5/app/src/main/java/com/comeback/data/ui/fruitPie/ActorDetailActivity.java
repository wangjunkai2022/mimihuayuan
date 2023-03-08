package com.comeback.data.ui.fruitPie;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.fruitPie.adapter.Video2Adapter;
import com.comeback.data.ui.fruitPie.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k.b.b;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f693d;

    /* renamed from: e  reason: collision with root package name */
    public String f694e;

    /* renamed from: f  reason: collision with root package name */
    public String f695f;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f696f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f696f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f696f == 1) {
                ActorDetailActivity.this.f114c.c();
            }
            ActorDetailActivity.this.f114c.a(videoList.getData().getList());
        }
    }

    public static void t(Context context, int i2, String str, String str2) {
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        intent.putExtra(e.a("QxsTAQ=="), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f693d = intent.getIntExtra(e.a("XgY="), 1);
        this.f694e = intent.getStringExtra(e.a("QxsTAQ=="));
        this.f695f = intent.getStringExtra(e.a("WQMOAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_pie_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.f695f);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new Video2Adapter(this, this.f694e);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        HashMap<String, String> hashMap = new HashMap<>();
        if (e.a("Bg==").equals(this.f694e)) {
            hashMap.put(e.a("VgwADAQBSmwaAg=="), String.valueOf(this.f693d));
        } else {
            hashMap.put(e.a("VA0PEQYdUEAHOV0D"), String.valueOf(this.f693d));
        }
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WwcNAx8b"), e.a("BlI="));
        hashMap.put(e.a("QhEGFj8cUlYd"), "");
        hashMap.put(e.a("Xw8="), e.a("B1JbSQoDUA=="));
        hashMap.put(e.a("UwcVDQgWZloX"), "");
        k(b.a().d(e.a(e.a("Bg==").equals(this.f694e) ? "VgwADAQBSncWElUOFA==" : "VA0PEQYdUEAHIlETGQMP"), hashMap), new a(i2));
    }
}
