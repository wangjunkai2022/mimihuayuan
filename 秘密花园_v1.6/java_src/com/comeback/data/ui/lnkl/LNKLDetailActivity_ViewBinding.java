package com.comeback.data.ui.lnkl;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class LNKLDetailActivity_ViewBinding implements Unbinder {
    public LNKLDetailActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1464c;

    /* renamed from: d  reason: collision with root package name */
    public View f1465d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ LNKLDetailActivity f1466c;

        public a(LNKLDetailActivity_ViewBinding lNKLDetailActivity_ViewBinding, LNKLDetailActivity lNKLDetailActivity) {
            this.f1466c = lNKLDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1466c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ LNKLDetailActivity f1467c;

        public b(LNKLDetailActivity_ViewBinding lNKLDetailActivity_ViewBinding, LNKLDetailActivity lNKLDetailActivity) {
            this.f1467c = lNKLDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1467c.onViewClicked(view);
        }
    }

    @UiThread
    public LNKLDetailActivity_ViewBinding(LNKLDetailActivity lNKLDetailActivity, View view) {
        this.b = lNKLDetailActivity;
        lNKLDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        lNKLDetailActivity.tvLink = (TextView) c.c(view, R.id.tv_link, e.a("UQsGCA9THkcFKl0JE00="), TextView.class);
        lNKLDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        View b2 = c.b(view, R.id.tv_copy, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1464c = b2;
        b2.setOnClickListener(new a(this, lNKLDetailActivity));
        View b3 = c.b(view, R.id.tv_down, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1465d = b3;
        b3.setOnClickListener(new b(this, lNKLDetailActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        LNKLDetailActivity lNKLDetailActivity = this.b;
        if (lNKLDetailActivity != null) {
            this.b = null;
            lNKLDetailActivity.tvName = null;
            lNKLDetailActivity.tvLink = null;
            lNKLDetailActivity.rvList = null;
            this.f1464c.setOnClickListener(null);
            this.f1464c = null;
            this.f1465d.setOnClickListener(null);
            this.f1465d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
