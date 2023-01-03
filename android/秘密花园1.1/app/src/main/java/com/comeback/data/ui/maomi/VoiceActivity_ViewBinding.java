package com.comeback.data.ui.maomi;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import butterknife.Unbinder;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VoiceActivity_ViewBinding implements Unbinder {
    public VoiceActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1554c;

    /* renamed from: d  reason: collision with root package name */
    public View f1555d;

    /* renamed from: e  reason: collision with root package name */
    public View f1556e;

    /* renamed from: f  reason: collision with root package name */
    public View f1557f;

    /* renamed from: g  reason: collision with root package name */
    public View f1558g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoiceActivity f1559c;

        public a(VoiceActivity_ViewBinding voiceActivity_ViewBinding, VoiceActivity voiceActivity) {
            this.f1559c = voiceActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1559c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoiceActivity f1560c;

        public b(VoiceActivity_ViewBinding voiceActivity_ViewBinding, VoiceActivity voiceActivity) {
            this.f1560c = voiceActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1560c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoiceActivity f1561c;

        public c(VoiceActivity_ViewBinding voiceActivity_ViewBinding, VoiceActivity voiceActivity) {
            this.f1561c = voiceActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1561c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoiceActivity f1562c;

        public d(VoiceActivity_ViewBinding voiceActivity_ViewBinding, VoiceActivity voiceActivity) {
            this.f1562c = voiceActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1562c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class e extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoiceActivity f1563c;

        public e(VoiceActivity_ViewBinding voiceActivity_ViewBinding, VoiceActivity voiceActivity) {
            this.f1563c = voiceActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1563c.onViewClicked(view);
        }
    }

    @UiThread
    public VoiceActivity_ViewBinding(VoiceActivity voiceActivity, View view) {
        this.b = voiceActivity;
        View b2 = d.c.c.b(view, R.id.tv_type1, f.e.a.e.a("UQsGCA9THl4nEGAeCA9STBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        voiceActivity.mTvType1 = (TextView) d.c.c.a(b2, R.id.tv_type1, f.e.a.e.a("UQsGCA9THl4nEGAeCA9STA=="), TextView.class);
        this.f1554c = b2;
        b2.setOnClickListener(new a(this, voiceActivity));
        View b3 = d.c.c.b(view, R.id.tv_type2, f.e.a.e.a("UQsGCA9THl4nEGAeCA9RTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        voiceActivity.mTvType2 = (TextView) d.c.c.a(b3, R.id.tv_type2, f.e.a.e.a("UQsGCA9THl4nEGAeCA9RTA=="), TextView.class);
        this.f1555d = b3;
        b3.setOnClickListener(new b(this, voiceActivity));
        View b4 = d.c.c.b(view, R.id.tv_type3, f.e.a.e.a("UQsGCA9THl4nEGAeCA9QTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        voiceActivity.mTvType3 = (TextView) d.c.c.a(b4, R.id.tv_type3, f.e.a.e.a("UQsGCA9THl4nEGAeCA9QTA=="), TextView.class);
        this.f1556e = b4;
        b4.setOnClickListener(new c(this, voiceActivity));
        View b5 = d.c.c.b(view, R.id.tv_type4, f.e.a.e.a("UQsGCA9THl4nEGAeCA9XTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        voiceActivity.mTvType4 = (TextView) d.c.c.a(b5, R.id.tv_type4, f.e.a.e.a("UQsGCA9THl4nEGAeCA9XTA=="), TextView.class);
        this.f1557f = b5;
        b5.setOnClickListener(new d(this, voiceActivity));
        View b6 = d.c.c.b(view, R.id.tv_type5, f.e.a.e.a("UQsGCA9THl4nEGAeCA9WTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        voiceActivity.mTvType5 = (TextView) d.c.c.a(b6, R.id.tv_type5, f.e.a.e.a("UQsGCA9THl4nEGAeCA9WTA=="), TextView.class);
        this.f1558g = b6;
        b6.setOnClickListener(new e(this, voiceActivity));
        voiceActivity.mViewpager = (CustomViewPager) d.c.c.c(view, R.id.viewpager, f.e.a.e.a("UQsGCA9THl4lD1EQCAsEDkVF"), CustomViewPager.class);
        Context context = view.getContext();
        voiceActivity.colorPrimary = ContextCompat.getColor(context, R.color.colorAccent);
        voiceActivity.colorSecond = ContextCompat.getColor(context, R.color.basic_secondary_text);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VoiceActivity voiceActivity = this.b;
        if (voiceActivity != null) {
            this.b = null;
            voiceActivity.mTvType1 = null;
            voiceActivity.mTvType2 = null;
            voiceActivity.mTvType3 = null;
            voiceActivity.mTvType4 = null;
            voiceActivity.mTvType5 = null;
            voiceActivity.mViewpager = null;
            this.f1554c.setOnClickListener(null);
            this.f1554c = null;
            this.f1555d.setOnClickListener(null);
            this.f1555d = null;
            this.f1556e.setOnClickListener(null);
            this.f1556e = null;
            this.f1557f.setOnClickListener(null);
            this.f1557f = null;
            this.f1558g.setOnClickListener(null);
            this.f1558g = null;
            return;
        }
        throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
