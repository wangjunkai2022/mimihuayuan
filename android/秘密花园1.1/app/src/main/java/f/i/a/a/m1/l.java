package f.i.a.a.m1;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.os.Handler;
import androidx.annotation.Nullable;

/* compiled from: EGLSurfaceTexture.java */
@TargetApi(17)
/* loaded from: classes.dex */
public final class l implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: h  reason: collision with root package name */
    public static final int[] f5675h = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};
    public final Handler a;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public EGLDisplay f5677d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public EGLContext f5678e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public EGLSurface f5679f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public SurfaceTexture f5680g;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final c f5676c = null;
    public final int[] b = new int[1];

    /* compiled from: EGLSurfaceTexture.java */
    /* loaded from: classes.dex */
    public static final class b extends RuntimeException {
        public b(String str, a aVar) {
            super(str);
        }
    }

    /* compiled from: EGLSurfaceTexture.java */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    public l(Handler handler) {
        this.a = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        c cVar = this.f5676c;
        if (cVar != null) {
            cVar.a();
        }
        SurfaceTexture surfaceTexture = this.f5680g;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }
}
