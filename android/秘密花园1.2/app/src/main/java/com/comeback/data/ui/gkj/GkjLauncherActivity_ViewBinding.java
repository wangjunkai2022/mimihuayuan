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
    public View f951c;

    /* renamed from: d  reason: collision with root package name */
    public View f952d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f953c;

        public a(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f953c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f953c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f954c;

        public b(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f954c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f954c.onClick(view);
        }
    }

    @UiThread
    public GkjLauncherActivity_ViewBinding(GkjLauncherActivity gkjLauncherActivity, View view) {
        this.b = gkjLauncherActivity;
        View b2 = c.b(view, R.id.ll_node1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f951c = b2;
        b2.setOnClickListener(new a(this, gkjLauncherActivity));
        View b3 = c.b(view, R.id.ll_node2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f952d = b3;
        b3.setOnClickListener(new b(this, gkjLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f951c.setOnClickListener(null);
            this.f951c = null;
            this.f952d.setOnClickListener(null);
            this.f952d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
