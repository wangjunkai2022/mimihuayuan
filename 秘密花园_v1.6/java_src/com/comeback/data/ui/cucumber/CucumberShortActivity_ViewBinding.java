package com.comeback.data.ui.cucumber;

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
public class CucumberShortActivity_ViewBinding implements Unbinder {
    public CucumberShortActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f416c;

    /* renamed from: d  reason: collision with root package name */
    public View f417d;

    /* renamed from: e  reason: collision with root package name */
    public View f418e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CucumberShortActivity f419c;

        public a(CucumberShortActivity_ViewBinding cucumberShortActivity_ViewBinding, CucumberShortActivity cucumberShortActivity) {
            this.f419c = cucumberShortActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f419c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CucumberShortActivity f420c;

        public b(CucumberShortActivity_ViewBinding cucumberShortActivity_ViewBinding, CucumberShortActivity cucumberShortActivity) {
            this.f420c = cucumberShortActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f420c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ CucumberShortActivity f421c;

        public c(CucumberShortActivity_ViewBinding cucumberShortActivity_ViewBinding, CucumberShortActivity cucumberShortActivity) {
            this.f421c = cucumberShortActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f421c.onClick(view);
        }
    }

    @UiThread
    public CucumberShortActivity_ViewBinding(CucumberShortActivity cucumberShortActivity, View view) {
        this.b = cucumberShortActivity;
        View b2 = d.c.c.b(view, R.id.tv_choice, e.a("UQsGCA9THl4nEHcPFwMADhBCAgoPU1RWBw5bA1hNDAV0DgoHAFQ="));
        cucumberShortActivity.mTvChoice = (TextView) d.c.c.a(b2, R.id.tv_choice, e.a("UQsGCA9THl4nEHcPFwMADhA="), TextView.class);
        this.f416c = b2;
        b2.setOnClickListener(new a(this, cucumberShortActivity));
        View b3 = d.c.c.b(view, R.id.tv_recommend, e.a("UQsGCA9THl4nEGYCGwUOBlIMB0NLEldXUwtRExAFB0sQDQ0nBxpaWFQ="));
        cucumberShortActivity.mTvRecommend = (TextView) d.c.c.a(b3, R.id.tv_recommend, e.a("UQsGCA9THl4nEGYCGwUOBlIMB0M="), TextView.class);
        this.f417d = b3;
        b3.setOnClickListener(new b(this, cucumberShortActivity));
        View b4 = d.c.c.b(view, R.id.tv_girl, e.a("UQsGCA9THl4nEHMOCgZES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
        cucumberShortActivity.mTvGirl = (TextView) d.c.c.a(b4, R.id.tv_girl, e.a("UQsGCA9THl4nEHMOCgZE"), TextView.class);
        this.f418e = b4;
        b4.setOnClickListener(new c(this, cucumberShortActivity));
        cucumberShortActivity.mViewpager = (CustomViewPager) d.c.c.c(view, R.id.viewpager, e.a("UQsGCA9THl4lD1EQCAsEDkVF"), CustomViewPager.class);
        Context context = view.getContext();
        cucumberShortActivity.colorThird = ContextCompat.getColor(context, R.color.basic_third_text);
        cucumberShortActivity.colorWhite = ContextCompat.getColor(context, R.color.white);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CucumberShortActivity cucumberShortActivity = this.b;
        if (cucumberShortActivity != null) {
            this.b = null;
            cucumberShortActivity.mTvChoice = null;
            cucumberShortActivity.mTvRecommend = null;
            cucumberShortActivity.mTvGirl = null;
            cucumberShortActivity.mViewpager = null;
            this.f416c.setOnClickListener(null);
            this.f416c = null;
            this.f417d.setOnClickListener(null);
            this.f417d = null;
            this.f418e.setOnClickListener(null);
            this.f418e = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
