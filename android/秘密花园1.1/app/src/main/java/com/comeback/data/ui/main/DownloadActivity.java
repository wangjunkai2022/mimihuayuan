package com.comeback.data.ui.main;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.App;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.main.DownloadActivity;
import com.comeback.data.ui.main.adapter.DownloadAdapter;
import com.comeback.data.ui.main.bean.VideoCacheBean;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.h.h.c;
import f.e.a.j.b0.b;
import f.e.a.k.g;
import g.a.g0;
import g.a.j0;
import g.a.x;
import io.realm.RealmQuery;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DownloadActivity extends BaseActivity implements DownloadAdapter.a, c {

    /* renamed from: f  reason: collision with root package name */
    public static String[] f1465f = {e.a("VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sNj5gIiokIidoMTcrOTJ+dg=="), e.a("VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY=")};
    public DownloadAdapter b;

    /* renamed from: c  reason: collision with root package name */
    public String f1466c;

    /* renamed from: d  reason: collision with root package name */
    public String f1467d;

    /* renamed from: e  reason: collision with root package name */
    public long f1468e = 0;
    @BindView
    public ProgressBar progress;
    @BindView
    public RelativeLayout rlDown;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvHint;
    @BindView
    public TextView tvName;
    @BindView
    public TextView tvSpeed;

    public static void q(Context context) {
        a.u(context, DownloadActivity.class);
    }

    public static void r(Context context, String str, String str2) {
        if (str.contains(e.a("DQ=="))) {
            str = str.replace(e.a("DQ=="), e.a("aA=="));
        }
        if (str.contains(e.a("GA=="))) {
            str = str.replace(e.a("GA=="), e.a("aA=="));
        }
        Intent intent = new Intent(context, DownloadActivity.class);
        intent.putExtra(e.a("WQMOAQ=="), str);
        intent.putExtra(e.a("QhAP"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1466c = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1467d = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_download;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        try {
            if (ContextCompat.checkSelfPermission(this, e.a("VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY=")) != 0) {
                ActivityCompat.requestPermissions(this, f1465f, 1);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.rvList.setLayoutManager(new LinearLayoutManager(this));
        this.rvList.addItemDecoration(new DividerItemDecoration(this, 1));
        DownloadAdapter downloadAdapter = new DownloadAdapter(this, this);
        this.b = downloadAdapter;
        this.rvList.setAdapter(downloadAdapter);
        p();
        f.e.a.h.a aVar = App.b.a;
        if (aVar != null) {
            this.rlDown.setVisibility(0);
            TextView textView = this.tvName;
            textView.setText(e.a("0c/Agffb3Yv4jonal9b5") + aVar.f3792e.getName());
            aVar.a = this;
        }
        if (TextUtils.isEmpty(this.f1467d) && TextUtils.isEmpty(this.f1466c)) {
            return;
        }
        AlertDialog.Builder title = new AlertDialog.Builder(this).setTitle(e.a("0e3zg8/J"));
        title.setMessage(e.a("0MnogebA3Yv4jona") + this.f1466c).setNeutralButton(e.a("0vLF"), b.a).setNegativeButton(e.a("0MnogebA3Yv4jona"), new DialogInterface.OnClickListener() { // from class: f.e.a.j.b0.c
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                DownloadActivity.this.n(dialogInterface, i2);
            }
        }).create().show();
    }

    public final void l() {
        if (App.b.a != null) {
            h.n1(e.a("383Ug8b63I32g4n0nePuj4zZhu7Klpe/le6kgv7nhte3h/PLjeWJ18jd0e3Z"));
            return;
        }
        x P = x.P();
        P.f();
        RealmQuery realmQuery = new RealmQuery(P, VideoCacheBean.class);
        realmQuery.a(e.a("QhAP"), this.f1467d);
        if (((VideoCacheBean) realmQuery.c()) != null) {
            h.n1(this.f1466c + e.a("0tXRg9D83K/bgonHn/Dnj4zZhu7KlrGkm8ecg8DH"));
            return;
        }
        VideoCacheBean videoCacheBean = new VideoCacheBean(this.f1466c, this.f1467d);
        TextView textView = this.tvName;
        textView.setText(e.a("0c/Agffb3Yv4jonal9b5") + videoCacheBean.getName());
        f.e.a.h.a aVar = new f.e.a.h.a(videoCacheBean);
        aVar.b(this);
        App.b.a = aVar;
        g.d(videoCacheBean.getRealm()).a(videoCacheBean);
        p();
    }

    public /* synthetic */ void n(DialogInterface dialogInterface, int i2) {
        l();
    }

    public void o(Throwable th) {
        TextView textView = this.tvSpeed;
        textView.setText(e.a("09rojNbO3LTJj6D+") + th);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        f.e.a.h.a aVar = App.b.a;
        if (aVar != null) {
            aVar.a = null;
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        if (i2 != 1) {
            return;
        }
        if (iArr.length <= 0 || iArr[0] != 0) {
            h.n1(e.a("09rug9Dq3Yv4jonanvfggq7yh9nLl4G4m9uJg8DAitOWh+fbhM+m"));
        }
    }

    public final void p() {
        j0<? extends g0> e2 = g.d(x.P()).e(VideoCacheBean.class);
        this.tvHint.setVisibility(e2.size() == 0 ? 0 : 8);
        this.b.c();
        DownloadAdapter downloadAdapter = this.b;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < e2.size(); i2++) {
            arrayList.add((VideoCacheBean) e2.get(i2));
        }
        downloadAdapter.b(arrayList, downloadAdapter.b.size());
    }
}
