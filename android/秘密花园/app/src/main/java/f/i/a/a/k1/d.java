package f.i.a.a.k1;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.ViewPropertyAnimatorListener;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.utils.AnimUtils;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import com.tencent.smtt.sdk.TbsReaderView;
import f.i.a.a.a0;
import f.i.a.a.k0;
import f.i.a.a.k1.g;
import f.i.a.a.l0;
import f.i.a.a.m1.h0;
import f.i.a.a.o;
import f.i.a.a.q;
import f.i.a.a.r;
import f.i.a.a.s;
import f.i.a.a.u0;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: PlayerControlView.java */
/* loaded from: classes.dex */
public class d extends FrameLayout {
    public final View A;
    public View B;
    public AnimUtils.AnimatorListener C;
    public l0 E;
    public r F;
    public e G;
    @Nullable
    public k0 H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public int M;
    public int N;
    public int O;
    public int P;
    public boolean Q;
    public long[] S;
    public boolean[] T;
    public long[] U;
    public boolean[] V;
    public final View$OnClickListenerC0080d a;
    public final View b;

    /* renamed from: c  reason: collision with root package name */
    public final View f5454c;

    /* renamed from: d  reason: collision with root package name */
    public final View f5455d;

    /* renamed from: e  reason: collision with root package name */
    public final View f5456e;

    /* renamed from: f  reason: collision with root package name */
    public final View f5457f;

    /* renamed from: g  reason: collision with root package name */
    public final View f5458g;

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f5459h;

    /* renamed from: i  reason: collision with root package name */
    public final View f5460i;

    /* renamed from: j  reason: collision with root package name */
    public final TextView f5461j;

    /* renamed from: k  reason: collision with root package name */
    public final TextView f5462k;

    /* renamed from: l  reason: collision with root package name */
    public final g f5463l;

    /* renamed from: m  reason: collision with root package name */
    public final StringBuilder f5464m;
    public final Formatter n;
    public final u0.b o;
    public final u0.c p;
    public final Drawable q;
    public final Drawable r;
    public final Drawable s;
    public final String t;
    public final String u;
    public final String v;
    @DrawableRes
    public int w;
    public final AppCompatCheckBox x;
    public final TextView y;
    public final TextView z;
    public final Runnable W = new a();
    public final Runnable a0 = new b();
    public final CopyOnWriteArraySet<AnimUtils.UpdateProgressListener> D = new CopyOnWriteArraySet<>();
    public long R = -9223372036854775807L;

    /* compiled from: PlayerControlView.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.u();
        }
    }

    /* compiled from: PlayerControlView.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.q();
        }
    }

    /* compiled from: PlayerControlView.java */
    /* loaded from: classes.dex */
    public class c implements ViewPropertyAnimatorListener {
        public c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            if (view != null) {
                d.this.g();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
        }
    }

