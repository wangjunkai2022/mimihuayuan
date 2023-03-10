package com.scwang.smartrefresh.layout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Scroller;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.legacy.widget.Space;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.google.android.material.appbar.AppBarLayout;
import java.util.LinkedList;
@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public class SmartRefreshLayout extends ViewGroup implements f.j.a.a.f.i, NestedScrollingParent {
    public static f.j.a.a.f.a L0;
    public static f.j.a.a.f.b M0;
    public static f.j.a.a.f.c N0;
    public static ViewGroup.MarginLayoutParams O0 = new ViewGroup.MarginLayoutParams(-1, -1);
    public boolean A;
    public long A0;
    public boolean B;
    public int B0;
    public boolean C;
    public int C0;
    public boolean D;
    public boolean D0;
    public boolean E;
    public boolean E0;
    public boolean F;
    public boolean F0;
    public boolean G;
    public boolean G0;
    public boolean H;
    public boolean H0;
    public boolean I;
    public MotionEvent I0;
    public boolean J;
    public Runnable J0;
    public boolean K;
    public ValueAnimator K0;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public int a;
    public f.j.a.a.l.d a0;
    public int b;
    public f.j.a.a.l.b b0;

    /* renamed from: c  reason: collision with root package name */
    public int f2446c;
    public f.j.a.a.l.c c0;

    /* renamed from: d  reason: collision with root package name */
    public int f2447d;
    public int d0;

    /* renamed from: e  reason: collision with root package name */
    public int f2448e;
    public boolean e0;

    /* renamed from: f  reason: collision with root package name */
    public int f2449f;
    public int[] f0;

    /* renamed from: g  reason: collision with root package name */
    public int f2450g;
    public NestedScrollingChildHelper g0;

    /* renamed from: h  reason: collision with root package name */
    public float f2451h;
    public NestedScrollingParentHelper h0;

    /* renamed from: i  reason: collision with root package name */
    public float f2452i;
    public int i0;

    /* renamed from: j  reason: collision with root package name */
    public float f2453j;
    public f.j.a.a.g.a j0;

    /* renamed from: k  reason: collision with root package name */
    public float f2454k;
    public int k0;

    /* renamed from: l  reason: collision with root package name */
    public float f2455l;
    public f.j.a.a.g.a l0;

    /* renamed from: m  reason: collision with root package name */
    public char f2456m;
    public int m0;
    public boolean n;
    public int n0;
    public boolean o;
    public float o0;
    public int p;
    public float p0;
    public int q;
    public float q0;
    public int r;
    public float r0;
    public int s;
    public f.j.a.a.f.g s0;
    public int t;
    public f.j.a.a.f.g t0;
    public int u;
    public f.j.a.a.f.d u0;
    public int v;
    public Paint v0;
    public Scroller w;
    public Handler w0;
    public VelocityTracker x;
    public f.j.a.a.f.h x0;
    public Interpolator y;
    public f.j.a.a.g.b y0;
    public int[] z;
    public f.j.a.a.g.b z0;

    /* loaded from: classes.dex */
    public class a extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.setStateDirectLoading(this.a);
        }
    }

    /* loaded from: classes.dex */
    public class b extends AnimatorListenerAdapter {
        public final /* synthetic */ boolean a;

        public b(boolean z) {
            this.a = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout.this.A0 = System.currentTimeMillis();
            SmartRefreshLayout.this.r(f.j.a.a.g.b.Refreshing);
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            f.j.a.a.l.d dVar = smartRefreshLayout.a0;
            if (dVar != null) {
                if (this.a) {
                    dVar.b(smartRefreshLayout);
                }
            } else if (smartRefreshLayout.c0 == null) {
                smartRefreshLayout.l(PathInterpolatorCompat.MAX_NUM_POINTS, true, Boolean.FALSE);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            f.j.a.a.f.g gVar = smartRefreshLayout2.s0;
            if (gVar != null) {
                int i2 = smartRefreshLayout2.i0;
                gVar.b(smartRefreshLayout2, i2, (int) (smartRefreshLayout2.o0 * i2));
            }
            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
            f.j.a.a.l.c cVar = smartRefreshLayout3.c0;
            if (cVar == null || !(smartRefreshLayout3.s0 instanceof f.j.a.a.f.f)) {
                return;
            }
            if (this.a) {
                cVar.b(smartRefreshLayout3);
            }
            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
            int i3 = smartRefreshLayout4.i0;
            smartRefreshLayout4.c0.l((f.j.a.a.f.f) smartRefreshLayout4.s0, i3, (int) (smartRefreshLayout4.o0 * i3));
        }
    }

    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.j.a.a.g.b bVar;
            f.j.a.a.g.b bVar2;
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            smartRefreshLayout.K0 = null;
            if (smartRefreshLayout.b == 0 && (bVar = smartRefreshLayout.y0) != (bVar2 = f.j.a.a.g.b.None) && !bVar.f6213e && !bVar.f6212d) {
                smartRefreshLayout.r(bVar2);
                return;
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            f.j.a.a.g.b bVar3 = smartRefreshLayout2.y0;
            if (bVar3 != smartRefreshLayout2.z0) {
                smartRefreshLayout2.setViceState(bVar3);
            }
        }
    }

    /* loaded from: classes.dex */
    public class d implements ValueAnimator.AnimatorUpdateListener {
        public d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ((k) SmartRefreshLayout.this.x0).b(((Integer) valueAnimator.getAnimatedValue()).intValue(), false);
        }
    }

    /* loaded from: classes.dex */
    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            f.j.a.a.l.b bVar = smartRefreshLayout.b0;
            if (bVar != null) {
                bVar.d(smartRefreshLayout);
            } else if (smartRefreshLayout.c0 == null) {
                smartRefreshLayout.i(2000, true, false);
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            f.j.a.a.l.c cVar = smartRefreshLayout2.c0;
            if (cVar != null) {
                cVar.d(smartRefreshLayout2);
            }
        }
    }

    /* loaded from: classes.dex */
    public class f implements Runnable {
        public int a = 0;
        public final /* synthetic */ int b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Boolean f2457c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ boolean f2458d;

        public f(int i2, Boolean bool, boolean z) {
            this.b = i2;
            this.f2457c = bool;
            this.f2458d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
            if (this.a == 0) {
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.y0 == f.j.a.a.g.b.None && smartRefreshLayout.z0 == f.j.a.a.g.b.Refreshing) {
                    smartRefreshLayout.z0 = f.j.a.a.g.b.None;
                } else {
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.K0 != null) {
                        f.j.a.a.g.b bVar = smartRefreshLayout2.y0;
                        if (bVar.a && (bVar.f6212d || bVar == f.j.a.a.g.b.RefreshReleased)) {
                            SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                            ValueAnimator valueAnimator = smartRefreshLayout3.K0;
                            smartRefreshLayout3.K0 = null;
                            valueAnimator.cancel();
                            ((k) SmartRefreshLayout.this.x0).d(f.j.a.a.g.b.None);
                        }
                    }
                    SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                    if (smartRefreshLayout4.y0 == f.j.a.a.g.b.Refreshing && smartRefreshLayout4.s0 != null && smartRefreshLayout4.u0 != null) {
                        this.a++;
                        smartRefreshLayout4.w0.postDelayed(this, this.b);
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.RefreshFinish);
                        if (this.f2457c == Boolean.FALSE) {
                            SmartRefreshLayout.this.u(false);
                        }
                    }
                }
                if (this.f2457c == Boolean.TRUE) {
                    SmartRefreshLayout.this.u(true);
                    return;
                }
                return;
            }
            SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
            int i2 = smartRefreshLayout5.s0.i(smartRefreshLayout5, this.f2458d);
            SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
            f.j.a.a.l.c cVar = smartRefreshLayout6.c0;
            if (cVar != null) {
                f.j.a.a.f.g gVar = smartRefreshLayout6.s0;
                if (gVar instanceof f.j.a.a.f.f) {
                    cVar.c((f.j.a.a.f.f) gVar, this.f2458d);
                }
            }
            if (i2 < Integer.MAX_VALUE) {
                SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                if (smartRefreshLayout7.n || smartRefreshLayout7.e0) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    if (smartRefreshLayout8.n) {
                        float f2 = smartRefreshLayout8.f2454k;
                        smartRefreshLayout8.f2452i = f2;
                        smartRefreshLayout8.f2447d = 0;
                        smartRefreshLayout8.n = false;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 0, smartRefreshLayout8.f2453j, (f2 + smartRefreshLayout8.b) - (smartRefreshLayout8.a * 2), 0));
                        SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 2, smartRefreshLayout9.f2453j, smartRefreshLayout9.f2454k + smartRefreshLayout9.b, 0));
                    }
                    SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                    if (smartRefreshLayout10.e0) {
                        smartRefreshLayout10.d0 = 0;
                        SmartRefreshLayout.super.dispatchTouchEvent(MotionEvent.obtain(currentTimeMillis, currentTimeMillis, 1, smartRefreshLayout10.f2453j, smartRefreshLayout10.f2454k, 0));
                        SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                        smartRefreshLayout11.e0 = false;
                        smartRefreshLayout11.f2447d = 0;
                    }
                }
                SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                int i3 = smartRefreshLayout12.b;
                if (i3 <= 0) {
                    if (i3 < 0) {
                        smartRefreshLayout12.g(0, i2, smartRefreshLayout12.y, smartRefreshLayout12.f2449f);
                        return;
                    }
                    ((k) smartRefreshLayout12.x0).b(0, false);
                    ((k) SmartRefreshLayout.this.x0).d(f.j.a.a.g.b.None);
                    return;
                }
                ValueAnimator g2 = smartRefreshLayout12.g(0, i2, smartRefreshLayout12.y, smartRefreshLayout12.f2449f);
                SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                if (smartRefreshLayout13.N) {
                    animatorUpdateListener = ((f.j.a.a.j.a) smartRefreshLayout13.u0).e(smartRefreshLayout13.b);
                }
                if (g2 == null || animatorUpdateListener == null) {
                    return;
                }
                g2.addUpdateListener(animatorUpdateListener);
            }
        }
    }

    /* loaded from: classes.dex */
    public class g implements Runnable {
        public int a = 0;
        public final /* synthetic */ int b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f2460c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ boolean f2461d;

        /* loaded from: classes.dex */
        public class a implements Runnable {
            public final /* synthetic */ int a;

            /* renamed from: com.scwang.smartrefresh.layout.SmartRefreshLayout$g$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class C0013a extends AnimatorListenerAdapter {
                public C0013a() {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    g gVar = g.this;
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    smartRefreshLayout.G0 = false;
                    if (gVar.f2460c) {
                        smartRefreshLayout.u(true);
                    }
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (smartRefreshLayout2.y0 == f.j.a.a.g.b.LoadFinish) {
                        smartRefreshLayout2.r(f.j.a.a.g.b.None);
                    }
                }
            }

            public a(int i2) {
                this.a = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
                ValueAnimator valueAnimator;
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (!smartRefreshLayout.M || this.a >= 0) {
                    animatorUpdateListener = null;
                } else {
                    animatorUpdateListener = ((f.j.a.a.j.a) smartRefreshLayout.u0).e(smartRefreshLayout.b);
                }
                if (animatorUpdateListener != null) {
                    animatorUpdateListener.onAnimationUpdate(ValueAnimator.ofInt(0, 0));
                }
                C0013a c0013a = new C0013a();
                g gVar = g.this;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                int i2 = smartRefreshLayout2.b;
                if (i2 > 0) {
                    valueAnimator = ((k) smartRefreshLayout2.x0).a(0);
                } else {
                    if (animatorUpdateListener == null && i2 != 0) {
                        if (gVar.f2460c && smartRefreshLayout2.G) {
                            int i3 = smartRefreshLayout2.k0;
                            if (i2 >= (-i3)) {
                                smartRefreshLayout2.r(f.j.a.a.g.b.None);
                            } else {
                                valueAnimator = ((k) smartRefreshLayout2.x0).a(-i3);
                            }
                        } else {
                            valueAnimator = ((k) SmartRefreshLayout.this.x0).a(0);
                        }
                    } else {
                        ValueAnimator valueAnimator2 = SmartRefreshLayout.this.K0;
                        if (valueAnimator2 != null) {
                            valueAnimator2.cancel();
                            SmartRefreshLayout.this.K0 = null;
                        }
                        ((k) SmartRefreshLayout.this.x0).b(0, false);
                        ((k) SmartRefreshLayout.this.x0).d(f.j.a.a.g.b.None);
                    }
                    valueAnimator = null;
                }
                if (valueAnimator != null) {
                    valueAnimator.addListener(c0013a);
                } else {
                    c0013a.onAnimationEnd(null);
                }
            }
        }

        public g(int i2, boolean z, boolean z2) {
            this.b = i2;
            this.f2460c = z;
            this.f2461d = z2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
            if (((f.j.a.a.j.a) r2.u0).a() != false) goto L46;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 326
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.g.run():void");
        }
    }

    /* loaded from: classes.dex */
    public class h implements Runnable {

        /* renamed from: c  reason: collision with root package name */
        public int f2463c;

        /* renamed from: f  reason: collision with root package name */
        public float f2466f;
        public int a = 0;
        public int b = 10;

        /* renamed from: e  reason: collision with root package name */
        public float f2465e = 0.0f;

        /* renamed from: d  reason: collision with root package name */
        public long f2464d = AnimationUtils.currentAnimationTimeMillis();

        public h(float f2, int i2) {
            this.f2466f = f2;
            this.f2463c = i2;
            SmartRefreshLayout.this.w0.postDelayed(this, this.b);
            if (f2 > 0.0f) {
                ((k) SmartRefreshLayout.this.x0).d(f.j.a.a.g.b.PullDownToRefresh);
                return;
            }
            ((k) SmartRefreshLayout.this.x0).d(f.j.a.a.g.b.PullUpToLoad);
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.J0 != this || smartRefreshLayout.y0.f6214f) {
                return;
            }
            if (Math.abs(smartRefreshLayout.b) >= Math.abs(this.f2463c)) {
                if (this.f2463c != 0) {
                    int i2 = this.a + 1;
                    this.a = i2;
                    this.f2466f = (float) (Math.pow(0.44999998807907104d, i2 * 2) * this.f2466f);
                } else {
                    int i3 = this.a + 1;
                    this.a = i3;
                    this.f2466f = (float) (Math.pow(0.8500000238418579d, i3 * 2) * this.f2466f);
                }
            } else {
                int i4 = this.a + 1;
                this.a = i4;
                this.f2466f = (float) (Math.pow(0.949999988079071d, i4 * 2) * this.f2466f);
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float f2 = this.f2466f * ((((float) (currentAnimationTimeMillis - this.f2464d)) * 1.0f) / 1000.0f);
            if (Math.abs(f2) >= 1.0f) {
                this.f2464d = currentAnimationTimeMillis;
                float f3 = this.f2465e + f2;
                this.f2465e = f3;
                SmartRefreshLayout.this.q(f3);
                SmartRefreshLayout.this.w0.postDelayed(this, this.b);
                return;
            }
            SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
            f.j.a.a.g.b bVar = smartRefreshLayout2.z0;
            if (bVar.f6212d && bVar.a) {
                ((k) smartRefreshLayout2.x0).d(f.j.a.a.g.b.PullDownCanceled);
            } else {
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                f.j.a.a.g.b bVar2 = smartRefreshLayout3.z0;
                if (bVar2.f6212d && bVar2.b) {
                    ((k) smartRefreshLayout3.x0).d(f.j.a.a.g.b.PullUpCanceled);
                }
            }
            SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
            smartRefreshLayout4.J0 = null;
            if (Math.abs(smartRefreshLayout4.b) >= Math.abs(this.f2463c)) {
                SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                smartRefreshLayout5.g(this.f2463c, 0, smartRefreshLayout5.y, Math.min(Math.max((int) (Math.abs(SmartRefreshLayout.this.b - this.f2463c) / f.j.a.a.m.b.f6268d), 30), 100) * 10);
            }
        }
    }

    /* loaded from: classes.dex */
    public class i implements Runnable {
        public int a;

        /* renamed from: c  reason: collision with root package name */
        public float f2468c;
        public int b = 10;

        /* renamed from: d  reason: collision with root package name */
        public float f2469d = 0.98f;

        /* renamed from: e  reason: collision with root package name */
        public long f2470e = 0;

        /* renamed from: f  reason: collision with root package name */
        public long f2471f = AnimationUtils.currentAnimationTimeMillis();

        public i(float f2) {
            this.f2468c = f2;
            this.a = SmartRefreshLayout.this.b;
        }

        @Override // java.lang.Runnable
        public void run() {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.J0 != this || smartRefreshLayout.y0.f6214f) {
                return;
            }
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float pow = (float) (Math.pow(this.f2469d, ((float) (currentAnimationTimeMillis - this.f2470e)) / (1000.0f / this.b)) * this.f2468c);
            this.f2468c = pow;
            float f2 = ((((float) (currentAnimationTimeMillis - this.f2471f)) * 1.0f) / 1000.0f) * pow;
            if (Math.abs(f2) > 1.0f) {
                this.f2471f = currentAnimationTimeMillis;
                int i2 = (int) (this.a + f2);
                this.a = i2;
                SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                if (smartRefreshLayout2.b * i2 > 0) {
                    ((k) smartRefreshLayout2.x0).b(i2, true);
                    SmartRefreshLayout.this.w0.postDelayed(this, this.b);
                    return;
                }
                smartRefreshLayout2.J0 = null;
                ((k) smartRefreshLayout2.x0).b(0, true);
                f.j.a.a.m.b.e(((f.j.a.a.j.a) SmartRefreshLayout.this.u0).f6242c, (int) (-this.f2468c));
                SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                if (!smartRefreshLayout3.G0 || f2 <= 0.0f) {
                    return;
                }
                smartRefreshLayout3.G0 = false;
                return;
            }
            SmartRefreshLayout.this.J0 = null;
        }
    }

    /* loaded from: classes.dex */
    public class k implements f.j.a.a.f.h {
        public k() {
        }

        public ValueAnimator a(int i2) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            return smartRefreshLayout.g(i2, 0, smartRefreshLayout.y, smartRefreshLayout.f2449f);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00c9  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public f.j.a.a.f.h b(int r19, boolean r20) {
            /*
                Method dump skipped, instructions count: 927
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.k.b(int, boolean):f.j.a.a.f.h");
        }

        public f.j.a.a.f.h c(@NonNull f.j.a.a.f.g gVar, int i2) {
            SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
            if (smartRefreshLayout.v0 == null && i2 != 0) {
                smartRefreshLayout.v0 = new Paint();
            }
            if (gVar.equals(SmartRefreshLayout.this.s0)) {
                SmartRefreshLayout.this.B0 = i2;
            } else if (gVar.equals(SmartRefreshLayout.this.t0)) {
                SmartRefreshLayout.this.C0 = i2;
            }
            return this;
        }

        public f.j.a.a.f.h d(@NonNull f.j.a.a.g.b bVar) {
            switch (bVar.ordinal()) {
                case 0:
                    SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                    f.j.a.a.g.b bVar2 = smartRefreshLayout.y0;
                    f.j.a.a.g.b bVar3 = f.j.a.a.g.b.None;
                    if (bVar2 != bVar3 && smartRefreshLayout.b == 0) {
                        smartRefreshLayout.r(bVar3);
                        return null;
                    } else if (SmartRefreshLayout.this.b != 0) {
                        a(0);
                        return null;
                    } else {
                        return null;
                    }
                case 1:
                    SmartRefreshLayout smartRefreshLayout2 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout2.y0.f6213e && smartRefreshLayout2.o(smartRefreshLayout2.A)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.PullDownToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.PullDownToRefresh);
                    return null;
                case 2:
                    SmartRefreshLayout smartRefreshLayout3 = SmartRefreshLayout.this;
                    if (smartRefreshLayout3.o(smartRefreshLayout3.B)) {
                        SmartRefreshLayout smartRefreshLayout4 = SmartRefreshLayout.this;
                        f.j.a.a.g.b bVar4 = smartRefreshLayout4.y0;
                        if (!bVar4.f6213e && !bVar4.f6214f && (!smartRefreshLayout4.S || !smartRefreshLayout4.G || !smartRefreshLayout4.T)) {
                            SmartRefreshLayout.this.r(f.j.a.a.g.b.PullUpToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.PullUpToLoad);
                    return null;
                case 3:
                    SmartRefreshLayout smartRefreshLayout5 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout5.y0.f6213e && smartRefreshLayout5.o(smartRefreshLayout5.A)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.PullDownCanceled);
                        d(f.j.a.a.g.b.None);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.PullDownCanceled);
                    return null;
                case 4:
                    SmartRefreshLayout smartRefreshLayout6 = SmartRefreshLayout.this;
                    if (smartRefreshLayout6.o(smartRefreshLayout6.B)) {
                        SmartRefreshLayout smartRefreshLayout7 = SmartRefreshLayout.this;
                        if (!smartRefreshLayout7.y0.f6213e && (!smartRefreshLayout7.S || !smartRefreshLayout7.G || !smartRefreshLayout7.T)) {
                            SmartRefreshLayout.this.r(f.j.a.a.g.b.PullUpCanceled);
                            d(f.j.a.a.g.b.None);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.PullUpCanceled);
                    return null;
                case 5:
                    SmartRefreshLayout smartRefreshLayout8 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout8.y0.f6213e && smartRefreshLayout8.o(smartRefreshLayout8.A)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.ReleaseToRefresh);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.ReleaseToRefresh);
                    return null;
                case 6:
                    SmartRefreshLayout smartRefreshLayout9 = SmartRefreshLayout.this;
                    if (smartRefreshLayout9.o(smartRefreshLayout9.B)) {
                        SmartRefreshLayout smartRefreshLayout10 = SmartRefreshLayout.this;
                        f.j.a.a.g.b bVar5 = smartRefreshLayout10.y0;
                        if (!bVar5.f6213e && !bVar5.f6214f && (!smartRefreshLayout10.S || !smartRefreshLayout10.G || !smartRefreshLayout10.T)) {
                            SmartRefreshLayout.this.r(f.j.a.a.g.b.ReleaseToLoad);
                            return null;
                        }
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.ReleaseToLoad);
                    return null;
                case 7:
                    SmartRefreshLayout smartRefreshLayout11 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout11.y0.f6213e && smartRefreshLayout11.o(smartRefreshLayout11.A)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.ReleaseToTwoLevel);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.ReleaseToTwoLevel);
                    return null;
                case 8:
                    SmartRefreshLayout.this.r(f.j.a.a.g.b.TwoLevelReleased);
                    return null;
                case 9:
                    SmartRefreshLayout smartRefreshLayout12 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout12.y0.f6213e && smartRefreshLayout12.o(smartRefreshLayout12.A)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.RefreshReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.RefreshReleased);
                    return null;
                case 10:
                    SmartRefreshLayout smartRefreshLayout13 = SmartRefreshLayout.this;
                    if (!smartRefreshLayout13.y0.f6213e && smartRefreshLayout13.o(smartRefreshLayout13.B)) {
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.LoadReleased);
                        return null;
                    }
                    SmartRefreshLayout.this.setViceState(f.j.a.a.g.b.LoadReleased);
                    return null;
                case 11:
                    SmartRefreshLayout.this.setStateRefreshing(true);
                    return null;
                case 12:
                    SmartRefreshLayout.this.setStateLoading(true);
                    return null;
                case 13:
                    SmartRefreshLayout.this.r(f.j.a.a.g.b.TwoLevel);
                    return null;
                case 14:
                    SmartRefreshLayout smartRefreshLayout14 = SmartRefreshLayout.this;
                    if (smartRefreshLayout14.y0 == f.j.a.a.g.b.Refreshing) {
                        smartRefreshLayout14.r(f.j.a.a.g.b.RefreshFinish);
                        return null;
                    }
                    return null;
                case 15:
                    SmartRefreshLayout smartRefreshLayout15 = SmartRefreshLayout.this;
                    if (smartRefreshLayout15.y0 == f.j.a.a.g.b.Loading) {
                        smartRefreshLayout15.r(f.j.a.a.g.b.LoadFinish);
                        return null;
                    }
                    return null;
                case 16:
                    SmartRefreshLayout.this.r(f.j.a.a.g.b.TwoLevelFinish);
                    return null;
                default:
                    return null;
            }
        }
    }

    public SmartRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2448e = 300;
        this.f2449f = 300;
        this.f2455l = 0.5f;
        this.f2456m = 'n';
        this.p = -1;
        this.q = -1;
        this.r = -1;
        this.s = -1;
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = true;
        this.E = true;
        this.F = true;
        this.G = false;
        this.H = true;
        this.I = true;
        this.J = false;
        this.K = true;
        this.L = false;
        this.M = true;
        this.N = true;
        this.O = true;
        this.P = true;
        this.Q = false;
        this.R = false;
        this.S = false;
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.f0 = new int[2];
        this.g0 = new NestedScrollingChildHelper(this);
        this.h0 = new NestedScrollingParentHelper(this);
        f.j.a.a.g.a aVar = f.j.a.a.g.a.f6194c;
        this.j0 = aVar;
        this.l0 = aVar;
        this.o0 = 2.5f;
        this.p0 = 2.5f;
        this.q0 = 1.0f;
        this.r0 = 1.0f;
        this.x0 = new k();
        f.j.a.a.g.b bVar = f.j.a.a.g.b.None;
        this.y0 = bVar;
        this.z0 = bVar;
        this.A0 = 0L;
        this.B0 = 0;
        this.C0 = 0;
        this.G0 = false;
        this.H0 = false;
        this.I0 = null;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.w0 = new Handler();
        this.w = new Scroller(context);
        this.x = VelocityTracker.obtain();
        this.f2450g = context.getResources().getDisplayMetrics().heightPixels;
        int i2 = f.j.a.a.m.b.b;
        this.y = new f.j.a.a.m.b(0);
        this.a = viewConfiguration.getScaledTouchSlop();
        this.t = viewConfiguration.getScaledMinimumFlingVelocity();
        this.u = viewConfiguration.getScaledMaximumFlingVelocity();
        this.k0 = f.j.a.a.m.b.d(60.0f);
        this.i0 = f.j.a.a.m.b.d(100.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.a.a.d.SmartRefreshLayout);
        if (!obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_android_clipToPadding)) {
            super.setClipToPadding(false);
        }
        if (!obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_android_clipChildren)) {
            super.setClipChildren(false);
        }
        f.j.a.a.f.c cVar = N0;
        if (cVar != null) {
            cVar.a(context, this);
        }
        this.f2455l = obtainStyledAttributes.getFloat(f.j.a.a.d.SmartRefreshLayout_srlDragRate, this.f2455l);
        this.o0 = obtainStyledAttributes.getFloat(f.j.a.a.d.SmartRefreshLayout_srlHeaderMaxDragRate, this.o0);
        this.p0 = obtainStyledAttributes.getFloat(f.j.a.a.d.SmartRefreshLayout_srlFooterMaxDragRate, this.p0);
        this.q0 = obtainStyledAttributes.getFloat(f.j.a.a.d.SmartRefreshLayout_srlHeaderTriggerRate, this.q0);
        this.r0 = obtainStyledAttributes.getFloat(f.j.a.a.d.SmartRefreshLayout_srlFooterTriggerRate, this.r0);
        this.A = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableRefresh, this.A);
        this.f2449f = obtainStyledAttributes.getInt(f.j.a.a.d.SmartRefreshLayout_srlReboundDuration, this.f2449f);
        this.B = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableLoadMore, this.B);
        this.i0 = obtainStyledAttributes.getDimensionPixelOffset(f.j.a.a.d.SmartRefreshLayout_srlHeaderHeight, this.i0);
        this.k0 = obtainStyledAttributes.getDimensionPixelOffset(f.j.a.a.d.SmartRefreshLayout_srlFooterHeight, this.k0);
        this.m0 = obtainStyledAttributes.getDimensionPixelOffset(f.j.a.a.d.SmartRefreshLayout_srlHeaderInsetStart, this.m0);
        this.n0 = obtainStyledAttributes.getDimensionPixelOffset(f.j.a.a.d.SmartRefreshLayout_srlFooterInsetStart, this.n0);
        this.Q = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlDisableContentWhenRefresh, this.Q);
        this.R = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlDisableContentWhenLoading, this.R);
        this.E = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableHeaderTranslationContent, this.E);
        this.F = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableFooterTranslationContent, this.F);
        this.H = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnablePreviewInEditMode, this.H);
        this.K = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableAutoLoadMore, this.K);
        this.I = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableOverScrollBounce, this.I);
        this.L = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnablePureScrollMode, this.L);
        this.M = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableScrollContentWhenLoaded, this.M);
        this.N = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableScrollContentWhenRefreshed, this.N);
        this.O = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableLoadMoreWhenContentNotFull, this.O);
        boolean z = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableFooterFollowWhenLoadFinished, this.G);
        this.G = z;
        this.G = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableFooterFollowWhenNoMoreData, z);
        this.C = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableClipHeaderWhenFixedBehind, this.C);
        this.D = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableClipFooterWhenFixedBehind, this.D);
        this.J = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableOverScrollDrag, this.J);
        this.p = obtainStyledAttributes.getResourceId(f.j.a.a.d.SmartRefreshLayout_srlFixedHeaderViewId, this.p);
        this.q = obtainStyledAttributes.getResourceId(f.j.a.a.d.SmartRefreshLayout_srlFixedFooterViewId, this.q);
        this.r = obtainStyledAttributes.getResourceId(f.j.a.a.d.SmartRefreshLayout_srlHeaderTranslationViewId, this.r);
        this.s = obtainStyledAttributes.getResourceId(f.j.a.a.d.SmartRefreshLayout_srlFooterTranslationViewId, this.s);
        boolean z2 = obtainStyledAttributes.getBoolean(f.j.a.a.d.SmartRefreshLayout_srlEnableNestedScrolling, this.P);
        this.P = z2;
        this.g0.setNestedScrollingEnabled(z2);
        this.U = this.U || obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_srlEnableLoadMore);
        this.V = this.V || obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_srlEnableHeaderTranslationContent);
        this.W = this.W || obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_srlEnableFooterTranslationContent);
        this.j0 = obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_srlHeaderHeight) ? f.j.a.a.g.a.f6200i : this.j0;
        this.l0 = obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_srlFooterHeight) ? f.j.a.a.g.a.f6200i : this.l0;
        int color = obtainStyledAttributes.getColor(f.j.a.a.d.SmartRefreshLayout_srlAccentColor, 0);
        int color2 = obtainStyledAttributes.getColor(f.j.a.a.d.SmartRefreshLayout_srlPrimaryColor, 0);
        if (color2 != 0) {
            if (color != 0) {
                this.z = new int[]{color2, color};
            } else {
                this.z = new int[]{color2};
            }
        } else if (color != 0) {
            this.z = new int[]{0, color};
        }
        if (this.L && !this.U && !this.B) {
            this.B = true;
        }
        obtainStyledAttributes.recycle();
    }

    public static void setDefaultRefreshFooterCreator(@NonNull f.j.a.a.f.a aVar) {
        L0 = aVar;
    }

    public static void setDefaultRefreshHeaderCreator(@NonNull f.j.a.a.f.b bVar) {
        M0 = bVar;
    }

    public static void setDefaultRefreshInitializer(@NonNull f.j.a.a.f.c cVar) {
        N0 = cVar;
    }

    @Override // android.view.View
    public void computeScroll() {
        f.j.a.a.g.b bVar;
        this.w.getCurrY();
        if (this.w.computeScrollOffset()) {
            int finalY = this.w.getFinalY();
            if ((finalY < 0 && ((this.A || this.J) && ((f.j.a.a.j.a) this.u0).b())) || (finalY > 0 && ((this.B || this.J) && ((f.j.a.a.j.a) this.u0).a()))) {
                if (this.H0) {
                    float currVelocity = finalY > 0 ? -this.w.getCurrVelocity() : this.w.getCurrVelocity();
                    if (this.K0 == null) {
                        if (currVelocity > 0.0f && ((bVar = this.y0) == f.j.a.a.g.b.Refreshing || bVar == f.j.a.a.g.b.TwoLevel)) {
                            this.J0 = new h(currVelocity, this.i0);
                        } else if (currVelocity < 0.0f && (this.y0 == f.j.a.a.g.b.Loading || ((this.G && this.S && this.T && o(this.B)) || (this.K && !this.S && o(this.B) && this.y0 != f.j.a.a.g.b.Refreshing)))) {
                            this.J0 = new h(currVelocity, -this.k0);
                        } else if (this.b == 0 && this.I) {
                            this.J0 = new h(currVelocity, 0);
                        }
                    }
                }
                this.w.forceFinished(true);
                return;
            }
            this.H0 = true;
            invalidate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c6, code lost:
        if (r4.f6214f == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00cc, code lost:
        if (r21.y0.a == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00da, code lost:
        if (r4.f6214f == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e0, code lost:
        if (r21.y0.b == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010e, code lost:
        if (r6 != 3) goto L97;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r22) {
        /*
            Method dump skipped, instructions count: 942
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        Paint paint;
        Paint paint2;
        f.j.a.a.f.d dVar = this.u0;
        View view2 = dVar != null ? ((f.j.a.a.j.a) dVar).a : null;
        f.j.a.a.f.g gVar = this.s0;
        if (gVar != null && gVar.getView() == view) {
            if (!o(this.A) || (!this.H && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int max = Math.max(view2.getPaddingTop() + view2.getTop() + this.b, view.getTop());
                int i2 = this.B0;
                if (i2 != 0 && (paint2 = this.v0) != null) {
                    paint2.setColor(i2);
                    if (this.s0.getSpinnerStyle().f6222c) {
                        max = view.getBottom();
                    } else if (this.s0.getSpinnerStyle() == f.j.a.a.g.c.f6216d) {
                        max = view.getBottom() + this.b;
                    }
                    canvas.drawRect(0.0f, view.getTop(), getWidth(), max, this.v0);
                }
                if (this.C && this.s0.getSpinnerStyle() == f.j.a.a.g.c.f6218f) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), max);
                    boolean drawChild = super.drawChild(canvas, view, j2);
                    canvas.restore();
                    return drawChild;
                }
            }
        }
        f.j.a.a.f.g gVar2 = this.t0;
        if (gVar2 != null && gVar2.getView() == view) {
            if (!o(this.B) || (!this.H && isInEditMode())) {
                return true;
            }
            if (view2 != null) {
                int min = Math.min((view2.getBottom() - view2.getPaddingBottom()) + this.b, view.getBottom());
                int i3 = this.C0;
                if (i3 != 0 && (paint = this.v0) != null) {
                    paint.setColor(i3);
                    if (this.t0.getSpinnerStyle().f6222c) {
                        min = view.getTop();
                    } else if (this.t0.getSpinnerStyle() == f.j.a.a.g.c.f6216d) {
                        min = view.getTop() + this.b;
                    }
                    canvas.drawRect(0.0f, min, getWidth(), view.getBottom(), this.v0);
                }
                if (this.D && this.t0.getSpinnerStyle() == f.j.a.a.g.c.f6218f) {
                    canvas.save();
                    canvas.clipRect(view.getLeft(), min, view.getRight(), view.getBottom());
                    boolean drawChild2 = super.drawChild(canvas, view, j2);
                    canvas.restore();
                    return drawChild2;
                }
            }
        }
        return super.drawChild(canvas, view, j2);
    }

    public ValueAnimator g(int i2, int i3, Interpolator interpolator, int i4) {
        if (this.b != i2) {
            ValueAnimator valueAnimator = this.K0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            this.J0 = null;
            ValueAnimator ofInt = ValueAnimator.ofInt(this.b, i2);
            this.K0 = ofInt;
            ofInt.setDuration(i4);
            this.K0.setInterpolator(interpolator);
            this.K0.addListener(new c());
            this.K0.addUpdateListener(new d());
            this.K0.setStartDelay(i3);
            this.K0.start();
            return this.K0;
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new j(getContext(), attributeSet);
    }

    @Override // f.j.a.a.f.i
    @NonNull
    public ViewGroup getLayout() {
        return this;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.h0.getNestedScrollAxes();
    }

    @Nullable
    public f.j.a.a.f.e getRefreshFooter() {
        f.j.a.a.f.g gVar = this.t0;
        if (gVar instanceof f.j.a.a.f.e) {
            return (f.j.a.a.f.e) gVar;
        }
        return null;
    }

    @Nullable
    public f.j.a.a.f.f getRefreshHeader() {
        f.j.a.a.f.g gVar = this.s0;
        if (gVar instanceof f.j.a.a.f.f) {
            return (f.j.a.a.f.f) gVar;
        }
        return null;
    }

    @NonNull
    public f.j.a.a.g.b getState() {
        return this.y0;
    }

    public boolean h() {
        int i2 = this.F0 ? 0 : 400;
        int i3 = this.f2449f;
        int i4 = this.i0;
        float f2 = ((this.o0 / 2.0f) + 0.5f) * i4 * 1.0f;
        if (i4 == 0) {
            i4 = 1;
        }
        float f3 = f2 / i4;
        if (this.y0 == f.j.a.a.g.b.None && o(this.A)) {
            f.j.a.a.e eVar = new f.j.a.a.e(this, f3, i3, false);
            setViceState(f.j.a.a.g.b.Refreshing);
            if (i2 > 0) {
                this.w0.postDelayed(eVar, i2);
            } else {
                eVar.run();
            }
            return true;
        }
        return false;
    }

    public f.j.a.a.f.i i(int i2, boolean z, boolean z2) {
        int i3 = i2 >> 16;
        int i4 = (i2 << 16) >> 16;
        g gVar = new g(i3, z2, z);
        if (i4 > 0) {
            this.w0.postDelayed(gVar, i4);
        } else {
            gVar.run();
        }
        return this;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.P && (this.J || this.A || this.B);
    }

    public f.j.a.a.f.i j(boolean z) {
        i(z ? Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.A0))), 300) << 16 : 0, z, false);
        return this;
    }

    public f.j.a.a.f.i k() {
        return m(true);
    }

    public f.j.a.a.f.i l(int i2, boolean z, Boolean bool) {
        int i3 = i2 >> 16;
        int i4 = (i2 << 16) >> 16;
        f fVar = new f(i3, bool, z);
        if (i4 > 0) {
            this.w0.postDelayed(fVar, i4);
        } else {
            fVar.run();
        }
        return this;
    }

    public f.j.a.a.f.i m(boolean z) {
        if (z) {
            l(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.A0))), 300) << 16, true, Boolean.FALSE);
            return this;
        }
        l(0, false, null);
        return this;
    }

    public boolean n(int i2) {
        if (i2 == 0) {
            if (this.K0 != null) {
                f.j.a.a.g.b bVar = this.y0;
                if (bVar.f6214f || bVar == f.j.a.a.g.b.TwoLevelReleased) {
                    return true;
                }
                if (bVar == f.j.a.a.g.b.PullDownCanceled) {
                    ((k) this.x0).d(f.j.a.a.g.b.PullDownToRefresh);
                } else if (bVar == f.j.a.a.g.b.PullUpCanceled) {
                    ((k) this.x0).d(f.j.a.a.g.b.PullUpToLoad);
                }
                this.K0.cancel();
                this.K0 = null;
            }
            this.J0 = null;
        }
        return this.K0 != null;
    }

    public boolean o(boolean z) {
        return z && !this.L;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        f.j.a.a.f.g gVar;
        super.onAttachedToWindow();
        this.F0 = true;
        if (!isInEditMode()) {
            if (this.s0 == null) {
                f.j.a.a.f.b bVar = M0;
                if (bVar != null) {
                    y(bVar.a(getContext(), this));
                } else {
                    y(new f.j.a.a.i.a(getContext()));
                }
            }
            if (this.t0 == null) {
                f.j.a.a.f.a aVar = L0;
                if (aVar != null) {
                    x(aVar.a(getContext(), this));
                } else {
                    boolean z = this.B;
                    x(new f.j.a.a.h.a(getContext()));
                    this.B = z;
                }
            } else {
                this.B = this.B || !this.U;
            }
            if (this.u0 == null) {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    f.j.a.a.f.g gVar2 = this.s0;
                    if ((gVar2 == null || childAt != gVar2.getView()) && ((gVar = this.t0) == null || childAt != gVar.getView())) {
                        this.u0 = new f.j.a.a.j.a(childAt);
                    }
                }
            }
            if (this.u0 == null) {
                int d2 = f.j.a.a.m.b.d(20.0f);
                TextView textView = new TextView(getContext());
                textView.setTextColor(-39424);
                textView.setGravity(17);
                textView.setTextSize(20.0f);
                textView.setText(f.j.a.a.c.srl_content_empty);
                super.addView(textView, 0, new j(-1, -1));
                f.j.a.a.j.a aVar2 = new f.j.a.a.j.a(textView);
                this.u0 = aVar2;
                aVar2.a.setPadding(d2, d2, d2, d2);
            }
            View findViewById = findViewById(this.p);
            View findViewById2 = findViewById(this.q);
            f.j.a.a.f.d dVar = this.u0;
            f.j.a.a.j.a aVar3 = (f.j.a.a.j.a) dVar;
            ViewGroup viewGroup = null;
            if (aVar3 != null) {
                aVar3.f6248i.b = null;
                ((f.j.a.a.j.a) dVar).f6248i.f6249c = this.O;
                f.j.a.a.f.h hVar = this.x0;
                f.j.a.a.j.a aVar4 = (f.j.a.a.j.a) dVar;
                View view = aVar4.a;
                boolean isInEditMode = view.isInEditMode();
                ViewGroup viewGroup2 = null;
                while (true) {
                    if (viewGroup2 != null && (!(viewGroup2 instanceof NestedScrollingParent) || (viewGroup2 instanceof NestedScrollingChild))) {
                        break;
                    }
                    boolean z2 = viewGroup2 == null;
                    LinkedList linkedList = new LinkedList();
                    linkedList.add(view);
                    ViewGroup viewGroup3 = viewGroup;
                    while (linkedList.size() > 0 && viewGroup3 == null) {
                        View view2 = (View) linkedList.poll();
                        if (view2 != null) {
                            if ((z2 || view2 != view) && f.j.a.a.m.b.f(view2)) {
                                viewGroup3 = view2;
                            } else if (view2 instanceof ViewGroup) {
                                ViewGroup viewGroup4 = (ViewGroup) view2;
                                for (int i3 = 0; i3 < viewGroup4.getChildCount(); i3++) {
                                    linkedList.add(viewGroup4.getChildAt(i3));
                                }
                            }
                        }
                    }
                    if (viewGroup3 == null) {
                        viewGroup3 = view;
                    }
                    if (viewGroup3 == viewGroup2) {
                        break;
                    }
                    if (!isInEditMode) {
                        try {
                            if (viewGroup3 instanceof CoordinatorLayout) {
                                SmartRefreshLayout.this.setNestedScrollingEnabled(false);
                                ViewGroup viewGroup5 = viewGroup3;
                                int childCount2 = viewGroup5.getChildCount();
                                while (true) {
                                    childCount2--;
                                    if (childCount2 >= 0) {
                                        View childAt2 = viewGroup5.getChildAt(childCount2);
                                        if (childAt2 instanceof AppBarLayout) {
                                            ((AppBarLayout) childAt2).addOnOffsetChangedListener((AppBarLayout.OnOffsetChangedListener) new f.j.a.a.m.a(aVar4));
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                    view = viewGroup3;
                    viewGroup2 = view;
                    viewGroup = null;
                }
                if (viewGroup2 != null) {
                    aVar4.f6242c = viewGroup2;
                }
                if (findViewById != null || findViewById2 != null) {
                    aVar4.f6243d = findViewById;
                    aVar4.f6244e = findViewById2;
                    FrameLayout frameLayout = new FrameLayout(aVar4.a.getContext());
                    k kVar = (k) hVar;
                    int indexOfChild = SmartRefreshLayout.this.getLayout().indexOfChild(aVar4.a);
                    SmartRefreshLayout.this.getLayout().removeView(aVar4.a);
                    frameLayout.addView(aVar4.a, 0, new ViewGroup.LayoutParams(-1, -1));
                    SmartRefreshLayout.this.getLayout().addView(frameLayout, indexOfChild, aVar4.a.getLayoutParams());
                    aVar4.a = frameLayout;
                    if (findViewById != null) {
                        findViewById.setTag("fixed-top");
                        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                        ViewGroup viewGroup6 = (ViewGroup) findViewById.getParent();
                        int indexOfChild2 = viewGroup6.indexOfChild(findViewById);
                        viewGroup6.removeView(findViewById);
                        layoutParams.height = f.j.a.a.m.b.i(findViewById);
                        viewGroup6.addView(new Space(aVar4.a.getContext()), indexOfChild2, layoutParams);
                        frameLayout.addView(findViewById, 1, layoutParams);
                    }
                    if (findViewById2 != null) {
                        findViewById2.setTag("fixed-bottom");
                        ViewGroup.LayoutParams layoutParams2 = findViewById2.getLayoutParams();
                        ViewGroup viewGroup7 = (ViewGroup) findViewById2.getParent();
                        int indexOfChild3 = viewGroup7.indexOfChild(findViewById2);
                        viewGroup7.removeView(findViewById2);
                        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(layoutParams2);
                        layoutParams2.height = f.j.a.a.m.b.i(findViewById2);
                        viewGroup7.addView(new Space(aVar4.a.getContext()), indexOfChild3, layoutParams2);
                        layoutParams3.gravity = 80;
                        frameLayout.addView(findViewById2, 1, layoutParams3);
                    }
                }
                if (this.b != 0) {
                    r(f.j.a.a.g.b.None);
                    f.j.a.a.f.d dVar2 = this.u0;
                    this.b = 0;
                    ((f.j.a.a.j.a) dVar2).d(0, this.r, this.s);
                }
            } else {
                throw null;
            }
        }
        int[] iArr = this.z;
        if (iArr != null) {
            f.j.a.a.f.g gVar3 = this.s0;
            if (gVar3 != null) {
                gVar3.setPrimaryColors(iArr);
            }
            f.j.a.a.f.g gVar4 = this.t0;
            if (gVar4 != null) {
                gVar4.setPrimaryColors(this.z);
            }
        }
        f.j.a.a.f.d dVar3 = this.u0;
        if (dVar3 != null) {
            super.bringChildToFront(((f.j.a.a.j.a) dVar3).a);
        }
        f.j.a.a.f.g gVar5 = this.s0;
        if (gVar5 != null && gVar5.getSpinnerStyle().b) {
            super.bringChildToFront(this.s0.getView());
        }
        f.j.a.a.f.g gVar6 = this.t0;
        if (gVar6 == null || !gVar6.getSpinnerStyle().b) {
            return;
        }
        super.bringChildToFront(this.t0.getView());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.F0 = false;
        ((k) this.x0).b(0, true);
        r(f.j.a.a.g.b.None);
        Handler handler = this.w0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.U = true;
        this.J0 = null;
        ValueAnimator valueAnimator = this.K0;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.K0.removeAllUpdateListeners();
            this.K0.cancel();
            this.K0 = null;
        }
        this.G0 = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onFinishInflate() {
        /*
            r11 = this;
            super.onFinishInflate()
            int r0 = super.getChildCount()
            r1 = 3
            if (r0 > r1) goto L9e
            r2 = -1
            r3 = 0
            r4 = 0
            r5 = -1
            r6 = 0
        Lf:
            r7 = 2
            r8 = 1
            if (r4 >= r0) goto L33
            android.view.View r9 = super.getChildAt(r4)
            boolean r10 = f.j.a.a.m.b.f(r9)
            if (r10 == 0) goto L24
            if (r6 < r7) goto L21
            if (r4 != r8) goto L24
        L21:
            r5 = r4
            r6 = 2
            goto L30
        L24:
            boolean r7 = r9 instanceof f.j.a.a.f.g
            if (r7 != 0) goto L30
            if (r6 >= r8) goto L30
            if (r4 <= 0) goto L2e
            r6 = 1
            goto L2f
        L2e:
            r6 = 0
        L2f:
            r5 = r4
        L30:
            int r4 = r4 + 1
            goto Lf
        L33:
            if (r5 < 0) goto L4d
            f.j.a.a.j.a r4 = new f.j.a.a.j.a
            android.view.View r6 = super.getChildAt(r5)
            r4.<init>(r6)
            r11.u0 = r4
            if (r5 != r8) goto L48
            if (r0 != r1) goto L46
            r1 = 0
            goto L4f
        L46:
            r1 = 0
            goto L4e
        L48:
            if (r0 != r7) goto L4d
            r1 = -1
            r7 = 1
            goto L4f
        L4d:
            r1 = -1
        L4e:
            r7 = -1
        L4f:
            r4 = 0
        L50:
            if (r4 >= r0) goto L9d
            android.view.View r5 = super.getChildAt(r4)
            if (r4 == r1) goto L8b
            if (r4 == r7) goto L65
            if (r1 != r2) goto L65
            f.j.a.a.f.g r6 = r11.s0
            if (r6 != 0) goto L65
            boolean r6 = r5 instanceof f.j.a.a.f.f
            if (r6 == 0) goto L65
            goto L8b
        L65:
            if (r4 == r7) goto L6d
            if (r7 != r2) goto L9a
            boolean r6 = r5 instanceof f.j.a.a.f.e
            if (r6 == 0) goto L9a
        L6d:
            boolean r6 = r11.B
            if (r6 != 0) goto L78
            boolean r6 = r11.U
            if (r6 != 0) goto L76
            goto L78
        L76:
            r6 = 0
            goto L79
        L78:
            r6 = 1
        L79:
            r11.B = r6
            boolean r6 = r5 instanceof f.j.a.a.f.e
            if (r6 == 0) goto L82
            f.j.a.a.f.e r5 = (f.j.a.a.f.e) r5
            goto L88
        L82:
            f.j.a.a.j.b r6 = new f.j.a.a.j.b
            r6.<init>(r5)
            r5 = r6
        L88:
            r11.t0 = r5
            goto L9a
        L8b:
            boolean r6 = r5 instanceof f.j.a.a.f.f
            if (r6 == 0) goto L92
            f.j.a.a.f.f r5 = (f.j.a.a.f.f) r5
            goto L98
        L92:
            f.j.a.a.j.c r6 = new f.j.a.a.j.c
            r6.<init>(r5)
            r5 = r6
        L98:
            r11.s0 = r5
        L9a:
            int r4 = r4 + 1
            goto L50
        L9d:
            return
        L9e:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "最多只支持3个子View，Most only support three sub view"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.onFinishInflate():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        int childCount = super.getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = super.getChildAt(i7);
            if (childAt.getVisibility() != 8 && childAt.getTag(f.j.a.a.c.srl_component_falsify) != childAt) {
                f.j.a.a.f.d dVar = this.u0;
                boolean z2 = true;
                if (dVar != null && ((f.j.a.a.j.a) dVar).a == childAt) {
                    boolean z3 = isInEditMode() && this.H && o(this.A) && this.s0 != null;
                    View view = ((f.j.a.a.j.a) this.u0).a;
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : O0;
                    int i8 = marginLayoutParams.leftMargin + paddingLeft;
                    int i9 = marginLayoutParams.topMargin + paddingTop;
                    int measuredWidth = view.getMeasuredWidth() + i8;
                    int measuredHeight = view.getMeasuredHeight() + i9;
                    if (z3 && p(this.E, this.s0)) {
                        int i10 = this.i0;
                        i9 += i10;
                        measuredHeight += i10;
                    }
                    view.layout(i8, i9, measuredWidth, measuredHeight);
                }
                f.j.a.a.f.g gVar = this.s0;
                if (gVar != null && gVar.getView() == childAt) {
                    boolean z4 = isInEditMode() && this.H && o(this.A);
                    View view2 = this.s0.getView();
                    ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : O0;
                    int i11 = marginLayoutParams2.leftMargin;
                    int i12 = marginLayoutParams2.topMargin + this.m0;
                    int measuredWidth2 = view2.getMeasuredWidth() + i11;
                    int measuredHeight2 = view2.getMeasuredHeight() + i12;
                    if (!z4 && this.s0.getSpinnerStyle() == f.j.a.a.g.c.f6216d) {
                        int i13 = this.i0;
                        i12 -= i13;
                        measuredHeight2 -= i13;
                    }
                    view2.layout(i11, i12, measuredWidth2, measuredHeight2);
                }
                f.j.a.a.f.g gVar2 = this.t0;
                if (gVar2 != null && gVar2.getView() == childAt) {
                    z2 = (isInEditMode() && this.H && o(this.B)) ? false : false;
                    View view3 = this.t0.getView();
                    ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : O0;
                    f.j.a.a.g.c spinnerStyle = this.t0.getSpinnerStyle();
                    int i14 = marginLayoutParams3.leftMargin;
                    int measuredHeight3 = (getMeasuredHeight() + marginLayoutParams3.topMargin) - this.n0;
                    if (this.S && this.T && this.G && this.u0 != null && this.t0.getSpinnerStyle() == f.j.a.a.g.c.f6216d && o(this.B)) {
                        View view4 = ((f.j.a.a.j.a) this.u0).a;
                        ViewGroup.LayoutParams layoutParams4 = view4.getLayoutParams();
                        measuredHeight3 = view4.getMeasuredHeight() + paddingTop + paddingTop + (layoutParams4 instanceof ViewGroup.MarginLayoutParams ? ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin : 0);
                    }
                    if (spinnerStyle == f.j.a.a.g.c.f6220h) {
                        measuredHeight3 = marginLayoutParams3.topMargin - this.n0;
                    } else {
                        if (!z2 && spinnerStyle != f.j.a.a.g.c.f6219g && spinnerStyle != f.j.a.a.g.c.f6218f) {
                            if (spinnerStyle.f6222c && this.b < 0) {
                                i6 = Math.max(o(this.B) ? -this.b : 0, 0);
                            }
                        } else {
                            i6 = this.k0;
                        }
                        measuredHeight3 -= i6;
                    }
                    view3.layout(i14, measuredHeight3, view3.getMeasuredWidth() + i14, view3.getMeasuredHeight() + measuredHeight3);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0258  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View view, float f2, float f3, boolean z) {
        return this.g0.dispatchNestedFling(f2, f3, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View view, float f2, float f3) {
        return (this.G0 && f3 > 0.0f) || z(-f3) || this.g0.dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(@NonNull View view, int i2, int i3, @NonNull int[] iArr) {
        int i4 = this.d0;
        int i5 = 0;
        if (i3 * i4 > 0) {
            if (Math.abs(i3) > Math.abs(this.d0)) {
                int i6 = this.d0;
                this.d0 = 0;
                i5 = i6;
            } else {
                this.d0 -= i3;
                i5 = i3;
            }
            q(this.d0);
        } else if (i3 > 0 && this.G0) {
            int i7 = i4 - i3;
            this.d0 = i7;
            q(i7);
            i5 = i3;
        }
        this.g0.dispatchNestedPreScroll(i2, i3 - i5, iArr, null);
        iArr[1] = iArr[1] + i5;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(@NonNull View view, int i2, int i3, int i4, int i5) {
        boolean dispatchNestedScroll = this.g0.dispatchNestedScroll(i2, i3, i4, i5, this.f0);
        int i6 = i5 + this.f0[1];
        if ((i6 < 0 && (this.A || this.J)) || (i6 > 0 && (this.B || this.J))) {
            int i7 = this.d0;
            f.j.a.a.g.b bVar = this.z0;
            if (bVar == f.j.a.a.g.b.None || bVar.f6213e) {
                ((k) this.x0).d(i6 > 0 ? f.j.a.a.g.b.PullUpToLoad : f.j.a.a.g.b.PullDownToRefresh);
                if (!dispatchNestedScroll) {
                    ViewParent parent = getParent();
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
            int i8 = this.d0 - i6;
            this.d0 = i8;
            q(i8);
        }
        if (!this.G0 || i3 >= 0) {
            return;
        }
        this.G0 = false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2) {
        this.h0.onNestedScrollAccepted(view, view2, i2);
        this.g0.startNestedScroll(i2 & 2);
        this.d0 = this.b;
        this.e0 = true;
        n(0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2) {
        return (isEnabled() && isNestedScrollingEnabled() && (i2 & 2) != 0) && (this.J || this.A || this.B);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(@NonNull View view) {
        this.h0.onStopNestedScroll(view);
        this.e0 = false;
        this.d0 = 0;
        s();
        this.g0.stopNestedScroll();
    }

    public boolean p(boolean z, f.j.a.a.f.g gVar) {
        return z || this.L || gVar == null || gVar.getSpinnerStyle() == f.j.a.a.g.c.f6218f;
    }

    public void q(float f2) {
        f.j.a.a.g.b bVar;
        float f3 = (!this.e0 || this.O || f2 >= 0.0f || ((f.j.a.a.j.a) this.u0).a()) ? f2 : 0.0f;
        if (f3 > this.f2450g * 5 && getTag() == null) {
            Toast.makeText(getContext(), "你这么死拉，臣妾做不到啊！", 0).show();
            setTag("你这么死拉，臣妾做不到啊！");
        }
        if (this.y0 == f.j.a.a.g.b.TwoLevel && f3 > 0.0f) {
            ((k) this.x0).b(Math.min((int) f3, getMeasuredHeight()), true);
        } else if (this.y0 == f.j.a.a.g.b.Refreshing && f3 >= 0.0f) {
            int i2 = this.i0;
            if (f3 < i2) {
                ((k) this.x0).b((int) f3, true);
            } else {
                double d2 = (this.o0 - 1.0f) * i2;
                int max = Math.max((this.f2450g * 4) / 3, getHeight());
                int i3 = this.i0;
                double d3 = max - i3;
                double max2 = Math.max(0.0f, (f3 - i3) * this.f2455l);
                double d4 = -max2;
                if (d3 == 0.0d) {
                    d3 = 1.0d;
                }
                ((k) this.x0).b(((int) Math.min((1.0d - Math.pow(100.0d, d4 / d3)) * d2, max2)) + this.i0, true);
            }
        } else if (f3 < 0.0f && (this.y0 == f.j.a.a.g.b.Loading || ((this.G && this.S && this.T && o(this.B)) || (this.K && !this.S && o(this.B))))) {
            int i4 = this.k0;
            if (f3 > (-i4)) {
                ((k) this.x0).b((int) f3, true);
            } else {
                double d5 = (this.p0 - 1.0f) * i4;
                int max3 = Math.max((this.f2450g * 4) / 3, getHeight());
                int i5 = this.k0;
                double d6 = max3 - i5;
                double d7 = -Math.min(0.0f, (i5 + f3) * this.f2455l);
                double d8 = -d7;
                if (d6 == 0.0d) {
                    d6 = 1.0d;
                }
                ((k) this.x0).b(((int) (-Math.min((1.0d - Math.pow(100.0d, d8 / d6)) * d5, d7))) - this.k0, true);
            }
        } else if (f3 >= 0.0f) {
            double d9 = this.o0 * this.i0;
            double max4 = Math.max(this.f2450g / 2, getHeight());
            double max5 = Math.max(0.0f, this.f2455l * f3);
            double d10 = -max5;
            if (max4 == 0.0d) {
                max4 = 1.0d;
            }
            ((k) this.x0).b((int) Math.min((1.0d - Math.pow(100.0d, d10 / max4)) * d9, max5), true);
        } else {
            double d11 = this.p0 * this.k0;
            double max6 = Math.max(this.f2450g / 2, getHeight());
            double d12 = -Math.min(0.0f, this.f2455l * f3);
            double d13 = -d12;
            if (max6 == 0.0d) {
                max6 = 1.0d;
            }
            ((k) this.x0).b((int) (-Math.min((1.0d - Math.pow(100.0d, d13 / max6)) * d11, d12)), true);
        }
        if (!this.K || this.S || !o(this.B) || f3 >= 0.0f || (bVar = this.y0) == f.j.a.a.g.b.Refreshing || bVar == f.j.a.a.g.b.Loading || bVar == f.j.a.a.g.b.LoadFinish) {
            return;
        }
        if (this.R) {
            this.J0 = null;
            ((k) this.x0).a(-this.k0);
        }
        setStateDirectLoading(false);
        this.w0.postDelayed(new e(), this.f2449f);
    }

    public void r(f.j.a.a.g.b bVar) {
        f.j.a.a.g.b bVar2 = this.y0;
        if (bVar2 != bVar) {
            this.y0 = bVar;
            this.z0 = bVar;
            f.j.a.a.f.g gVar = this.s0;
            f.j.a.a.f.g gVar2 = this.t0;
            if (gVar != null) {
                gVar.a(this, bVar2, bVar);
            }
            if (gVar2 != null) {
                gVar2.a(this, bVar2, bVar);
            }
            if (bVar == f.j.a.a.g.b.LoadFinish) {
                this.G0 = false;
            }
        } else if (this.z0 != bVar2) {
            this.z0 = bVar2;
        }
    }

    public void s() {
        f.j.a.a.g.b bVar = this.y0;
        if (bVar == f.j.a.a.g.b.TwoLevel) {
            if (this.v > -1000 && this.b > getMeasuredHeight() / 2) {
                ValueAnimator a2 = ((k) this.x0).a(getMeasuredHeight());
                if (a2 != null) {
                    a2.setDuration(this.f2448e);
                }
            } else if (this.n) {
                k kVar = (k) this.x0;
                SmartRefreshLayout smartRefreshLayout = SmartRefreshLayout.this;
                if (smartRefreshLayout.y0 == f.j.a.a.g.b.TwoLevel) {
                    ((k) smartRefreshLayout.x0).d(f.j.a.a.g.b.TwoLevelFinish);
                    if (SmartRefreshLayout.this.b == 0) {
                        kVar.b(0, false);
                        SmartRefreshLayout.this.r(f.j.a.a.g.b.None);
                        return;
                    }
                    kVar.a(0).setDuration(SmartRefreshLayout.this.f2448e);
                }
            }
        } else if (bVar != f.j.a.a.g.b.Loading && (!this.G || !this.S || !this.T || this.b >= 0 || !o(this.B))) {
            f.j.a.a.g.b bVar2 = this.y0;
            if (bVar2 == f.j.a.a.g.b.Refreshing) {
                int i2 = this.b;
                int i3 = this.i0;
                if (i2 > i3) {
                    ((k) this.x0).a(i3);
                } else if (i2 < 0) {
                    ((k) this.x0).a(0);
                }
            } else if (bVar2 == f.j.a.a.g.b.PullDownToRefresh) {
                ((k) this.x0).d(f.j.a.a.g.b.PullDownCanceled);
            } else if (bVar2 == f.j.a.a.g.b.PullUpToLoad) {
                ((k) this.x0).d(f.j.a.a.g.b.PullUpCanceled);
            } else if (bVar2 == f.j.a.a.g.b.ReleaseToRefresh) {
                ((k) this.x0).d(f.j.a.a.g.b.Refreshing);
            } else if (bVar2 == f.j.a.a.g.b.ReleaseToLoad) {
                ((k) this.x0).d(f.j.a.a.g.b.Loading);
            } else if (bVar2 == f.j.a.a.g.b.ReleaseToTwoLevel) {
                ((k) this.x0).d(f.j.a.a.g.b.TwoLevelReleased);
            } else if (bVar2 == f.j.a.a.g.b.RefreshReleased) {
                if (this.K0 == null) {
                    ((k) this.x0).a(this.i0);
                }
            } else if (bVar2 == f.j.a.a.g.b.LoadReleased) {
                if (this.K0 == null) {
                    ((k) this.x0).a(-this.k0);
                }
            } else if (this.b != 0) {
                ((k) this.x0).a(0);
            }
        } else {
            int i4 = this.b;
            int i5 = this.k0;
            if (i4 < (-i5)) {
                ((k) this.x0).a(-i5);
            } else if (i4 > 0) {
                ((k) this.x0).a(0);
            }
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.P = z;
        this.g0.setNestedScrollingEnabled(z);
    }

    public void setStateDirectLoading(boolean z) {
        if (this.y0 != f.j.a.a.g.b.Loading) {
            this.A0 = System.currentTimeMillis();
            this.G0 = true;
            r(f.j.a.a.g.b.Loading);
            f.j.a.a.l.b bVar = this.b0;
            if (bVar == null) {
                i(2000, true, false);
            } else if (z) {
                bVar.d(this);
            }
            f.j.a.a.f.g gVar = this.t0;
            if (gVar != null) {
                int i2 = this.k0;
                gVar.b(this, i2, (int) (this.p0 * i2));
            }
        }
    }

    public void setStateLoading(boolean z) {
        a aVar = new a(z);
        r(f.j.a.a.g.b.LoadReleased);
        ValueAnimator a2 = ((k) this.x0).a(-this.k0);
        if (a2 != null) {
            a2.addListener(aVar);
        }
        f.j.a.a.f.g gVar = this.t0;
        if (gVar != null) {
            int i2 = this.k0;
            gVar.k(this, i2, (int) (this.p0 * i2));
        }
        if (a2 == null) {
            aVar.onAnimationEnd(null);
        }
    }

    public void setStateRefreshing(boolean z) {
        b bVar = new b(z);
        r(f.j.a.a.g.b.RefreshReleased);
        ValueAnimator a2 = ((k) this.x0).a(this.i0);
        if (a2 != null) {
            a2.addListener(bVar);
        }
        f.j.a.a.f.g gVar = this.s0;
        if (gVar != null) {
            int i2 = this.i0;
            gVar.k(this, i2, (int) (this.o0 * i2));
        }
        if (a2 == null) {
            bVar.onAnimationEnd(null);
        }
    }

    public void setViceState(f.j.a.a.g.b bVar) {
        f.j.a.a.g.b bVar2 = this.y0;
        if (bVar2.f6212d && bVar2.a != bVar.a) {
            r(f.j.a.a.g.b.None);
        }
        if (this.z0 != bVar) {
            this.z0 = bVar;
        }
    }

    public f.j.a.a.f.i t(boolean z) {
        this.U = true;
        this.B = z;
        return this;
    }

    public f.j.a.a.f.i u(boolean z) {
        if (this.y0 == f.j.a.a.g.b.Refreshing && z) {
            l(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.A0))), 300) << 16, true, Boolean.TRUE);
        } else if (this.y0 == f.j.a.a.g.b.Loading && z) {
            i(Math.min(Math.max(0, 300 - ((int) (System.currentTimeMillis() - this.A0))), 300) << 16, true, true);
        } else if (this.S != z) {
            this.S = z;
            f.j.a.a.f.g gVar = this.t0;
            if (gVar instanceof f.j.a.a.f.e) {
                if (((f.j.a.a.f.e) gVar).d(z)) {
                    this.T = true;
                    if (this.S && this.G && this.b > 0 && this.t0.getSpinnerStyle() == f.j.a.a.g.c.f6216d && o(this.B) && p(this.A, this.s0)) {
                        this.t0.getView().setTranslationY(this.b);
                    }
                } else {
                    this.T = false;
                    StringBuilder o = f.b.a.a.a.o("Footer:");
                    o.append(this.t0);
                    o.append(" NoMoreData is not supported.(不支持NoMoreData，请使用[ClassicsFooter]或者[自定义Footer并实现setNoMoreData方法且返回true])");
                    new RuntimeException(o.toString()).printStackTrace();
                }
            }
        }
        return this;
    }

    public f.j.a.a.f.i v(f.j.a.a.l.b bVar) {
        this.b0 = bVar;
        this.B = this.B || !this.U;
        return this;
    }

    public f.j.a.a.f.i w(@ColorRes int... iArr) {
        int[] iArr2 = new int[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[i2] = ContextCompat.getColor(getContext(), iArr[i2]);
        }
        f.j.a.a.f.g gVar = this.s0;
        if (gVar != null) {
            gVar.setPrimaryColors(iArr2);
        }
        f.j.a.a.f.g gVar2 = this.t0;
        if (gVar2 != null) {
            gVar2.setPrimaryColors(iArr2);
        }
        this.z = iArr2;
        return this;
    }

    public f.j.a.a.f.i x(@NonNull f.j.a.a.f.e eVar) {
        f.j.a.a.f.g gVar;
        f.j.a.a.f.g gVar2 = this.t0;
        if (gVar2 != null) {
            super.removeView(gVar2.getView());
        }
        this.t0 = eVar;
        this.G0 = false;
        this.C0 = 0;
        this.T = false;
        this.E0 = false;
        this.l0 = this.l0.b();
        this.B = !this.U || this.B;
        if (this.t0.getSpinnerStyle().b) {
            super.addView(this.t0.getView(), getChildCount(), new j(-1, -2));
        } else {
            super.addView(this.t0.getView(), 0, new j(-1, -2));
        }
        int[] iArr = this.z;
        if (iArr != null && (gVar = this.t0) != null) {
            gVar.setPrimaryColors(iArr);
        }
        return this;
    }

    public f.j.a.a.f.i y(@NonNull f.j.a.a.f.f fVar) {
        f.j.a.a.f.g gVar;
        f.j.a.a.f.g gVar2 = this.s0;
        if (gVar2 != null) {
            super.removeView(gVar2.getView());
        }
        this.s0 = fVar;
        this.B0 = 0;
        this.D0 = false;
        this.j0 = this.j0.b();
        if (this.s0.getSpinnerStyle().b) {
            super.addView(this.s0.getView(), getChildCount(), new j(-1, -2));
        } else {
            super.addView(this.s0.getView(), 0, new j(-1, -2));
        }
        int[] iArr = this.z;
        if (iArr != null && (gVar = this.s0) != null) {
            gVar.setPrimaryColors(iArr);
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ac, code lost:
        if (r14.b >= (-r14.k0)) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ba, code lost:
        if (r14.b > r14.i0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x010b, code lost:
        if (r2 < (-r14.k0)) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean z(float r14) {
        /*
            Method dump skipped, instructions count: 387
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.scwang.smartrefresh.layout.SmartRefreshLayout.z(float):boolean");
    }

    /* loaded from: classes.dex */
    public static class j extends ViewGroup.MarginLayoutParams {
        public int a;
        public f.j.a.a.g.c b;

        public j(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 0;
            this.b = null;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.a.a.d.SmartRefreshLayout_Layout);
            this.a = obtainStyledAttributes.getColor(f.j.a.a.d.SmartRefreshLayout_Layout_layout_srlBackgroundColor, this.a);
            if (obtainStyledAttributes.hasValue(f.j.a.a.d.SmartRefreshLayout_Layout_layout_srlSpinnerStyle)) {
                this.b = f.j.a.a.g.c.f6221i[obtainStyledAttributes.getInt(f.j.a.a.d.SmartRefreshLayout_Layout_layout_srlSpinnerStyle, f.j.a.a.g.c.f6216d.a)];
            }
            obtainStyledAttributes.recycle();
        }

        public j(int i2, int i3) {
            super(i2, i3);
            this.a = 0;
            this.b = null;
        }
    }
}
