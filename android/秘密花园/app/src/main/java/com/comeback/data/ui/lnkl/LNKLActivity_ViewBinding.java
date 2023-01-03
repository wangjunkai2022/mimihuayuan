package com.comeback.data.ui.lnkl;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LNKLActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public LNKLActivity f1379c;

    /* renamed from: d  reason: collision with root package name */
    public View f1380d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ LNKLActivity f1381c;

        public a(LNKLActivity_ViewBinding lNKLActivity_ViewBinding, LNKLActivity lNKLActivity) {
            this.f1381c = lNKLActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            LNKLActivity lNKLActivity = this.f1381c;
            if (lNKLActivity != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(e.a("0fXGgvff36TTgZTm"));
                arrayList.add(e.a("0c7Eg9X936TTgZTm"));
                arrayList.add(e.a("0NbDgNHJ36/6gZTm"));
                arrayList.add(e.a("0fXGgvff36/6gZTm"));
                arrayList.add(e.a("YTCL0e+Vg6M="));
                arrayList.add(e.a("3/H+ge763L3sga//"));
                arrayList.add(e.a("0f7qg8vyeGU="));
                arrayList.add(e.a("0OHOjfzb0ZT1j5b2"));
                arrayList.add(e.a("09rOgv303LnbgIjM"));
                arrayList.add(e.a("0uvEguj23I7Cgb3g"));
                arrayList.add(e.a("0vnegNHU0bTZgL/q"));
                f.e.a.j.z.a aVar = new f.e.a.j.z.a(lNKLActivity, arrayList);
                f.c.a.g.a aVar2 = new f.c.a.g.a(1);
                aVar2.t = lNKLActivity;
                aVar2.a = aVar;
                f.c.a.i.e eVar = new f.c.a.i.e(aVar2);
                eVar.f(arrayList, null, null);
                eVar.e();
                return;
            }
            throw null;
        }
    }

    @UiThread
    public LNKLActivity_ViewBinding(LNKLActivity lNKLActivity, View view) {
        super(lNKLActivity, view);
        this.f1379c = lNKLActivity;
        lNKLActivity.tvType = (TextView) c.c(view, R.id.tv_type, e.a("UQsGCA9THkcFMk0XHU0="), TextView.class);
        View b = c.b(view, R.id.ll_type, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1380d = b;
        b.setOnClickListener(new a(this, lNKLActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        LNKLActivity lNKLActivity = this.f1379c;
        if (lNKLActivity != null) {
            this.f1379c = null;
            lNKLActivity.tvType = null;
            this.f1380d.setOnClickListener(null);
            this.f1380d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
