package com.comeback.data.ui.main;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.main.bean.AD;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.b0.j;
import f.e.a.j.b0.k;
import i.i0;
import l.d;

/* loaded from: classes.dex */
public class LauncherActivity extends BaseActivity {

    /* renamed from: k  reason: collision with root package name */
    public static String[] f1471k = {e.a("VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sIy57KT01MD92NiY=")};
    public boolean b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f1472c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1473d;
    @BindView
    public FrameLayout flAd;
    @BindView
    public FrameLayout flProgress;

    /* renamed from: i  reason: collision with root package name */
    public d<i0> f1478i;
    @BindView
    public ImageView ivCover;
    @BindView
    public LinearLayout llLogo;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvName;
    @BindView
    public TextView tvName1;

    /* renamed from: e  reason: collision with root package name */
    public int f1474e = 7;

    /* renamed from: f  reason: collision with root package name */
    public Runnable f1475f = new a();

    /* renamed from: g  reason: collision with root package name */
    public int f1476g = 6;

    /* renamed from: h  reason: collision with root package name */
    public Runnable f1477h = new b();

    /* renamed from: j  reason: collision with root package name */
    public AD f1479j = null;

    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LauncherActivity launcherActivity = LauncherActivity.this;
            int i2 = launcherActivity.f1474e - 1;
            launcherActivity.f1474e = i2;
            if (i2 > 0) {
                launcherActivity.tvName.postDelayed(launcherActivity.f1475f, 250L);
            } else if (i2 == 0) {
                launcherActivity.tvName.postDelayed(launcherActivity.f1475f, 500L);
            } else {
                launcherActivity.f1473d = true;
                LauncherActivity.l(launcherActivity);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            LauncherActivity launcherActivity = LauncherActivity.this;
            int i2 = launcherActivity.f1476g;
            int i3 = i2 - 1;
            launcherActivity.f1476g = i3;
            if (i2 > 2) {
                launcherActivity.tvCount.setText(String.valueOf(i3));
                LauncherActivity launcherActivity2 = LauncherActivity.this;
                launcherActivity2.tvCount.postDelayed(launcherActivity2.f1475f, 1200L);
                return;
            }
            launcherActivity.f1476g = i3 - 1;
            if (i3 > 0) {
                launcherActivity.tvCount.setText(e.a("39XQjNT0"));
                LauncherActivity.this.tvCount.setClickable(true);
                LauncherActivity launcherActivity3 = LauncherActivity.this;
                launcherActivity3.tvCount.postDelayed(launcherActivity3.f1475f, 1200L);
                return;
            }
            launcherActivity.o();
        }
    }

    /* loaded from: classes.dex */
    public class c implements DialogInterface.OnClickListener {
        public c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i2) {
            LauncherActivity.this.p();
            dialogInterface.dismiss();
        }
    }

    public static void l(LauncherActivity launcherActivity) {
        if (launcherActivity.f1473d) {
            if (!launcherActivity.f1472c) {
                launcherActivity.llLogo.setVisibility(8);
                launcherActivity.flProgress.setVisibility(0);
            } else if (App.f104e != null && launcherActivity.f1479j != null) {
                launcherActivity.flAd.setVisibility(0);
                launcherActivity.flProgress.setVisibility(8);
                h.u0(launcherActivity.f1479j.getImage(), launcherActivity.ivCover);
                launcherActivity.tvCount.setClickable(false);
                launcherActivity.tvCount.postDelayed(launcherActivity.f1477h, 150L);
            } else {
                launcherActivity.o();
            }
        }
    }

    public static void m(LauncherActivity launcherActivity) {
        if (launcherActivity != null) {
            d<i0> c2 = f.e.a.j.h0.c.a().c(e.a("XxYXFBhJFhwAAURWVhwWB0MQDAYBFlpHAEhXCBVFDgZfG1tcU0sWUBBIXhcf"));
            launcherActivity.f1478i = c2;
            c2.X(new k(launcherActivity));
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        if (!h.m0()) {
            this.tvName.setText(e.a("0MX7gcT1"));
            this.tvName1.setText(e.a("3+jSgfDe"));
        }
        i();
        d<i0> c2 = f.e.a.j.h0.c.a().c(e.a("XxYXFBhJFhweD1kOEBNNBEQRTgcFXkpbEghTDxkDTQpbCxoRBRBKHRAJWUgbCU0BRwU="));
        this.f1478i = c2;
        c2.X(new j(this));
        p();
    }

    public final void n() {
        f.e.a.k.j b2 = f.e.a.k.j.b();
        if (b2.a.getLong(e.a("UQsRFx8sTVoeAw=="), -1L) == -1) {
            f.e.a.k.j b3 = f.e.a.k.j.b();
            String a2 = e.a("UQsRFx8sTVoeAw==");
            long currentTimeMillis = System.currentTimeMillis();
            if (b3 != null) {
                b3.a.edit().putLong(a2, currentTimeMillis).apply();
            } else {
                throw null;
            }
        }
        this.tvName.postDelayed(this.f1475f, 250L);
    }

    public final void o() {
        if (h.m0()) {
            MainActivity.u(this);
        } else {
            SecretGardenActivity.v(this);
        }
        finish();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1478i;
        if (dVar != null) {
            dVar.cancel();
        }
        this.tvName.removeCallbacks(this.f1475f);
        this.tvCount.removeCallbacks(this.f1477h);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 1) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            e();
        } else {
            new AlertDialog.Builder(this).setTitle(e.a("0e3zg8/J")).setMessage(e.a("0erygNDf3Yv+goj9ntnngqvQhebDlKO3l9mVgfnFjNe7iszTjeeH1szl09zhjtnj0t3mjM3y3qn3gKnkkfPzhIvuh9/Ol4eMl9y6gMPzh9aXhtjIjsuf1e7D0vzMj8bW0PjngNbg0Jn/hbTl")).setNegativeButton(e.a("0sfeg/H3"), new c()).show();
        }
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.b) {
            o();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id != R.id.iv_cover) {
            if (id != R.id.tv_count) {
                return;
            }
            o();
            return;
        }
        this.tvCount.removeCallbacks(this.f1475f);
        try {
            startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(this.f1479j.getTargetUrl())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.b = true;
    }

    public void p() {
        try {
            if (ContextCompat.checkSelfPermission(this, e.a("VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sIy57KT01MD92NiY=")) != 0) {
                ActivityCompat.requestPermissions(this, f1471k, 1);
            } else {
                n();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
