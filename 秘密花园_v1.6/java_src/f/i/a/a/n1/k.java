package f.i.a.a.n1;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.l;
/* compiled from: DummySurface.java */
@TargetApi(17)
/* loaded from: classes.dex */
public final class k extends Surface {

    /* renamed from: c  reason: collision with root package name */
    public static int f5819c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f5820d;
    public final b a;
    public boolean b;

    /* compiled from: DummySurface.java */
    /* loaded from: classes.dex */
    public static class b extends HandlerThread implements Handler.Callback {
        public f.i.a.a.m1.l a;
        public Handler b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public Error f5821c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public RuntimeException f5822d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public k f5823e;

        public b() {
            super("dummySurface");
        }

        public final void a(int i2) {
            EGLSurface eglCreatePbufferSurface;
            c.a.a.b.g.h.t(this.a);
            f.i.a.a.m1.l lVar = this.a;
            if (lVar != null) {
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                if (eglGetDisplay != null) {
                    int[] iArr = new int[2];
                    if (EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1)) {
                        lVar.f5761d = eglGetDisplay;
                        EGLConfig[] eGLConfigArr = new EGLConfig[1];
                        int[] iArr2 = new int[1];
                        boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, f.i.a.a.m1.l.f5759h, 0, eGLConfigArr, 0, 1, iArr2, 0);
                        if (eglChooseConfig && iArr2[0] > 0 && eGLConfigArr[0] != null) {
                            EGLConfig eGLConfig = eGLConfigArr[0];
                            EGLContext eglCreateContext = EGL14.eglCreateContext(lVar.f5761d, eGLConfig, EGL14.EGL_NO_CONTEXT, i2 == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, 12992, 1, 12344}, 0);
                            if (eglCreateContext != null) {
                                lVar.f5762e = eglCreateContext;
                                EGLDisplay eGLDisplay = lVar.f5761d;
                                if (i2 == 1) {
                                    eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
                                } else {
                                    eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i2 == 2 ? new int[]{12375, 1, 12374, 1, 12992, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
                                    if (eglCreatePbufferSurface == null) {
                                        throw new l.b("eglCreatePbufferSurface failed", null);
                                    }
                                }
                                if (EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext)) {
                                    lVar.f5763f = eglCreatePbufferSurface;
                                    GLES20.glGenTextures(1, lVar.b, 0);
                                    int i3 = 0;
                                    while (true) {
                                        int glGetError = GLES20.glGetError();
                                        if (glGetError == 0) {
                                            break;
                                        }
                                        GLU.gluErrorString(i3);
                                        i3 = glGetError;
                                    }
                                    SurfaceTexture surfaceTexture = new SurfaceTexture(lVar.b[0]);
                                    lVar.f5764g = surfaceTexture;
                                    surfaceTexture.setOnFrameAvailableListener(lVar);
                                    SurfaceTexture surfaceTexture2 = this.a.f5764g;
                                    c.a.a.b.g.h.t(surfaceTexture2);
                                    this.f5823e = new k(this, surfaceTexture2, i2 != 0, null);
                                    return;
                                }
                                throw new l.b("eglMakeCurrent failed", null);
                            }
                            throw new l.b("eglCreateContext failed", null);
                        }
                        throw new l.b(h0.u("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr2[0]), eGLConfigArr[0]), null);
                    }
                    throw new l.b("eglInitialize failed", null);
                }
                throw new l.b("eglGetDisplay failed", null);
            }
            throw null;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
        public final void b() {
            c.a.a.b.g.h.t(this.a);
            f.i.a.a.m1.l lVar = this.a;
            lVar.a.removeCallbacks(lVar);
            try {
                if (lVar.f5764g != null) {
                    lVar.f5764g.release();
                    GLES20.glDeleteTextures(1, lVar.b, 0);
                }
            } finally {
                EGLDisplay eGLDisplay = lVar.f5761d;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = lVar.f5761d;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = lVar.f5763f;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(lVar.f5761d, lVar.f5763f);
                }
                EGLContext eGLContext = lVar.f5762e;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(lVar.f5761d, eGLContext);
                }
                if (h0.a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay3 = lVar.f5761d;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(lVar.f5761d);
                }
                lVar.f5761d = null;
                lVar.f5762e = null;
                lVar.f5763f = null;
                lVar.f5764g = null;
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            try {
                if (i2 != 1) {
                    if (i2 != 2) {
                        return true;
                    }
                    try {
                        b();
                    } catch (Throwable unused) {
                    }
                    quit();
                    return true;
                }
                try {
                    a(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    this.f5821c = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    this.f5822d = e3;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    public k(b bVar, SurfaceTexture surfaceTexture, boolean z, a aVar) {
        super(surfaceTexture);
        this.a = bVar;
    }

    @TargetApi(24)
    public static int a(Context context) {
        String eglQueryString;
        if (h0.a >= 26 || !("samsung".equals(h0.f5746c) || "XT1650".equals(h0.f5747d))) {
            if ((h0.a >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")) {
                return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
            }
            return 0;
        }
        return 0;
    }

    public static synchronized boolean b(Context context) {
        boolean z;
        synchronized (k.class) {
            if (!f5820d) {
                f5819c = h0.a < 24 ? 0 : a(context);
                f5820d = true;
            }
            z = f5819c != 0;
        }
        return z;
    }

    public static k c(Context context, boolean z) {
        if (h0.a >= 17) {
            boolean z2 = false;
            c.a.a.b.g.h.v(!z || b(context));
            b bVar = new b();
            int i2 = z ? f5819c : 0;
            bVar.start();
            Handler handler = new Handler(bVar.getLooper(), bVar);
            bVar.b = handler;
            bVar.a = new f.i.a.a.m1.l(handler);
            synchronized (bVar) {
                bVar.b.obtainMessage(1, i2, 0).sendToTarget();
                while (bVar.f5823e == null && bVar.f5822d == null && bVar.f5821c == null) {
                    try {
                        bVar.wait();
                    } catch (InterruptedException unused) {
                        z2 = true;
                    }
                }
            }
            if (z2) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = bVar.f5822d;
            if (runtimeException == null) {
                Error error = bVar.f5821c;
                if (error == null) {
                    k kVar = bVar.f5823e;
                    c.a.a.b.g.h.t(kVar);
                    return kVar;
                }
                throw error;
            }
            throw runtimeException;
        }
        throw new UnsupportedOperationException("Unsupported prior to API level 17");
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.a) {
            if (!this.b) {
                b bVar = this.a;
                c.a.a.b.g.h.t(bVar.b);
                bVar.b.sendEmptyMessage(2);
                this.b = true;
            }
        }
    }
}
