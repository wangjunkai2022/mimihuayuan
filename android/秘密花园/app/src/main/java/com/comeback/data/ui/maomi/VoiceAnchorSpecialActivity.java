package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.maomi.adapter.VoiceDetailListAdapter;
import com.comeback.data.ui.maomi.bean.VoiceDetailList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c0.m.b;
import f.e.a.j.c0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class VoiceAnchorSpecialActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1565d;

    /* renamed from: e  reason: collision with root package name */
    public String f1566e;

    /* renamed from: f  reason: collision with root package name */
    public String f1567f;

    /* renamed from: g  reason: collision with root package name */
    public String f1568g;
    @BindView
    public RatioImageView ivHeader;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VoiceDetailList> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            VoiceAnchorSpecialActivity.r(VoiceAnchorSpecialActivity.this, (VoiceDetailList) obj);
        }
    }

    public static void r(VoiceAnchorSpecialActivity voiceAnchorSpecialActivity, VoiceDetailList voiceDetailList) {
        if (voiceAnchorSpecialActivity.b == 1) {
            voiceAnchorSpecialActivity.f114c.c();
        }
        voiceAnchorSpecialActivity.f114c.a(voiceDetailList.getData().getData());
    }

    public static void s(Context context, String str, String str2, String str3, String str4) {
        Intent intent = new Intent(context, VoiceAnchorSpecialActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("Xg8E"), str3);
        intent.putExtra(e.a("QwsXCA4="), str4);
        intent.putExtra(e.a("VgwADAQBZloX"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1566e = intent.getStringExtra(e.a("XgY="));
        this.f1565d = intent.getStringExtra(e.a("VgwADAQBZloX"));
        this.f1567f = intent.getStringExtra(e.a("Xg8E"));
        this.f1568g = intent.getStringExtra(e.a("QwsXCA4="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_voice_special;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        h.z0(this.f1567f, this.ivHeader);
        this.tvTitle.setText(this.f1568g);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VoiceDetailListAdapter(this, false);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("XgY="), this.f1565d);
            jSONObject.put(e.a("RA0REA=="), e.a("Bg=="));
            jSONObject.put(e.a("RBIGBwISVWwaAg=="), this.f1566e);
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().f(b.a(jSONObject.toString())), new a());
    }
}