    /* compiled from: PlayerControlView.java */
    /* renamed from: f.i.a.a.k1.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class View$OnClickListenerC0080d extends l0.a implements g.a, View.OnClickListener {
        public View$OnClickListenerC0080d(a aVar) {
        }

        @Override // f.i.a.a.k1.g.a
        public void c(g gVar, long j2) {
            d dVar = d.this;
            TextView textView = dVar.f5462k;
            if (textView != null) {
                textView.setText(h0.L(dVar.f5464m, dVar.n, j2));
            }
        }

        @Override // f.i.a.a.k1.g.a
        public void d(g gVar, long j2) {
            d dVar = d.this;
            dVar.removeCallbacks(dVar.a0);
            d.this.L = true;
        }

        @Override // f.i.a.a.k1.g.a
        public void f(g gVar, long j2, boolean z) {
            d dVar = d.this;
            int i2 = 0;
            dVar.L = false;
            if (!z && dVar.E != null && gVar.isOpenSeek()) {
                d dVar2 = d.this;
                u0 w = dVar2.E.w();
                if (dVar2.K && !w.q()) {
                    int p = w.p();
                    while (true) {
                        long a = w.n(i2, dVar2.p).a();
                        if (j2 < a) {
                            break;
                        } else if (i2 == p - 1) {
                            j2 = a;
                            break;
                        } else {
                            j2 -= a;
                            i2++;
                        }
                    }
                } else {
                    i2 = dVar2.E.z();
                }
                r rVar = dVar2.F;
                l0 l0Var = dVar2.E;
                if (((s) rVar) != null) {
                    l0Var.k(i2, j2);
                } else {
                    throw null;
                }
            }
            d.this.h();
        }

        /* JADX WARNING: Removed duplicated region for block: B:56:0x00b5 A[LOOP:0: B:42:0x0096->B:56:0x00b5, LOOP_END] */
        /* JADX WARNING: Removed duplicated region for block: B:69:0x00b3 A[SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void onClick(android.view.View r10) {
            /*
            // Method dump skipped, instructions count: 219
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.k1.d.View$OnClickListenerC0080d.onClick(android.view.View):void");
        }

        @Override // f.i.a.a.l0.b
        public void onPlayerStateChanged(boolean z, int i2) {
            Activity scanForActivity = VideoPlayUtils.scanForActivity(d.this.getContext());
            if (scanForActivity != null) {
                if (z) {
                    scanForActivity.getWindow().addFlags(128);
                } else {
                    scanForActivity.getWindow().clearFlags(128);
                }
                d.this.t();
                d.this.u();
            }
        }

        @Override // f.i.a.a.l0.b
        public void onPositionDiscontinuity(int i2) {
            d.this.s();
            d.this.u();
        }

        @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
        public void onRepeatModeChanged(int i2) {
            d.this.v();
            d.this.s();
        }

        @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
        public void onShuffleModeEnabledChanged(boolean z) {
            d.this.w();
            d.this.s();
        }

        @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
        public void onTimelineChanged(u0 u0Var, Object obj, int i2) {
            d.this.s();
            d.this.x();
            d.this.u();
        }
    }

    /* compiled from: PlayerControlView.java */
    /* loaded from: classes.dex */
    public interface e {
        void onVisibilityChange(int i2);
    }

    static {
        a0.a("goog.exo.ui");
    }

