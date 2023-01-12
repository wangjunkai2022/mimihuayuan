package com.comeback.data.ui.lnkl;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.PicAdapter;
import com.comeback.data.ui.lnkl.bean.VideoInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i0.c;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class LNKLDetailActivity extends BaseActivity {
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public String f1457c;

    /* renamed from: d  reason: collision with root package name */
    public String f1458d;

    /* renamed from: e  reason: collision with root package name */
    public d<i0> f1459e;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvLink;
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
                    VideoInfo W0 = h.W0(g0Var.b.H());
                    LNKLDetailActivity.this.f1458d = W0.getTorrentUrl();
                    TextView textView = LNKLDetailActivity.this.tvLink;
                    textView.setText(e.a("0MXugcbj0KDNgLrCl9b5") + LNKLDetailActivity.this.f1458d);
                    PicAdapter picAdapter = new PicAdapter(LNKLDetailActivity.this);
                    LNKLDetailActivity.this.rvList.setLayoutManager(new LinearLayoutManager(LNKLDetailActivity.this));
                    LNKLDetailActivity.this.rvList.setAdapter(picAdapter);
                    picAdapter.a(W0.getImgs());
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
            h.n1(th.getMessage());
        }
    }

    public static void l(Context context, String str, String str2) {
        Intent intent = new Intent(context, LNKLDetailActivity.class);
        intent.putExtra(e.a("QhAP"), str);
        intent.putExtra(e.a("WQMOAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("WQMOAQ=="));
        this.f1457c = intent.getStringExtra(e.a("QhAP"));
        d<i0> c2 = c.a().c(this.f1457c);
        this.f1459e = c2;
        c2.X(new a());
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lnkl_detail;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.tvName.setText(this.b);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1459e;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @OnClick
    public void onViewClicked(View view) {
        if (TextUtils.isEmpty(this.f1458d)) {
            h.n1(e.a("383Ug8b63I32joHjntDzg5DBhfr7lbGjluyr"));
            return;
        }
        int id = view.getId();
        if (id == R.id.tv_copy) {
            ((ClipboardManager) getSystemService(e.a("VA4KFAkcWEEX"))).setPrimaryClip(ClipData.newPlainText(e.a("ewMBAQc="), this.f1458d));
            h.n1(e.a("0sbugePF37vjg774"));
        } else if (id != R.id.tv_down) {
        } else {
            try {
                Intent intent = new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(this.f1458d));
                intent.addCategory(e.a("VgwHFgQaXR0aCEACFh5NCFYWBgMEAUAdNyNyJi0mNw=="));
                startActivity(intent);
            } catch (Exception unused) {
                h.n1(e.a("383Uge773J36jpfikNXmgqzV"));
            }
        }
    }
}
