package com.comeback.data.ui.fruitPie.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.data.ui.commom.PlayActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NativePlayFragment_ViewBinding implements Unbinder {
    public NativePlayFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f761c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NativePlayFragment f762c;

        public a(NativePlayFragment_ViewBinding nativePlayFragment_ViewBinding, NativePlayFragment nativePlayFragment) {
            this.f762c = nativePlayFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            NativePlayFragment nativePlayFragment = this.f762c;
            if (TextUtils.isEmpty(nativePlayFragment.f759g)) {
                return;
            }
            PlayActivity.l(nativePlayFragment.getContext(), nativePlayFragment.f759g);
        }
    }

    @UiThread
    public NativePlayFragment_ViewBinding(NativePlayFragment nativePlayFragment, View view) {
        this.b = nativePlayFragment;
        nativePlayFragment.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        nativePlayFragment.tvLoveNum = (TextView) c.c(view, R.id.tv_love_num, e.a("UQsGCA9THkcFKlsRHSQWBhA="), TextView.class);
        nativePlayFragment.tvScore = (TextView) c.c(view, R.id.tv_score, e.a("UQsGCA9THkcFNVcICg9E"), TextView.class);
        nativePlayFragment.tvDate = (TextView) c.c(view, R.id.tv_date, e.a("UQsGCA9THkcFIlUTHU0="), TextView.class);
        nativePlayFragment.tvLong = (TextView) c.c(view, R.id.tv_long, e.a("UQsGCA9THkcFKlsJH00="), TextView.class);
        nativePlayFragment.tvActor = (TextView) c.c(view, R.id.tv_actor, e.a("UQsGCA9THkcFJ1cTFxhE"), TextView.class);
        nativePlayFragment.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        nativePlayFragment.tvError = (TextView) c.c(view, R.id.tv_error, e.a("UQsGCA9THkcFI0YVFxhE"), TextView.class);
        nativePlayFragment.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
        View b = c.b(view, R.id.fl_play, e.a("WgcXDAQXGRQDClUeXw=="));
        this.f761c = b;
        b.setOnClickListener(new a(this, nativePlayFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NativePlayFragment nativePlayFragment = this.b;
        if (nativePlayFragment != null) {
            this.b = null;
            nativePlayFragment.tvTitle = null;
            nativePlayFragment.tvLoveNum = null;
            nativePlayFragment.tvScore = null;
            nativePlayFragment.tvDate = null;
            nativePlayFragment.tvLong = null;
            nativePlayFragment.tvActor = null;
            nativePlayFragment.tvIntro = null;
            nativePlayFragment.tvError = null;
            nativePlayFragment.ivCover = null;
            this.f761c.setOnClickListener(null);
            this.f761c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