    public d(Context context, AttributeSet attributeSet, int i2, AttributeSet attributeSet2) {
        super(context, null, i2);
        this.w = R.drawable.ic_fullscreen_selector;
        int i3 = R.layout.exo_player_control_view;
        this.M = TbsReaderView.ReaderCallback.GET_BAR_ANIMATING;
        this.N = com.umeng.commonsdk.framework.b.s;
        this.O = TbsReaderView.ReaderCallback.GET_BAR_ANIMATING;
        this.P = 0;
        this.Q = false;
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.PlayerControlView, 0, 0);
            try {
                this.M = obtainStyledAttributes.getInt(R.styleable.PlayerControlView_rewind_increment, this.M);
                this.N = obtainStyledAttributes.getInt(R.styleable.PlayerControlView_fastforward_increment, this.N);
                this.O = obtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, this.O);
                i3 = obtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, i3);
                this.P = obtainStyledAttributes.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, this.P);
                this.Q = obtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, this.Q);
                this.w = obtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_player_fullscreen_image_selector, this.w);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.o = new u0.b();
        this.p = new u0.c();
        this.f5464m = new StringBuilder();
        this.n = new Formatter(this.f5464m, Locale.getDefault());
        this.S = new long[0];
        this.T = new boolean[0];
        this.U = new long[0];
        this.V = new boolean[0];
        this.a = new View$OnClickListenerC0080d(null);
        this.F = new s();
        LayoutInflater.from(context).inflate(i3, this);
        setDescendantFocusability(262144);
        this.f5461j = (TextView) findViewById(R.id.exo_duration);
        this.f5462k = (TextView) findViewById(R.id.exo_position);
        this.f5463l = (g) findViewById(R.id.exo_progress);
        this.x = (AppCompatCheckBox) findViewById(R.id.exo_video_fullscreen);
        this.y = (TextView) findViewById(R.id.exo_video_switch);
        this.z = (TextView) findViewById(R.id.exo_controls_title);
        this.A = findViewById(R.id.exo_controller_bottom);
        View findViewById = findViewById(R.id.exo_controller_top);
        this.B = findViewById;
        if (findViewById == null) {
            this.B = this.z;
        }
        AppCompatCheckBox appCompatCheckBox = this.x;
        if (appCompatCheckBox != null) {
            appCompatCheckBox.setButtonDrawable(this.w);
            if (VideoPlayUtils.isTv(getContext())) {
                this.x.setVisibility(8);
            }
        }
        g gVar = this.f5463l;
        if (gVar != null) {
            gVar.addListener(this.a);
        }
        View findViewById2 = findViewById(R.id.exo_play);
        this.f5455d = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(this.a);
        }
        View findViewById3 = findViewById(R.id.exo_pause);
        this.f5456e = findViewById3;
        if (findViewById3 != null) {
            findViewById3.setOnClickListener(this.a);
        }
        View findViewById4 = findViewById(R.id.exo_prev);
        this.b = findViewById4;
        if (findViewById4 != null) {
            findViewById4.setOnClickListener(this.a);
        }
        View findViewById5 = findViewById(R.id.exo_next);
        this.f5454c = findViewById5;
        if (findViewById5 != null) {
            findViewById5.setOnClickListener(this.a);
        }
        View findViewById6 = findViewById(R.id.exo_rew);
        this.f5458g = findViewById6;
        if (findViewById6 != null) {
            findViewById6.setOnClickListener(this.a);
        }
        View findViewById7 = findViewById(R.id.exo_ffwd);
        this.f5457f = findViewById7;
        if (findViewById7 != null) {
            findViewById7.setOnClickListener(this.a);
        }
        ImageView imageView = (ImageView) findViewById(R.id.exo_repeat_toggle);
        this.f5459h = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(this.a);
        }
        View findViewById8 = findViewById(R.id.exo_shuffle);
        this.f5460i = findViewById8;
        if (findViewById8 != null) {
            findViewById8.setOnClickListener(this.a);
        }
        Resources resources = context.getResources();
        this.q = resources.getDrawable(R.drawable.exo_controls_repeat_off);
        this.r = resources.getDrawable(R.drawable.exo_controls_repeat_one);
        this.s = resources.getDrawable(R.drawable.exo_controls_repeat_all);
        this.t = resources.getString(R.string.exo_controls_repeat_off_description);
        this.u = resources.getString(R.string.exo_controls_repeat_one_description);
        this.v = resources.getString(R.string.exo_controls_repeat_all_description);
    }

    @Override // android.view.View, android.view.ViewGroup
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return e(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public boolean e(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.E != null) {
            if (keyCode == 90 || keyCode == 89 || keyCode == 85 || keyCode == 126 || keyCode == 127 || keyCode == 87 || keyCode == 88) {
                if (keyEvent.getAction() == 0) {
                    if (keyCode == 90) {
                        f();
                    } else if (keyCode == 89) {
                        m();
                    } else if (keyEvent.getRepeatCount() == 0) {
                        if (keyCode == 85) {
                            r rVar = this.F;
                            l0 l0Var = this.E;
                            boolean z = !l0Var.m();
                            if (((s) rVar) != null) {
                                l0Var.f(z);
                            } else {
                                throw null;
                            }
                        } else if (keyCode == 87) {
                            l0 l0Var2 = this.E;
                            if (l0Var2 != null) {
                                ((o) l0Var2).c();
                            }
                        } else if (keyCode == 88) {
                            l0 l0Var3 = this.E;
                            if (l0Var3 != null) {
                                ((o) l0Var3).d();
                            }
                        } else if (keyCode == 126) {
                            r rVar2 = this.F;
                            l0 l0Var4 = this.E;
                            if (((s) rVar2) != null) {
                                l0Var4.f(true);
                            } else {
                                throw null;
                            }
                        } else if (keyCode == 127) {
                            r rVar3 = this.F;
                            l0 l0Var5 = this.E;
                            if (((s) rVar3) != null) {
                                l0Var5.f(false);
                            } else {
                                throw null;
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f() {
        if (this.N > 0) {
            long v = this.E.v();
            long C = this.E.C() + ((long) this.N);
            if (v != -9223372036854775807L) {
                C = Math.min(C, v);
            }
            n(C);
        }
    }

    public void g() {
        if (k()) {
            setVisibility(8);
            e eVar = this.G;
            if (eVar != null) {
                eVar.onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.a0);
            this.R = -9223372036854775807L;
        }
    }

    public View getExoControllerTop() {
        return this.B;
    }

    public AppCompatCheckBox getExoFullscreen() {
        return this.x;
    }

    public int getIcFullscreenSelector() {
        return this.w;
    }

    public View getPlayButton() {
        return this.f5455d;
    }

    public boolean getShowShuffleButton() {
        return this.Q;
    }

    public int getShowTimeoutMs() {
        return this.O;
    }

    public TextView getSwitchText() {
        return this.y;
    }

    public g getTimeBar() {
        return this.f5463l;
    }

    public final void h() {
        removeCallbacks(this.a0);
        if (this.O > 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = this.O;
            this.R = uptimeMillis + ((long) i2);
            if (this.I) {
                postDelayed(this.a0, (long) i2);
                return;
            }
            return;
        }
        this.R = -9223372036854775807L;
    }

    public void i() {
        if (k()) {
            setVisibility(8);
            removeCallbacks(this.W);
            removeCallbacks(this.a0);
            this.R = -9223372036854775807L;
        }
    }

    public boolean j() {
        l0 l0Var = this.E;
        if (l0Var == null || l0Var.o() == 4 || this.E.o() == 1 || !this.E.m()) {
            return false;
        }
        return true;
    }

    public boolean k() {
        return getVisibility() == 0;
    }

    public void l() {
        View view;
        View view2;
        boolean j2 = j();
        if (!j2 && (view2 = this.f5455d) != null) {
            view2.requestFocus();
        } else if (j2 && (view = this.f5456e) != null) {
            view.requestFocus();
        }
    }

    public void m() {
        if (this.M > 0) {
            n(Math.max(this.E.C() - ((long) this.M), 0L));
        }
    }

    public final void n(long j2) {
        int z = this.E.z();
        r rVar = this.F;
        l0 l0Var = this.E;
        if (((s) rVar) != null) {
            l0Var.k(z, j2);
            return;
        }
        throw null;
    }

    public final void o(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            view.setAlpha(z ? 1.0f : 0.3f);
            view.setVisibility(0);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.I = true;
        long j2 = this.R;
        if (j2 != -9223372036854775807L) {
            long uptimeMillis = j2 - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                g();
            } else {
                postDelayed(this.a0, uptimeMillis);
            }
        } else if (k()) {
            h();
        }
        r();
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.I = false;
        removeCallbacks(this.W);
        removeCallbacks(this.a0);
        View view = this.B;
        if (!(view == null || view.animate() == null)) {
            this.B.animate().cancel();
        }
        View view2 = this.A;
        if (view2 != null && view2.animate() != null) {
            this.A.animate().cancel();
        }
    }

    public void p() {
        if (this.z != null && this.A != null) {
            AnimUtils.AnimatorListener animatorListener = this.C;
            if (animatorListener != null) {
                animatorListener.show(true);
            }
            AnimUtils.setInAnim(this.B).setListener(null).start();
            AnimUtils.setInAnim(this.A).start();
        }
    }

    public void q() {
        if (this.z == null || this.A == null) {
            g();
            return;
        }
        AnimUtils.AnimatorListener animatorListener = this.C;
        if (animatorListener != null) {
            animatorListener.show(false);
        }
        AnimUtils.setOutAnim(this.A, true).start();
        AnimUtils.setOutAnim(this.B, false).setListener(new c()).start();
    }

    public void r() {
        t();
        s();
        v();
        w();
        u();
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x008f  */
    /* JADX WARNING: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void s() {
        /*
            r6 = this;
            boolean r0 = r6.k()
            if (r0 == 0) goto L_0x0092
            boolean r0 = r6.I
            if (r0 != 0) goto L_0x000c
            goto L_0x0092
        L_0x000c:
            f.i.a.a.l0 r0 = r6.E
            if (r0 == 0) goto L_0x0015
            f.i.a.a.u0 r0 = r0.w()
            goto L_0x0016
        L_0x0015:
            r0 = 0
        L_0x0016:
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0022
            boolean r3 = r0.q()
            if (r3 != 0) goto L_0x0022
            r3 = 1
            goto L_0x0023
        L_0x0022:
            r3 = 0
        L_0x0023:
            if (r3 == 0) goto L_0x0063
            f.i.a.a.l0 r3 = r6.E
            boolean r3 = r3.h()
            if (r3 != 0) goto L_0x0063
            f.i.a.a.l0 r3 = r6.E
            int r3 = r3.z()
            f.i.a.a.u0$c r4 = r6.p
            r0.n(r3, r4)
            f.i.a.a.u0$c r0 = r6.p
            boolean r3 = r0.f5800d
            r4 = -1
            if (r3 != 0) goto L_0x0050
            boolean r0 = r0.f5801e
            if (r0 == 0) goto L_0x0050
            f.i.a.a.l0 r0 = r6.E
            f.i.a.a.o r0 = (f.i.a.a.o) r0
            int r0 = r0.b()
            if (r0 == r4) goto L_0x004e
            goto L_0x0050
        L_0x004e:
            r0 = 0
            goto L_0x0051
        L_0x0050:
            r0 = 1
        L_0x0051:
            f.i.a.a.u0$c r5 = r6.p
            boolean r5 = r5.f5801e
            if (r5 != 0) goto L_0x0061
            f.i.a.a.l0 r5 = r6.E
            f.i.a.a.o r5 = (f.i.a.a.o) r5
            int r5 = r5.a()
            if (r5 == r4) goto L_0x0065
        L_0x0061:
            r4 = 1
            goto L_0x0066
        L_0x0063:
            r0 = 0
            r3 = 0
        L_0x0065:
            r4 = 0
        L_0x0066:
            android.view.View r5 = r6.b
            r6.o(r0, r5)
            android.view.View r0 = r6.f5454c
            r6.o(r4, r0)
            int r0 = r6.N
            if (r0 <= 0) goto L_0x0078
            if (r3 == 0) goto L_0x0078
            r0 = 1
            goto L_0x0079
        L_0x0078:
            r0 = 0
        L_0x0079:
            android.view.View r4 = r6.f5457f
            r6.o(r0, r4)
            int r0 = r6.M
            if (r0 <= 0) goto L_0x0085
            if (r3 == 0) goto L_0x0085
            goto L_0x0086
        L_0x0085:
            r1 = 0
        L_0x0086:
            android.view.View r0 = r6.f5458g
            r6.o(r1, r0)
            f.i.a.a.k1.g r0 = r6.f5463l
            if (r0 == 0) goto L_0x0092
            r0.setEnabled(r3)
        L_0x0092:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.k1.d.s():void");
    }

    public void setAnimatorListener(AnimUtils.AnimatorListener animatorListener) {
        this.C = animatorListener;
    }

    public void setControlDispatcher(@Nullable r rVar) {
        if (rVar == null) {
            rVar = new s();
        }
        this.F = rVar;
    }

    public void setFastForwardIncrementMs(int i2) {
        this.N = i2;
        s();
    }

    public void setFullscreenStyle(@DrawableRes int i2) {
        this.w = i2;
        if (getExoFullscreen() != null) {
            getExoFullscreen().setButtonDrawable(i2);
        }
    }

    public void setPlaybackPreparer(@Nullable k0 k0Var) {
        this.H = k0Var;
    }

    public void setPlayer(l0 l0Var) {
        l0 l0Var2 = this.E;
        if (l0Var2 != l0Var) {
            if (l0Var2 != null) {
                l0Var2.y(this.a);
            }
            this.E = l0Var;
            if (l0Var != null) {
                l0Var.r(this.a);
            }
            r();
        }
    }

    public void setRepeatToggleModes(int i2) {
        this.P = i2;
        l0 l0Var = this.E;
        if (l0Var != null) {
            int u = l0Var.u();
            if (i2 == 0 && u != 0) {
                r rVar = this.F;
                l0 l0Var2 = this.E;
                if (((s) rVar) != null) {
                    l0Var2.q(0);
                    return;
                }
                throw null;
            } else if (i2 == 1 && u == 2) {
                r rVar2 = this.F;
                l0 l0Var3 = this.E;
                if (((s) rVar2) != null) {
                    l0Var3.q(1);
                    return;
                }
                throw null;
            } else if (i2 == 2 && u == 1) {
                r rVar3 = this.F;
                l0 l0Var4 = this.E;
                if (((s) rVar3) != null) {
                    l0Var4.q(2);
                    return;
                }
                throw null;
            }
        }
    }

    public void setRewindIncrementMs(int i2) {
        this.M = i2;
        s();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.J = z;
        x();
    }

    public void setShowShuffleButton(boolean z) {
        this.Q = z;
        w();
    }

    public void setShowTimeoutMs(int i2) {
        this.O = i2;
        if (k()) {
            h();
        }
    }

    public void setTitle(@NonNull String str) {
        this.z.setText(str);
    }

    public void setVisibilityListener(e eVar) {
        this.G = eVar;
    }

    public void t() {
        boolean z;
        if (k() && this.I) {
            boolean j2 = j();
            View view = this.f5455d;
            int i2 = 8;
            boolean z2 = true;
            if (view != null) {
                z = (j2 && view.isFocused()) | false;
                this.f5455d.setVisibility(j2 ? 8 : 0);
            } else {
                z = false;
            }
            View view2 = this.f5456e;
            if (view2 != null) {
                if (j2 || !view2.isFocused()) {
                    z2 = false;
                }
                z |= z2;
                View view3 = this.f5456e;
                if (j2) {
                    i2 = 0;
                }
                view3.setVisibility(i2);
            }
            if (z) {
                l();
            }
        }
    }

    public final void u() {
        long j2;
        long j3;
        int i2;
        int i3;
        int i4;
        long j4;
        u0.c cVar;
        int i5;
        if (this.I) {
            l0 l0Var = this.E;
            long j5 = 0;
            boolean z = true;
            if (l0Var != null) {
                u0 w = l0Var.w();
                if (!w.q()) {
                    int z2 = this.E.z();
                    int i6 = this.K ? 0 : z2;
                    int p = this.K ? w.p() - 1 : z2;
                    long j6 = 0;
                    j4 = 0;
                    i4 = 0;
                    while (true) {
                        if (i6 > p) {
                            break;
                        }
                        if (i6 == z2) {
                            j4 = j6;
                        }
                        w.n(i6, this.p);
                        u0.c cVar2 = this.p;
                        if (cVar2.f5805i == -9223372036854775807L) {
                            h.v(this.K ^ z);
                            break;
                        }
                        int i7 = cVar2.f5802f;
                        while (true) {
                            cVar = this.p;
                            if (i7 <= cVar.f5803g) {
                                w.f(i7, this.o);
                                int i8 = this.o.f5798f.a;
                                int i9 = 0;
                                while (i9 < i8) {
                                    long d2 = this.o.d(i9);
                                    if (d2 == Long.MIN_VALUE) {
                                        i5 = z2;
                                        long j7 = this.o.f5796d;
                                        if (j7 == -9223372036854775807L) {
                                            i9++;
                                            z2 = i5;
                                        } else {
                                            d2 = j7;
                                        }
                                    } else {
                                        i5 = z2;
                                    }
                                    long j8 = d2 + this.o.f5797e;
                                    if (j8 >= 0 && j8 <= this.p.f5805i) {
                                        long[] jArr = this.S;
                                        if (i4 == jArr.length) {
                                            int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                            this.S = Arrays.copyOf(this.S, length);
                                            this.T = Arrays.copyOf(this.T, length);
                                        }
                                        this.S[i4] = q.b(j6 + j8);
                                        this.T[i4] = !this.o.f5798f.f4853c[i9].b();
                                        i4++;
                                    }
                                    i9++;
                                    z2 = i5;
                                }
                                i7++;
                            }
                        }
                        j6 += cVar.f5805i;
                        i6++;
                        z2 = z2;
                        z = true;
                    }
                    j5 = j6;
                } else {
                    j4 = 0;
                    i4 = 0;
                }
                j5 = q.b(j5);
                long b2 = q.b(j4);
                if (this.E.h()) {
                    j3 = this.E.i() + b2;
                    j2 = j3;
                } else {
                    j2 = this.E.l() + b2;
                    j3 = this.E.C() + b2;
                }
                Iterator<AnimUtils.UpdateProgressListener> it = this.D.iterator();
                while (it.hasNext()) {
                    it.next().updateProgress(j3, j2, j5);
                }
                if (this.f5463l != null) {
                    int length2 = this.U.length;
                    int i10 = i4 + length2;
                    long[] jArr2 = this.S;
                    if (i10 > jArr2.length) {
                        this.S = Arrays.copyOf(jArr2, i10);
                        this.T = Arrays.copyOf(this.T, i10);
                    }
                    System.arraycopy(this.U, 0, this.S, i4, length2);
                    System.arraycopy(this.V, 0, this.T, i4, length2);
                    this.f5463l.setAdGroupTimesMs(this.S, this.T, i10);
                }
            } else {
                j3 = 0;
                j2 = 0;
            }
            TextView textView = this.f5461j;
            if (textView != null) {
                textView.setText(h0.L(this.f5464m, this.n, j5));
            }
            TextView textView2 = this.f5462k;
            if (textView2 != null && !this.L) {
                textView2.setText(h0.L(this.f5464m, this.n, j3));
            }
            g gVar = this.f5463l;
            if (gVar != null) {
                gVar.setPosition(j3);
                this.f5463l.setBufferedPosition(j2);
                this.f5463l.setDuration(j5);
            }
            removeCallbacks(this.W);
            l0 l0Var2 = this.E;
            if (l0Var2 == null) {
                i3 = 1;
                i2 = 1;
            } else {
                i2 = l0Var2.o();
                i3 = 1;
            }
            if (i2 != i3 && i2 != 4) {
                long j9 = 1000;
                if (this.E.m() && i2 == 3) {
                    float f2 = this.E.e().a;
                    if (f2 > 0.1f) {
                        if (f2 <= 5.0f) {
                            long max = (long) (1000 / Math.max(1, Math.round(1.0f / f2)));
                            long j10 = max - (j3 % max);
                            if (j10 < max / 5) {
                                j10 += max;
                            }
                            if (f2 != 1.0f) {
                                j10 = (long) (((float) j10) / f2);
                            }
                            j9 = j10;
                        } else {
                            j9 = 200;
                        }
                    }
                }
                postDelayed(this.W, j9);
            }
        }
    }

    public final void v() {
        ImageView imageView;
        if (k() && this.I && (imageView = this.f5459h) != null) {
            if (this.P == 0) {
                imageView.setVisibility(8);
            } else if (this.E == null) {
                o(false, imageView);
            } else {
                o(true, imageView);
                int u = this.E.u();
                if (u == 0) {
                    this.f5459h.setImageDrawable(this.q);
                    this.f5459h.setContentDescription(this.t);
                } else if (u == 1) {
                    this.f5459h.setImageDrawable(this.r);
                    this.f5459h.setContentDescription(this.u);
                } else if (u == 2) {
                    this.f5459h.setImageDrawable(this.s);
                    this.f5459h.setContentDescription(this.v);
                }
                this.f5459h.setVisibility(0);
            }
        }
    }

    public final void w() {
        View view;
        if (k() && this.I && (view = this.f5460i) != null) {
            if (!this.Q) {
                view.setVisibility(8);
                return;
            }
            l0 l0Var = this.E;
            if (l0Var == null) {
                o(false, view);
                return;
            }
            view.setAlpha(l0Var.x() ? 1.0f : 0.3f);
            this.f5460i.setEnabled(true);
            this.f5460i.setVisibility(0);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0036, code lost:
        if (r0 == false) goto L_0x0039;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void x() {
        /*
            r11 = this;
            f.i.a.a.l0 r0 = r11.E
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            boolean r1 = r11.J
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L_0x0039
            f.i.a.a.u0 r0 = r0.w()
            f.i.a.a.u0$c r1 = r11.p
            int r4 = r0.p()
            r5 = 100
            if (r4 <= r5) goto L_0x001b
        L_0x0019:
            r0 = 0
            goto L_0x0036
        L_0x001b:
            int r4 = r0.p()
            r5 = 0
        L_0x0020:
            if (r5 >= r4) goto L_0x0035
            f.i.a.a.u0$c r6 = r0.n(r5, r1)
            long r6 = r6.f5805i
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 != 0) goto L_0x0032
            goto L_0x0019
        L_0x0032:
            int r5 = r5 + 1
            goto L_0x0020
        L_0x0035:
            r0 = 1
        L_0x0036:
            if (r0 == 0) goto L_0x0039
            goto L_0x003a
        L_0x0039:
            r2 = 0
        L_0x003a:
            r11.K = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.k1.d.x():void");
    }
}
