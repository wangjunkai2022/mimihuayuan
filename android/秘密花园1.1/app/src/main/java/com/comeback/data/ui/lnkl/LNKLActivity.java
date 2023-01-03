package com.comeback.data.ui.lnkl;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.lnkl.bean.Video;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.e.a.k.b;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class LNKLActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String[] f1376d = {e.a("GANMBR0EVBwaCFACAA=="), e.a("GANMCwYSTxwaCFACAA=="), e.a("GANMHQZcUF0XA0w="), e.a("GANMDhpcUF0XA0w="), e.a("GANMEhlcUF0XA0w="), e.a("GANMCAxcUF0XA0w="), e.a("GANMHhxcUF0XA0w="), e.a("GANMFgZcUF0XA0w="), e.a("GANMAAZcUF0XA0w="), e.a("GANMDhpcUF0XA0w="), e.a("GANMHhtcUF0XA0w=")};

    /* renamed from: e  reason: collision with root package name */
    public String f1377e = e.a("GANMBR0EVBwaCFACAA==");

    /* renamed from: f  reason: collision with root package name */
    public d<i0> f1378f;
    @BindView
    public TextView tvType;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            LNKLActivity.this.refreshLayout.m(true);
            LNKLActivity.this.refreshLayout.j(true);
            if (g0Var.a.f6449e < 300) {
                try {
                    ArrayList<Video> X0 = h.X0(g0Var.b.H());
                    if (this.a == 1) {
                        LNKLActivity.this.f114c.c();
                    }
                    LNKLActivity.this.f114c.a(X0);
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            h.n1(e.a("0ffTgubd3LnTjonanc7Sg4PH"));
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            LNKLActivity.this.refreshLayout.m(false);
            LNKLActivity.this.refreshLayout.j(true);
            h.n1(th.getMessage());
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lnkl;
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

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1378f;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        String str;
        if (i2 == 1) {
            str = f.b.a.a.a.n(new StringBuilder(), this.f1377e, "GQoXCQc=");
        } else {
            str = this.f1377e + e.a("aA==") + i2 + e.a("GQoXCQc=");
        }
        d<i0> c2 = c.a().c(f.b.a.a.a.l(new StringBuilder(), b.V, str));
        this.f1378f = c2;
        c2.X(new a(i2));
    }

    public /* synthetic */ void t(ArrayList arrayList, int i2, int i3, int i4, View view) {
        this.f1377e = this.f1376d[i2];
        this.tvType.setText((CharSequence) arrayList.get(i2));
        this.refreshLayout.h();
    }
}
