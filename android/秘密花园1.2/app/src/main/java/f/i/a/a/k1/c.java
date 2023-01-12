package f.i.a.a.k1;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ui.SubtitleView;
import f.i.a.a.f1.a;
import f.i.a.a.k1.e;
import f.i.a.a.l0;
import f.i.a.a.t0;

/* compiled from: ExoPlayerView.java */
/* loaded from: classes.dex */
public class c extends e {
    public static final String t = c.class.getName();
    public a.b r;
    public final a.InterfaceC0071a s;

    /* compiled from: ExoPlayerView.java */
    /* loaded from: classes.dex */
    public class a implements a.InterfaceC0071a {
        public a() {
        }

        public void a(a.b bVar, int i2, int i3) {
            String str = c.t;
            c cVar = c.this;
            if (cVar.r == null) {
                cVar.r = bVar;
                bVar.a((t0) cVar.f5546i);
            }
        }
    }

    public c(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.s = new a();
    }

    public FrameLayout getContentFrameLayout() {
        return this.q;
    }

    public d getControllerView() {
        return this.f5543f;
    }

    @Override // f.i.a.a.k1.e, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f5547j && this.f5546i != null && motionEvent.getActionMasked() == 0 && this.p) {
            if (!this.f5543f.k()) {
                this.f5543f.p();
                f(true);
            } else if (this.p) {
                this.f5543f.q();
            }
            return true;
        }
        return false;
    }

    @Override // f.i.a.a.k1.e
    public void setPlayer(l0 l0Var) {
        l0 l0Var2 = this.f5546i;
        if (l0Var2 == l0Var) {
            return;
        }
        if (l0Var2 != null) {
            l0Var2.y(this.f5544g);
            l0.d g2 = this.f5546i.g();
            if (g2 != null) {
                ((t0) g2).f5860f.remove(this.f5544g);
            }
            l0.c D = this.f5546i.D();
            if (D != null) {
                ((t0) D).f5862h.remove(this.f5544g);
            }
        }
        this.f5546i = l0Var;
        if (this.f5547j) {
            this.f5543f.setPlayer(l0Var);
        }
        SubtitleView subtitleView = this.f5542e;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        j(true);
        if (l0Var != null) {
            l0.d g3 = l0Var.g();
            if (g3 != null) {
                ((t0) g3).f5860f.add(this.f5544g);
            }
            l0.c D2 = l0Var.D();
            if (D2 != null) {
                e.b bVar = this.f5544g;
                t0 t0Var = (t0) D2;
                if (!t0Var.B.isEmpty()) {
                    bVar.e(t0Var.B);
                }
                t0Var.f5862h.add(bVar);
            }
            l0Var.r(this.f5544g);
            f(false);
            j(false);
            if (this.f5540c.getRenderView() instanceof f.i.a.a.f1.d) {
                ((f.i.a.a.f1.d) this.f5540c).setTakeOverSurfaceTexture(true);
            }
            a.b bVar2 = this.r;
            if (bVar2 != null) {
                bVar2.a((t0) this.f5546i);
            }
            this.f5540c.setRenderCallback(this.s);
            return;
        }
        d();
        c();
    }
}
