package com.comeback.data.ui.jhlf;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.appcompat.app.AlertDialog;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import f.e.a.e;
import f.e.a.j.w.c;
import f.e.a.j.w.d;
/* loaded from: classes.dex */
public class FengliuActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public FengliuActivity f1325c;

    /* renamed from: d  reason: collision with root package name */
    public View f1326d;

    /* renamed from: e  reason: collision with root package name */
    public View f1327e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ FengliuActivity f1328c;

        public a(FengliuActivity_ViewBinding fengliuActivity_ViewBinding, FengliuActivity fengliuActivity) {
            this.f1328c = fengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            FengliuActivity fengliuActivity = this.f1328c;
            fengliuActivity.floatingActionButton.hide();
            View inflate = View.inflate(fengliuActivity, R.layout.dialog_search, null);
            AlertDialog create = new AlertDialog.Builder(fengliuActivity).setView(inflate).setCancelable(true).create();
            EditText editText = (EditText) inflate.findViewById(R.id.et_message);
            if (!TextUtils.isEmpty(null)) {
                editText.setText((CharSequence) null);
            }
            ((TextView) inflate.findViewById(R.id.tv_bt1)).setOnClickListener(new c(fengliuActivity, create, editText));
            ((TextView) inflate.findViewById(R.id.tv_bt2)).setOnClickListener(new d(fengliuActivity, create, editText));
            create.show();
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ FengliuActivity f1329c;

        public b(FengliuActivity_ViewBinding fengliuActivity_ViewBinding, FengliuActivity fengliuActivity) {
            this.f1329c = fengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1329c.onViewClicked(view);
        }
    }

    @UiThread
    public FengliuActivity_ViewBinding(FengliuActivity fengliuActivity, View view) {
        super(fengliuActivity, view);
        this.f1325c = fengliuActivity;
        fengliuActivity.tvArea = (TextView) d.c.c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        View b2 = d.c.c.b(view, R.id.fab, e.a("UQsGCA9THlUfCVUTEQQEKlQWCgsFMUxHBwlaQFgLDQ8XDwYQAxxdE1QVUQYKCQtM"));
        fengliuActivity.floatingActionButton = (FloatingActionButton) d.c.c.a(b2, R.id.fab, e.a("UQsGCA9THlUfCVUTEQQEKlQWCgsFMUxHBwlaQA=="), FloatingActionButton.class);
        this.f1326d = b2;
        b2.setOnClickListener(new a(this, fengliuActivity));
        View b3 = d.c.c.b(view, R.id.ll_area, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1327e = b3;
        b3.setOnClickListener(new b(this, fengliuActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        FengliuActivity fengliuActivity = this.f1325c;
        if (fengliuActivity != null) {
            this.f1325c = null;
            fengliuActivity.tvArea = null;
            fengliuActivity.floatingActionButton = null;
            this.f1326d.setOnClickListener(null);
            this.f1326d = null;
            this.f1327e.setOnClickListener(null);
            this.f1327e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
