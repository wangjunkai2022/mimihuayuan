package f.i.a.a.f1;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment;
import f.i.a.a.f1.a;
import f.i.a.a.k1.c;
import f.i.a.a.t0;
import java.lang.ref.WeakReference;

/* compiled from: RenderSurfaceView.java */
/* loaded from: classes.dex */
public class c extends SurfaceView implements f.i.a.a.f1.a {
    public a.InterfaceC0071a a;
    public f.i.a.a.f1.b b;

    /* compiled from: RenderSurfaceView.java */
    /* loaded from: classes.dex */
    public static final class b implements a.b {
        public WeakReference<SurfaceHolder> a;

        public b(SurfaceHolder surfaceHolder) {
            this.a = new WeakReference<>(surfaceHolder);
        }

        @Override // f.i.a.a.f1.a.b
        public void a(t0 t0Var) {
            if (t0Var == null || this.a.get() == null) {
                return;
            }
            t0Var.J(this.a.get());
        }
    }

    /* compiled from: RenderSurfaceView.java */
    /* renamed from: f.i.a.a.f1.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class SurfaceHolder$CallbackC0072c implements SurfaceHolder.Callback {
        public SurfaceHolder$CallbackC0072c(a aVar) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            a.InterfaceC0071a interfaceC0071a = c.this.a;
            if (interfaceC0071a != null) {
                new WeakReference(surfaceHolder);
                c.a aVar = (c.a) interfaceC0071a;
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            a.InterfaceC0071a interfaceC0071a = c.this.a;
            if (interfaceC0071a != null) {
                ((c.a) interfaceC0071a).a(new b(surfaceHolder), 0, 0);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            a.InterfaceC0071a interfaceC0071a = c.this.a;
            if (interfaceC0071a != null) {
                new WeakReference(surfaceHolder);
                c.a aVar = (c.a) interfaceC0071a;
                String str = f.i.a.a.k1.c.t;
                f.i.a.a.k1.c.this.f5540c.toString();
                f.i.a.a.k1.c.this.r = null;
            }
        }
    }

    public c(Context context) {
        super(context, null);
        this.b = new f.i.a.a.f1.b();
        getHolder().addCallback(new SurfaceHolder$CallbackC0072c(null));
        f.i.a.a.f1.b bVar = this.b;
        bVar.a = 480;
        bVar.b = BottomAppBarTopEdgeTreatment.ANGLE_UP;
        getHolder().setFixedSize(480, BottomAppBarTopEdgeTreatment.ANGLE_UP);
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void a(int i2, int i3) {
        f.i.a.a.f1.b bVar = this.b;
        bVar.a = i2;
        bVar.b = i3;
        if (i2 != 0 && i3 != 0) {
            getHolder().setFixedSize(i2, i3);
        }
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void b(int i2) {
        this.b.f4779g = i2;
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void c(int i2, int i3) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        f.i.a.a.f1.b bVar = this.b;
        bVar.f4775c = i2;
        bVar.f4776d = i3;
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void d(int i2) {
    }

    @Override // f.i.a.a.f1.a
    public View getRenderView() {
        return this;
    }

    @Override // f.i.a.a.f1.a
    public int getResizeMode() {
        return this.b.f4779g;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.b.a(i2, i3);
        f.i.a.a.f1.b bVar = this.b;
        setMeasuredDimension(bVar.f4777e, bVar.f4778f);
    }

    @Override // f.i.a.a.f1.a
    public void setPixelWidthHeightRatio(float f2) {
        this.b.f4781i = f2;
    }

    @Override // f.i.a.a.f1.a
    public void setRenderCallback(a.InterfaceC0071a interfaceC0071a) {
        this.a = interfaceC0071a;
    }

    @Override // f.i.a.a.f1.a
    public void setVideoRotation(int i2) {
    }
}
