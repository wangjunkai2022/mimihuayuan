package com.comeback.data.ui.gkj;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class GkjLauncherActivity_ViewBinding implements Unbinder {
    public GkjLauncherActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f878c;

    /* renamed from: d  reason: collision with root package name */
    public View f879d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f880c;

        public a(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f880c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f880c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f881c;

        public b(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f881c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f881c.onClick(view);
        }
    }

    @UiThread
    public GkjLauncherActivity_ViewBinding(GkjLauncherActivity gkjLauncherActivity, View view) {
        this.b = gkjLauncherActivity;
        View b2 = c.b(view, R.id.ll_node1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f878c = b2;
        b2.setOnClickListener(new a(this, gkjLauncherActivity));
        View b3 = c.b(view, R.id.ll_node2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f879d = b3;
        b3.setOnClickListener(new b(this, gkjLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f878c.setOnClickListener(null);
            this.f878c = null;
            this.f879d.setOnClickListener(null);
            this.f879d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
