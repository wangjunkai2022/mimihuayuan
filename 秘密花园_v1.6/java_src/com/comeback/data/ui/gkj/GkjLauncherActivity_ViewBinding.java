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
    public View f955c;

    /* renamed from: d  reason: collision with root package name */
    public View f956d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f957c;

        public a(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f957c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f957c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ GkjLauncherActivity f958c;

        public b(GkjLauncherActivity_ViewBinding gkjLauncherActivity_ViewBinding, GkjLauncherActivity gkjLauncherActivity) {
            this.f958c = gkjLauncherActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f958c.onClick(view);
        }
    }

    @UiThread
    public GkjLauncherActivity_ViewBinding(GkjLauncherActivity gkjLauncherActivity, View view) {
        this.b = gkjLauncherActivity;
        View b2 = c.b(view, R.id.ll_node1, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f955c = b2;
        b2.setOnClickListener(new a(this, gkjLauncherActivity));
        View b3 = c.b(view, R.id.ll_node2, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f956d = b3;
        b3.setOnClickListener(new b(this, gkjLauncherActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        if (this.b != null) {
            this.b = null;
            this.f955c.setOnClickListener(null);
            this.f955c = null;
            this.f956d.setOnClickListener(null);
            this.f956d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
