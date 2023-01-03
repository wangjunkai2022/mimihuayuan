package com.comeback.data.ui.xiuxiu;

import android.content.Intent;
import android.widget.FrameLayout;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebSettings;
import com.tencent.smtt.sdk.WebView;
import f.e.a.e;
import i.i0;
import j.b;
import java.util.Iterator;
import k.a.e.h;
import k.a.g.c;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class InfoActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public d<i0> f2186c;
    @BindView
    public FrameLayout flLoad;
    @BindView
    public WebView webView;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public a() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6449e < 300) {
                try {
                    c I = b.u(g0Var.b.H()).I(e.a("Qz0F"));
                    h hVar = I.isEmpty() ? null : I.get(0);
                    if (hVar != null) {
                        Iterator<h> it = hVar.J(e.a("Xg8E")).iterator();
                        while (it.hasNext()) {
                            h next = it.next();
                            k.a.e.b d2 = next.d();
                            String a = e.a("RBAA");
                            d2.n(a, f.e.a.k.b.T + e.a("GA==") + next.b(e.a("TQ0MCQ0aVVY=")));
                        }
                        String r = hVar.r();
                        if (!InfoActivity.this.isDestroyed()) {
                            InfoActivity.this.flLoad.setVisibility(8);
                            InfoActivity.this.webView.loadDataWithBaseURL(null, r, e.a("QwcbEEQbTV4f"), e.a("QhYFSVM="), null);
                        }
                    }
                } catch (Exception unused) {
                    c.a.a.b.g.h.n1(e.a("0ffTgubd0ZTQgKr3nc7Sg4PH"));
                }
            } else {
                c.a.a.b.g.h.n1(e.a("3+zUgeTl3JfCjoDC"));
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            c.a.a.b.g.h.n1(e.a("3+zUgeTl3JfCjoDC"));
        }
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xhl_info;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        d<i0> j2 = f.e.a.j.h0.c.a().j(this.b, f.e.a.k.b.S);
        this.f2186c = j2;
        j2.X(new a());
        this.webView.setWebViewClient(new f.e.a.j.q0.a(this));
        WebSettings settings = this.webView.getSettings();
        settings.setSupportZoom(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f2186c;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
