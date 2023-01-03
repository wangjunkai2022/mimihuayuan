package com.comeback.data.ui.fengliu;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class MyFengliuActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public MyFengliuActivity f685c;

    /* renamed from: d  reason: collision with root package name */
    public View f686d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MyFengliuActivity f687c;

        public a(MyFengliuActivity_ViewBinding myFengliuActivity_ViewBinding, MyFengliuActivity myFengliuActivity) {
            this.f687c = myFengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f687c.onViewClicked(view);
        }
    }

    @UiThread
    public MyFengliuActivity_ViewBinding(MyFengliuActivity myFengliuActivity, View view) {
        super(myFengliuActivity, view);
        this.f685c = myFengliuActivity;
        myFengliuActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        View b = c.b(view, R.id.ll_area, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f686d = b;
        b.setOnClickListener(new a(this, myFengliuActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        MyFengliuActivity myFengliuActivity = this.f685c;
        if (myFengliuActivity != null) {
            this.f685c = null;
            myFengliuActivity.tvArea = null;
            this.f686d.setOnClickListener(null);
            this.f686d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
