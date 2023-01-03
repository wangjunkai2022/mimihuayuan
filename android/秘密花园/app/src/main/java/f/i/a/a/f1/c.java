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
public class c extends SurfaceView implements a {
    public a.AbstractC0064a a;
    public b b = new b();

    /* compiled from: RenderSurfaceView.java */
    /* loaded from: classes.dex */
    public static final class b implements a.b {
        public WeakReference<SurfaceHolder> a;

        public b(SurfaceHolder surfaceHolder) {
            this.a = new WeakReference<>(surfaceHolder);
        }

        @Override // f.i.a.a.f1.a.b
        public void a(t0 t0Var) {
            if (t0Var != null && this.a.get() != null) {
                t0Var.J(this.a.get());
            }
        }
    }

    /* compiled from: RenderSurfaceView.java */
    /* renamed from: f.i.a.a.f1.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class SurfaceHolder$CallbackC0065c implements SurfaceHolder.Callback {
        public SurfaceHolder$CallbackC0065c(a aVar) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4) {
            a.AbstractC0064a aVar = c.this.a;
            if (aVar != null) {
                new WeakReference(surfaceHolder);
                c.a aVar2 = (c.a) aVar;
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            a.AbstractC0064a aVar = c.this.a;
            if (aVar != null) {
                ((c.a) aVar).a(new b(surfaceHolder), 0, 0);
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            a.AbstractC0064a aVar = c.this.a;
            if (aVar != null) {
                new WeakReference(surfaceHolder);
                c.a aVar2 = (c.a) aVar;
                String str = f.i.a.a.k1.c.t;
                f.i.a.a.k1.c.this.f5465c.toString();
                f.i.a.a.k1.c.this.r = null;
            }
        }
    }

    public c(Context context) {
        super(context, null);
        getHolder().addCallback(new SurfaceHolder$CallbackC0065c(null));
        b bVar = this.b;
        bVar.a = 480;
        bVar.b = BottomAppBarTopEdgeTreatment.ANGLE_UP;
        getHolder().setFixedSize(480, BottomAppBarTopEdgeTreatment.ANGLE_UP);
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void a(int i2, int i3) {
        b bVar = this.b;
        bVar.a = i2;
        bVar.b = i3;
        if (!(i2 == 0 || i3 == 0)) {
            getHolder().setFixedSize(i2, i3);
        }
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void b(int i2) {
        this.b.f4704g = i2;
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void c(int i2, int i3) {
        if (i2 > 0 && i3 > 0) {
            b bVar = this.b;
            bVar.f4700c = i2;
            bVar.f4701d = i3;
            requestLayout();
        }
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
        return this.b.f4704g;
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
        b bVar = this.b;
        setMeasuredDimension(bVar.f4702e, bVar.f4703f);
    }

    @Override // f.i.a.a.f1.a
    public void setPixelWidthHeightRatio(float f2) {
        this.b.f4706i = f2;
    }

    @Override // f.i.a.a.f1.a
    public void setRenderCallback(a.AbstractC0064a aVar) {
        this.a = aVar;
    }

    @Override // f.i.a.a.f1.a
    public void setVideoRotation(int i2) {
    }
}
