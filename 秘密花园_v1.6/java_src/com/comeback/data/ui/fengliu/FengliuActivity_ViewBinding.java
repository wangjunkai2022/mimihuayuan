package com.comeback.data.ui.fengliu;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class FengliuActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public FengliuActivity f664c;

    /* renamed from: d  reason: collision with root package name */
    public View f665d;

    /* renamed from: e  reason: collision with root package name */
    public View f666e;

    /* renamed from: f  reason: collision with root package name */
    public View f667f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ FengliuActivity f668c;

        public a(FengliuActivity_ViewBinding fengliuActivity_ViewBinding, FengliuActivity fengliuActivity) {
            this.f668c = fengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f668c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ FengliuActivity f669c;

        public b(FengliuActivity_ViewBinding fengliuActivity_ViewBinding, FengliuActivity fengliuActivity) {
            this.f669c = fengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f669c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ FengliuActivity f670c;

        public c(FengliuActivity_ViewBinding fengliuActivity_ViewBinding, FengliuActivity fengliuActivity) {
            this.f670c = fengliuActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f670c.onViewClicked(view);
        }
    }

    @UiThread
    public FengliuActivity_ViewBinding(FengliuActivity fengliuActivity, View view) {
        super(fengliuActivity, view);
        this.f664c = fengliuActivity;
        fengliuActivity.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        fengliuActivity.tvArea = (TextView) d.c.c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        fengliuActivity.tvOrder = (TextView) d.c.c.c(view, R.id.tv_order, e.a("UQsGCA9THkcFKUYDHRhE"), TextView.class);
        fengliuActivity.tvService = (TextView) d.c.c.c(view, R.id.tv_service, e.a("UQsGCA9THkcFNVEVDgMADhA="), TextView.class);
        View b2 = d.c.c.b(view, R.id.ll_area, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f665d = b2;
        b2.setOnClickListener(new a(this, fengliuActivity));
        View b3 = d.c.c.b(view, R.id.ll_order, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f666e = b3;
        b3.setOnClickListener(new b(this, fengliuActivity));
        View b4 = d.c.c.b(view, R.id.ll_service, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f667f = b4;
        b4.setOnClickListener(new c(this, fengliuActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        FengliuActivity fengliuActivity = this.f664c;
        if (fengliuActivity != null) {
            this.f664c = null;
            fengliuActivity.tvArea = null;
            fengliuActivity.tvOrder = null;
            fengliuActivity.tvService = null;
            this.f665d.setOnClickListener(null);
            this.f665d = null;
            this.f666e.setOnClickListener(null);
            this.f666e = null;
            this.f667f.setOnClickListener(null);
            this.f667f = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
