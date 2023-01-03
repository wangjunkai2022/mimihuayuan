package com.comeback.data.ui.main;

import android.content.Context;
import android.content.Intent;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;

/* loaded from: classes.dex */
public class AddCollectActivity extends BaseActivity {
    public String b;
    @BindView
    public EditText etName;
    @BindView
    public TextView tvUrl;

    public static void m(Context context, String str) {
        Intent intent = new Intent(context, AddCollectActivity.class);
        a.v("QhAP", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_main_add_colect;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        TextView textView = this.tvUrl;
        textView.setText(e.a("38Xljcni3K/Dg6nnl9b5") + this.b);
        this.etName.requestFocus();
    }

    public /* synthetic */ void l() {
        h.n1(e.a("0fbVjPz837vjg774"));
        finish();
    }
}
