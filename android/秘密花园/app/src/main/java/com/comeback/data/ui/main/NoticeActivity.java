package com.comeback.data.ui.main;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;

/* loaded from: classes.dex */
public class NoticeActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1488c;
    @BindView
    public TextView tvContent;

    public static void l(Context context, String str) {
        Intent intent = new Intent(context, NoticeActivity.class);
        intent.putExtra(e.a("VA0NEA4dTQ=="), str);
        intent.putExtra(e.a("UQ0RBw4="), false);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("VA0NEA4dTQ=="));
        this.f1488c = intent.getBooleanExtra(e.a("UQ0RBw4="), false);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_notice;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        if (this.b.contains(e.a("CwARWg=="))) {
            h.j1(this.tvContent, this.b);
        } else {
            this.tvContent.setText(this.b);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f1488c) {
            h.n1(e.a("F4rj5Yz6sdXvytHQyo3Y5NH44YHq792OzIGgz5fW74OY1YX/35Wvg5TvvIHkxg=="));
        } else {
            super.onBackPressed();
        }
    }
}
