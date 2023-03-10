package com.comeback.data.ui.fengliu;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class Fengliu2Activity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public Fengliu2Activity f647c;

    /* renamed from: d  reason: collision with root package name */
    public View f648d;

    /* renamed from: e  reason: collision with root package name */
    public View f649e;

    /* renamed from: f  reason: collision with root package name */
    public View f650f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Fengliu2Activity f651c;

        public a(Fengliu2Activity_ViewBinding fengliu2Activity_ViewBinding, Fengliu2Activity fengliu2Activity) {
            this.f651c = fengliu2Activity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f651c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Fengliu2Activity f652c;

        public b(Fengliu2Activity_ViewBinding fengliu2Activity_ViewBinding, Fengliu2Activity fengliu2Activity) {
            this.f652c = fengliu2Activity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f652c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Fengliu2Activity f653c;

        public c(Fengliu2Activity_ViewBinding fengliu2Activity_ViewBinding, Fengliu2Activity fengliu2Activity) {
            this.f653c = fengliu2Activity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f653c.onViewClicked(view);
        }
    }

    @UiThread
    public Fengliu2Activity_ViewBinding(Fengliu2Activity fengliu2Activity, View view) {
        super(fengliu2Activity, view);
        this.f647c = fengliu2Activity;
        fengliu2Activity.tvTitle = (TextView) d.c.c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        fengliu2Activity.tvArea = (TextView) d.c.c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        fengliu2Activity.tvOrder = (TextView) d.c.c.c(view, R.id.tv_order, e.a("UQsGCA9THkcFKUYDHRhE"), TextView.class);
        fengliu2Activity.tvService = (TextView) d.c.c.c(view, R.id.tv_service, e.a("UQsGCA9THkcFNVEVDgMADhA="), TextView.class);
        View b2 = d.c.c.b(view, R.id.ll_service, e.a("UQsGCA9THl8fNVEVDgMADhBCAgoPU1RWBw5bA1hNDAVhCwYTKB9QUBgDUEA="));
        fengliu2Activity.llService = (LinearLayout) d.c.c.a(b2, R.id.ll_service, e.a("UQsGCA9THl8fNVEVDgMADhA="), LinearLayout.class);
        this.f648d = b2;
        b2.setOnClickListener(new a(this, fengliu2Activity));
        View b3 = d.c.c.b(view, R.id.ll_area, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f649e = b3;
        b3.setOnClickListener(new b(this, fengliu2Activity));
        View b4 = d.c.c.b(view, R.id.ll_order, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f650f = b4;
        b4.setOnClickListener(new c(this, fengliu2Activity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        Fengliu2Activity fengliu2Activity = this.f647c;
        if (fengliu2Activity != null) {
            this.f647c = null;
            fengliu2Activity.tvArea = null;
            fengliu2Activity.tvOrder = null;
            fengliu2Activity.tvService = null;
            fengliu2Activity.llService = null;
            this.f648d.setOnClickListener(null);
            this.f648d = null;
            this.f649e.setOnClickListener(null);
            this.f649e = null;
            this.f650f.setOnClickListener(null);
            this.f650f = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
