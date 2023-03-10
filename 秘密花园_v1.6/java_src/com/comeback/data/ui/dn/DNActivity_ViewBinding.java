package com.comeback.data.ui.dn;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
/* loaded from: classes.dex */
public class DNActivity_ViewBinding implements Unbinder {
    public DNActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f537c;

    /* renamed from: d  reason: collision with root package name */
    public View f538d;

    /* renamed from: e  reason: collision with root package name */
    public View f539e;

    /* renamed from: f  reason: collision with root package name */
    public View f540f;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DNActivity f541c;

        public a(DNActivity_ViewBinding dNActivity_ViewBinding, DNActivity dNActivity) {
            this.f541c = dNActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f541c.mViewpager.setCurrentItem(1, false);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DNActivity f542c;

        public b(DNActivity_ViewBinding dNActivity_ViewBinding, DNActivity dNActivity) {
            this.f542c = dNActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f542c.mViewpager.setCurrentItem(0, false);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DNActivity f543c;

        public c(DNActivity_ViewBinding dNActivity_ViewBinding, DNActivity dNActivity) {
            this.f543c = dNActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            if (this.f543c == null) {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DNActivity f544c;

        public d(DNActivity_ViewBinding dNActivity_ViewBinding, DNActivity dNActivity) {
            this.f544c = dNActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            DNActivity dNActivity = this.f544c;
            if (dNActivity == null) {
                throw null;
            }
            SearchActivity.n(dNActivity);
        }
    }

    @UiThread
    public DNActivity_ViewBinding(DNActivity dNActivity, View view) {
        this.b = dNActivity;
        View b2 = d.c.c.b(view, R.id.tv_new, e.a("UQsGCA9THl4nEHoCD01DClkGQwkOB1FcF0YTDxceRA=="));
        dNActivity.mTvNew = (TextView) d.c.c.a(b2, R.id.tv_new, e.a("UQsGCA9THl4nEHoCD00="), TextView.class);
        this.f537c = b2;
        b2.setOnClickListener(new a(this, dNActivity));
        View b3 = d.c.c.b(view, R.id.tv_recommend, e.a("UQsGCA9THl4nEGYCGwUOBlIMB0NLEldXUwtRExAFB0sQEAYHBB5UVh0CEw=="));
        dNActivity.mTvRecommend = (TextView) d.c.c.a(b3, R.id.tv_recommend, e.a("UQsGCA9THl4nEGYCGwUOBlIMB0M="), TextView.class);
        this.f538d = b3;
        b3.setOnClickListener(new b(this, dNActivity));
        dNActivity.mViewpager = (CustomViewPager) d.c.c.c(view, R.id.viewpager, e.a("UQsGCA9THl4lD1EQCAsEDkVF"), CustomViewPager.class);
        View b4 = d.c.c.b(view, R.id.iv_collect, e.a("WgcXDAQXGRQQCVgLHQkXTA=="));
        this.f539e = b4;
        b4.setOnClickListener(new c(this, dNActivity));
        View b5 = d.c.c.b(view, R.id.iv_search, e.a("WgcXDAQXGRQAA1UVGwJE"));
        this.f540f = b5;
        b5.setOnClickListener(new d(this, dNActivity));
        Context context = view.getContext();
        dNActivity.colorThird = ContextCompat.getColor(context, R.color.grey_300);
        dNActivity.colorWhite = ContextCompat.getColor(context, R.color.white);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        DNActivity dNActivity = this.b;
        if (dNActivity != null) {
            this.b = null;
            dNActivity.mTvNew = null;
            dNActivity.mTvRecommend = null;
            dNActivity.mViewpager = null;
            this.f537c.setOnClickListener(null);
            this.f537c = null;
            this.f538d.setOnClickListener(null);
            this.f538d = null;
            this.f539e.setOnClickListener(null);
            this.f539e = null;
            this.f540f.setOnClickListener(null);
            this.f540f = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
