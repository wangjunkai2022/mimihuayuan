package com.comeback.data.ui.main;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.main.bean.AppInfo;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebView;
import f.e.a.e;
import f.e.a.k.f;
import j.b;
import java.util.ArrayList;
import java.util.Iterator;
import k.a.e.h;

/* loaded from: classes.dex */
public class AppActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1536c;

    /* renamed from: d  reason: collision with root package name */
    public String f1537d;
    @BindView
    public TextView tvJump;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class a {
        public a() {
        }

        @JavascriptInterface
        public void getFileInfo(String str) {
            AppActivity.n(AppActivity.this, str);
        }

        @JavascriptInterface
        public void getFiles(String str) {
            AppActivity.m(AppActivity.this, str);
        }
    }

    public static void l(AppActivity appActivity, String str) {
        if (appActivity != null) {
            try {
                appActivity.startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(str)));
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        throw null;
    }

    public static void m(AppActivity appActivity, String str) {
        if (appActivity != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<h> it = b.u(str).I(e.a("WgAb")).iterator();
            while (it.hasNext()) {
                AppInfo appInfo = new AppInfo();
                h hVar = it.next().J(e.a("Vg==")).get(0);
                appInfo.setUrl(appActivity.f1537d + e.a("GBYT") + hVar.b(e.a("XxAGAg==")));
                appInfo.setName(hVar.L());
                appInfo.setImage(appActivity.f1537d + hVar.J(e.a("Xg8E")).get(0).b(e.a("RBAA")));
                appInfo.setSize(hVar.J(e.a("RBICCg==")).get(0).L());
                arrayList.add(appInfo);
            }
            return;
        }
        throw null;
    }

    public static void n(AppActivity appActivity, String str) {
        if (appActivity != null) {
            h H = b.u(str).H(e.a("UA0="));
            if (H == null) {
                return;
            }
            H.J(e.a("Vg==")).get(0).b(e.a("XxAGAg=="));
            e.a("Uw0UCgccWFdJ");
            f.a();
            return;
        }
        throw null;
    }

    public static void o(Context context, String str) {
        Intent intent = new Intent(context, AppActivity.class);
        f.b.a.a.a.v("QhAP", intent, str, context, intent);
    }

    public static void p(Context context, String str, boolean z) {
        Intent intent = new Intent(context, AppActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("RAoMEyEGVEMxFFsQCw8R"), z);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
        this.f1536c = intent.getBooleanExtra(e.a("RAoMEyEGVEMxFFsQCw8R"), false);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_app;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        WebView webView = this.webView;
        String str = this.b;
        this.f1537d = str.substring(0, str.lastIndexOf(e.a("GA==")));
        webView.getSettings().setJavaScriptEnabled(true);
        webView.addJavascriptInterface(new a(), e.a("XQMVBTQcW1k="));
        webView.setWebViewClient(new f.e.a.j.c0.h(this));
        webView.loadUrl(str);
        this.tvJump.setVisibility(this.f1536c ? 0 : 8);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
        } else {
            super.onBackPressed();
        }
    }
}
