package com.comeback.data.ui.sex8.ui;

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
public class YXPlayActivity_ViewBinding implements Unbinder {
    public YXPlayActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1898c;

    /* renamed from: d  reason: collision with root package name */
    public View f1899d;

    /* renamed from: e  reason: collision with root package name */
    public View f1900e;

    /* renamed from: f  reason: collision with root package name */
    public View f1901f;

    /* renamed from: g  reason: collision with root package name */
    public View f1902g;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXPlayActivity f1903c;

        public a(YXPlayActivity_ViewBinding yXPlayActivity_ViewBinding, YXPlayActivity yXPlayActivity) {
            this.f1903c = yXPlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1903c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXPlayActivity f1904c;

        public b(YXPlayActivity_ViewBinding yXPlayActivity_ViewBinding, YXPlayActivity yXPlayActivity) {
            this.f1904c = yXPlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1904c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class c extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXPlayActivity f1905c;

        public c(YXPlayActivity_ViewBinding yXPlayActivity_ViewBinding, YXPlayActivity yXPlayActivity) {
            this.f1905c = yXPlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1905c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class d extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXPlayActivity f1906c;

        public d(YXPlayActivity_ViewBinding yXPlayActivity_ViewBinding, YXPlayActivity yXPlayActivity) {
            this.f1906c = yXPlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1906c.onViewClicked(view);
        }
    }

    /* loaded from: classes.dex */
    public class e extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ YXPlayActivity f1907c;

        public e(YXPlayActivity_ViewBinding yXPlayActivity_ViewBinding, YXPlayActivity yXPlayActivity) {
            this.f1907c = yXPlayActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1907c.onViewClicked(view);
        }
    }

    @UiThread
    public YXPlayActivity_ViewBinding(YXPlayActivity yXPlayActivity, View view) {
        this.b = yXPlayActivity;
        yXPlayActivity.mIvImg = (RatioImageView) d.c.c.c(view, R.id.iv_img, f.e.a.e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
        View b2 = d.c.c.b(view, R.id.iv_play, f.e.a.e.a("UQsGCA9THl46EGQLGRNES1YMB0QGFk1bHAIUQBcENQJSFSAIAhBSVhdB"));
        yXPlayActivity.mIvPlay = (ImageView) d.c.c.a(b2, R.id.iv_play, f.e.a.e.a("UQsGCA9THl46EGQLGRNE"), ImageView.class);
        this.f1898c = b2;
        b2.setOnClickListener(new a(this, yXPlayActivity));
        yXPlayActivity.mSeekBar = (SeekBar) d.c.c.c(view, R.id.seekBar, f.e.a.e.a("UQsGCA9THl4gA1EMOgsRTA=="), SeekBar.class);
        yXPlayActivity.mTvAll = (TextView) d.c.c.c(view, R.id.tv_all, f.e.a.e.a("UQsGCA9THl4nEHULFE0="), TextView.class);
        yXPlayActivity.mTvCurrent = (TextView) d.c.c.c(view, R.id.tv_current, f.e.a.e.a("UQsGCA9THl4nEHcSChgGBUNF"), TextView.class);
        yXPlayActivity.mTvTitle = (TextView) d.c.c.c(view, R.id.tv_title, f.e.a.e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
        View b3 = d.c.c.b(view, R.id.iv_close, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1899d = b3;
        b3.setOnClickListener(new b(this, yXPlayActivity));
        View b4 = d.c.c.b(view, R.id.iv_down, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1900e = b4;
        b4.setOnClickListener(new c(this, yXPlayActivity));
        View b5 = d.c.c.b(view, R.id.iv_pre, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1901f = b5;
        b5.setOnClickListener(new d(this, yXPlayActivity));
        View b6 = d.c.c.b(view, R.id.iv_next, f.e.a.e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f1902g = b6;
        b6.setOnClickListener(new e(this, yXPlayActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        YXPlayActivity yXPlayActivity = this.b;
        if (yXPlayActivity != null) {
            this.b = null;
            yXPlayActivity.mIvImg = null;
            yXPlayActivity.mIvPlay = null;
            yXPlayActivity.mSeekBar = null;
            yXPlayActivity.mTvAll = null;
            yXPlayActivity.mTvCurrent = null;
            yXPlayActivity.mTvTitle = null;
            this.f1898c.setOnClickListener(null);
            this.f1898c = null;
            this.f1899d.setOnClickListener(null);
            this.f1899d = null;
            this.f1900e.setOnClickListener(null);
            this.f1900e = null;
            this.f1901f.setOnClickListener(null);
            this.f1901f = null;
            this.f1902g.setOnClickListener(null);
            this.f1902g = null;
            return;
        }
        throw new IllegalStateException(f.e.a.e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
