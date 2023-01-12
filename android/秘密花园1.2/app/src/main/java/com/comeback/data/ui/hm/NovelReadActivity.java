package com.comeback.data.ui.hm;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.Html;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.commom.PicBrowseActivity;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i0.c;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class NovelReadActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1121c;

    /* renamed from: d  reason: collision with root package name */
    public d<i0> f1122d;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public a() {
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6524e < 300) {
                try {
                    ArrayList<String> f2 = f.e.a.j.r.f.a.f(g0Var.b.H());
                    if (f2.size() != 0) {
                        String str = f2.get(0);
                        if (str.startsWith(e.a("XxYXFA==")) && str.contains(e.a("GQ8TVw=="))) {
                            PlayActivity.m(NovelReadActivity.this, str, NovelReadActivity.this.b);
                            NovelReadActivity.this.finish();
                        } else if (str.startsWith(e.a("XxYXFA==")) && f2.size() > 1) {
                            PicBrowseActivity.l(NovelReadActivity.this, f2);
                            NovelReadActivity.this.finish();
                        } else if (Build.VERSION.SDK_INT >= 24) {
                            NovelReadActivity.this.tvDetail.setText(Html.fromHtml(str, 0));
                        } else {
                            NovelReadActivity.this.tvDetail.setText(Html.fromHtml(str));
                        }
                    }
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
            th.getMessage();
            f.e.a.k.f.a();
        }
    }

    public static void l(Context context, String str, String str2) {
        Intent intent = new Intent(context, NovelReadActivity.class);
        intent.putExtra(e.a("QwsXCA4="), str);
        intent.putExtra(e.a("QhAP"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QwsXCA4="));
        this.f1121c = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_novel_read;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvName.setText(this.b);
        d<i0> c2 = c.a().c(this.f1121c);
        this.f1122d = c2;
        c2.X(new a());
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1122d;
        if (dVar != null) {
            dVar.cancel();
        }
    }
}
