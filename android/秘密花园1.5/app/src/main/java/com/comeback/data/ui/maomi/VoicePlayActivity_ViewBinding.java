package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VoicePlayActivity_ViewBinding implements Unbinder {
    public VoicePlayActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1652c;

    /* renamed from: d  reason: collision with root package name */
    public View f1653d;

    /* renamed from: e  reason: collision with root package name */
    public View f1654e;

    /* renamed from: f  reason: collision with root package name */
    public View f1655f;

    /* renamed from: g  reason: collision with root package name */
    public View f1656g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoicePlayActivity f1657c;

        public a(VoicePlayActivity_ViewBinding voicePlayActivity_ViewBinding, VoicePlayActivity voicePlayActivity) {
            this.f1657c = voicePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1657c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoicePlayActivity f1658c;

        public b(VoicePlayActivity_ViewBinding voicePlayActivity_ViewBinding, VoicePlayActivity voicePlayActivity) {
            this.f1658c = voicePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1658c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoicePlayActivity f1659c;

        public c(VoicePlayActivity_ViewBinding voicePlayActivity_ViewBinding, VoicePlayActivity voicePlayActivity) {
            this.f1659c = voicePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1659c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoicePlayActivity f1660c;

        public d(VoicePlayActivity_ViewBinding voicePlayActivity_ViewBinding, VoicePlayActivity voicePlayActivity) {
            this.f1660c = voicePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1660c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class e extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ VoicePlayActivity f1661c;

        public e(VoicePlayActivity_ViewBinding voicePlayActivity_ViewBinding, VoicePlayActivity voicePlayActivity) {
            this.f1661c = voicePlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1661c.onViewClicked(view);
        }
    }

    @UiThread
    public VoicePlayActivity_ViewBinding(VoicePlayActivity voicePlayActivity, View view) {
        this.b = voicePlayActivity;
        voicePlayActivity.mIvImg = (RatioImageView) d.c.c.c(view, R.id.iv_img, f.e.a.e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
        View b2 = d.c.c.b(view, R.id.iv_play, f.e.a.e.a("UQsGCA9THl46EGQLGRNES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        voicePlayActivity.mIvPlay = (ImageView) d.c.c.a(b2, R.id.iv_play, f.e.a.e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
        this.f1652c = b2;
        b2.setOnClickListener(new a(this, voicePlayActivity));
        voicePlayActivity.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seekBar, f.e.a.e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
        voicePlayActivity.mTvAll = (TextView) d.c.c.c(view, R.id.tv_all, f.e.a.e.a("UQsGCA9THl4nEHULFE0="), TextView.class);
        voicePlayActivity.mTvCurrent = (TextView) d.c.c.c(view, R.id.tv_current, f.e.a.e.a("UQsGCA9THl4nEHcSChgGBUNF"), TextView.class);
        voicePlayActivity.mTvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
        View b3 = d.c.c.b(view, R.id.iv_close, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1653d = b3;
        b3.setOnClickListener(new b(this, voicePlayActivity));
        View b4 = d.c.c.b(view, R.id.iv_down, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1654e = b4;
        b4.setOnClickListener(new c(this, voicePlayActivity));
        View b5 = d.c.c.b(view, R.id.iv_pre, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1655f = b5;
        b5.setOnClickListener(new d(this, voicePlayActivity));
        View b6 = d.c.c.b(view, R.id.iv_next, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1656g = b6;
        b6.setOnClickListener(new e(this, voicePlayActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        VoicePlayActivity voicePlayActivity = this.b;
        if (voicePlayActivity != null) {
            this.b = null;
            voicePlayActivity.mIvImg = null;
            voicePlayActivity.mIvPlay = null;
            voicePlayActivity.mSeekBar = null;
            voicePlayActivity.mTvAll = null;
            voicePlayActivity.mTvCurrent = null;
            voicePlayActivity.mTvTitle = null;
            this.f1652c.setOnClickListener(null);
            this.f1652c = null;
            this.f1653d.setOnClickListener(null);
            this.f1653d = null;
            this.f1654e.setOnClickListener(null);
            this.f1654e = null;
            this.f1655f.setOnClickListener(null);
            this.f1655f = null;
            this.f1656g.setOnClickListener(null);
            this.f1656g = null;
            return;
        }
        throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
