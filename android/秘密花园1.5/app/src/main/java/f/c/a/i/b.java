package f.c.a.i;

import android.app.Dialog;
import android.content.Context;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;

/* compiled from: BasePickerView.java */
/* loaded from: classes.dex */
public class b {
    public Context a;
    public ViewGroup b;

    /* renamed from: c  reason: collision with root package name */
    public ViewGroup f3411c;

    /* renamed from: d  reason: collision with root package name */
    public ViewGroup f3412d;

    /* renamed from: e  reason: collision with root package name */
    public f.c.a.g.a f3413e;

    /* renamed from: f  reason: collision with root package name */
    public f.c.a.h.b f3414f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3415g;

    /* renamed from: h  reason: collision with root package name */
    public Animation f3416h;

    /* renamed from: i  reason: collision with root package name */
    public Animation f3417i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f3418j;

    /* renamed from: l  reason: collision with root package name */
    public Dialog f3420l;

    /* renamed from: k  reason: collision with root package name */
    public int f3419k = 80;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3421m = true;
    public View.OnKeyListener n = new View$OnKeyListenerC0031b();
    public final View.OnTouchListener o = new c();

    /* compiled from: BasePickerView.java */
    /* loaded from: classes.dex */
    public class a implements Animation.AnimationListener {
        public a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            b bVar = b.this;
            bVar.f3413e.s.post(new f.c.a.i.c(bVar));
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* compiled from: BasePickerView.java */
    /* renamed from: f.c.a.i.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class View$OnKeyListenerC0031b implements View.OnKeyListener {
        public View$OnKeyListenerC0031b() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i2, KeyEvent keyEvent) {
            if (i2 == 4 && keyEvent.getAction() == 0 && b.this.d()) {
                b.this.a();
                return true;
            }
            return false;
        }
    }

    /* compiled from: BasePickerView.java */
    /* loaded from: classes.dex */
    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                b.this.a();
                return false;
            }
            return false;
        }
    }

    public b(Context context) {
        this.a = context;
    }

    public void a() {
        if (c()) {
            Dialog dialog = this.f3420l;
            if (dialog != null) {
                dialog.dismiss();
            }
        } else if (this.f3415g) {
        } else {
            if (this.f3421m) {
                this.f3416h.setAnimationListener(new a());
                this.b.startAnimation(this.f3416h);
            } else {
                this.f3413e.s.post(new f.c.a.i.c(this));
            }
            this.f3415g = true;
        }
    }

    public View b(int i2) {
        return this.b.findViewById(i2);
    }

    public abstract boolean c();

    public boolean d() {
        if (c()) {
            return false;
        }
        return this.f3411c.getParent() != null || this.f3418j;
    }

    public void e() {
        if (((e) this).f3413e.K) {
            Dialog dialog = this.f3420l;
            if (dialog != null) {
                dialog.show();
            }
        } else if (d()) {
        } else {
            this.f3418j = true;
            this.f3413e.s.addView(this.f3411c);
            if (this.f3421m) {
                this.b.startAnimation(this.f3417i);
            }
            this.f3411c.requestFocus();
        }
    }
}
