package f.i.a.a.f1;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment;
import f.i.a.a.f1.a;
import f.i.a.a.k1.c;
import f.i.a.a.t0;
import java.lang.ref.WeakReference;

/* compiled from: RenderTextureView.java */
/* loaded from: classes.dex */
public class d extends TextureView implements a {
    public a.AbstractC0064a a;
    public b b = new b();

    /* renamed from: c  reason: collision with root package name */
    public boolean f4707c;

    /* renamed from: d  reason: collision with root package name */
    public Surface f4708d;

    /* compiled from: RenderTextureView.java */
    /* loaded from: classes.dex */
    public static final class b implements a.b {
        public WeakReference<Surface> a;
        public WeakReference<d> b;

        public b(d dVar, SurfaceTexture surfaceTexture) {
            this.b = new WeakReference<>(dVar);
            this.a = new WeakReference<>(new Surface(surfaceTexture));
        }

        @Override // f.i.a.a.f1.a.b
        public void a(t0 t0Var) {
            WeakReference<d> weakReference = this.b;
            d dVar = weakReference != null ? weakReference.get() : null;
            if (t0Var != null && this.a != null && dVar != null) {
                SurfaceTexture ownSurfaceTexture = dVar.getOwnSurfaceTexture();
                SurfaceTexture surfaceTexture = dVar.getSurfaceTexture();
                boolean z = ownSurfaceTexture != null && !((ownSurfaceTexture == null || Build.VERSION.SDK_INT < 26) ? false : ownSurfaceTexture.isReleased());
                if (!dVar.f4707c || !z) {
                    Surface surface = this.a.get();
                    if (surface != null) {
                        t0Var.O();
                        t0Var.H();
                        t0Var.K(surface, false);
                        t0Var.E(-1, -1);
                        dVar.setSurface(surface);
                    }
                } else if (!ownSurfaceTexture.equals(surfaceTexture)) {
                    dVar.setSurfaceTexture(ownSurfaceTexture);
                } else {
                    Surface surface2 = dVar.getSurface();
                    if (surface2 != null) {
                        surface2.release();
                    }
                    Surface surface3 = new Surface(ownSurfaceTexture);
                    t0Var.O();
                    t0Var.H();
                    t0Var.K(surface3, false);
                    t0Var.E(-1, -1);
                    dVar.setSurface(surface3);
                }
            }
        }
    }

    /* compiled from: RenderTextureView.java */
    /* loaded from: classes.dex */
    public class c implements TextureView.SurfaceTextureListener {
        public c(a aVar) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
            d dVar = d.this;
            a.AbstractC0064a aVar = dVar.a;
            if (aVar != null) {
                ((c.a) aVar).a(new b(dVar, surfaceTexture), i2, i3);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            d dVar = d.this;
            a.AbstractC0064a aVar = dVar.a;
            if (aVar != null) {
                new WeakReference(dVar);
                new WeakReference(new Surface(surfaceTexture));
                c.a aVar2 = (c.a) aVar;
                String str = f.i.a.a.k1.c.t;
                f.i.a.a.k1.c.this.f5465c.toString();
                f.i.a.a.k1.c.this.r = null;
            }
            return !d.this.f4707c;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
            d dVar = d.this;
            a.AbstractC0064a aVar = dVar.a;
            if (aVar != null) {
                new WeakReference(dVar);
                new WeakReference(new Surface(surfaceTexture));
                c.a aVar2 = (c.a) aVar;
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    public d(Context context) {
        super(context, null);
        setSurfaceTextureListener(new c(null));
        b bVar = this.b;
        bVar.a = 480;
        bVar.b = BottomAppBarTopEdgeTreatment.ANGLE_UP;
        requestLayout();
    }

    @Override // f.i.a.a.f1.a
    public void a(int i2, int i3) {
        b bVar = this.b;
        bVar.a = i2;
        bVar.b = i3;
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
        int i3;
        int i4;
        b bVar = this.b;
        int i5 = bVar.b;
        float f2 = (i5 == 0 || (i4 = bVar.a) == 0) ? 1.0f : (((float) i4) * bVar.f4706i) / ((float) i5);
        if (i2 != 0 && ((i3 = bVar.f4705h) == 90 || i3 == 270)) {
            f2 = 1.0f / f2;
        }
        if (f2 < 1.0f) {
            bVar.f4705h = i2;
            setRotation((float) i2);
        }
    }

    public SurfaceTexture getOwnSurfaceTexture() {
        return null;
    }

    @Override // f.i.a.a.f1.a
    public View getRenderView() {
        return this;
    }

    @Override // f.i.a.a.f1.a
    public int getResizeMode() {
        return this.b.f4704g;
    }

    public Surface getSurface() {
        return this.f4708d;
    }

    @Override // android.view.TextureView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
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

    public void setSurface(Surface surface) {
        this.f4708d = surface;
    }

    public void setTakeOverSurfaceTexture(boolean z) {
        this.f4707c = z;
    }

    @Override // f.i.a.a.f1.a
    public void setVideoRotation(int i2) {
        this.b.f4705h = i2;
        setRotation((float) i2);
    }
}
