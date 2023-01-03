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
import c.a.a.b.g.h;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.l;

/* compiled from: DummySurface.java */
@TargetApi(17)
/* loaded from: classes.dex */
public final class k extends Surface {

    /* renamed from: c  reason: collision with root package name */
    public static int f5735c;

    /* renamed from: d  reason: collision with root package name */
    public static boolean f5736d;
    public final b a;
    public boolean b;

    /* compiled from: DummySurface.java */
    /* loaded from: classes.dex */
    public static class b extends HandlerThread implements Handler.Callback {
        public l a;
        public Handler b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public Error f5737c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public RuntimeException f5738d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public k f5739e;

        public b() {
            super("dummySurface");
        }

        public final void a(int i2) {
            int[] iArr;
            EGLSurface eGLSurface;
            int[] iArr2;
            h.t(this.a);
            l lVar = this.a;
            if (lVar != null) {
                boolean z = false;
                EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
                if (eglGetDisplay != null) {
                    int[] iArr3 = new int[2];
                    if (EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1)) {
                        lVar.f5677d = eglGetDisplay;
                        EGLConfig[] eGLConfigArr = new EGLConfig[1];
                        int[] iArr4 = new int[1];
                        boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, l.f5675h, 0, eGLConfigArr, 0, 1, iArr4, 0);
                        if (!eglChooseConfig || iArr4[0] <= 0 || eGLConfigArr[0] == null) {
                            throw new l.b(h0.u("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]), null);
                        }
                        EGLConfig eGLConfig = eGLConfigArr[0];
                        EGLDisplay eGLDisplay = lVar.f5677d;
                        if (i2 == 0) {
                            iArr = new int[]{12440, 2, 12344};
                        } else {
                            iArr = new int[]{12440, 2, 12992, 1, 12344};
                        }
                        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
                        if (eglCreateContext != null) {
                            lVar.f5678e = eglCreateContext;
                            EGLDisplay eGLDisplay2 = lVar.f5677d;
                            if (i2 == 1) {
                                eGLSurface = EGL14.EGL_NO_SURFACE;
                            } else {
                                if (i2 == 2) {
                                    iArr2 = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
                                } else {
                                    iArr2 = new int[]{12375, 1, 12374, 1, 12344};
                                }
                                eGLSurface = EGL14.eglCreatePbufferSurface(eGLDisplay2, eGLConfig, iArr2, 0);
                                if (eGLSurface == null) {
                                    throw new l.b("eglCreatePbufferSurface failed", null);
                                }
                            }
                            if (EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, eglCreateContext)) {
                                lVar.f5679f = eGLSurface;
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
                                lVar.f5680g = surfaceTexture;
                                surfaceTexture.setOnFrameAvailableListener(lVar);
                                SurfaceTexture surfaceTexture2 = this.a.f5680g;
                                h.t(surfaceTexture2);
                                if (i2 != 0) {
                                    z = true;
                                }
                                this.f5739e = new k(this, surfaceTexture2, z, null);
                                return;
                            }
                            throw new l.b("eglMakeCurrent failed", null);
                        }
                        throw new l.b("eglCreateContext failed", null);
                    }
                    throw new l.b("eglInitialize failed", null);
                }
                throw new l.b("eglGetDisplay failed", null);
            }
            throw null;
        }

        /* JADX INFO: finally extract failed */
        public final void b() {
            h.t(this.a);
            l lVar = this.a;
            lVar.a.removeCallbacks(lVar);
            try {
                if (lVar.f5680g != null) {
                    lVar.f5680g.release();
                    GLES20.glDeleteTextures(1, lVar.b, 0);
                }
                EGLDisplay eGLDisplay = lVar.f5677d;
                if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay2 = lVar.f5677d;
                    EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface2 = lVar.f5679f;
                if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(lVar.f5677d, lVar.f5679f);
                }
                EGLContext eGLContext = lVar.f5678e;
                if (eGLContext != null) {
                    EGL14.eglDestroyContext(lVar.f5677d, eGLContext);
                }
                if (h0.a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay3 = lVar.f5677d;
                if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(lVar.f5677d);
                }
                lVar.f5677d = null;
                lVar.f5678e = null;
                lVar.f5679f = null;
                lVar.f5680g = null;
            } catch (Throwable th) {
                EGLDisplay eGLDisplay4 = lVar.f5677d;
                if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGLDisplay eGLDisplay5 = lVar.f5677d;
                    EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                    EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
                }
                EGLSurface eGLSurface4 = lVar.f5679f;
                if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                    EGL14.eglDestroySurface(lVar.f5677d, lVar.f5679f);
                }
                EGLContext eGLContext2 = lVar.f5678e;
                if (eGLContext2 != null) {
                    EGL14.eglDestroyContext(lVar.f5677d, eGLContext2);
                }
                if (h0.a >= 19) {
                    EGL14.eglReleaseThread();
                }
                EGLDisplay eGLDisplay6 = lVar.f5677d;
                if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                    EGL14.eglTerminate(lVar.f5677d);
                }
                lVar.f5677d = null;
                lVar.f5678e = null;
                lVar.f5679f = null;
                lVar.f5680g = null;
                throw th;
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            try {
                if (i2 == 1) {
                    try {
                        a(message.arg1);
                        synchronized (this) {
                            notify();
                        }
                    } catch (Error e2) {
                        this.f5737c = e2;
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e3) {
                        this.f5738d = e3;
                        synchronized (this) {
                            notify();
                        }
                    }
                    return true;
                } else if (i2 != 2) {
                    return true;
                } else {
                    try {
                        b();
                    } catch (Throwable unused) {
                    }
                    quit();
                    return true;
                }
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
        if (h0.a < 26 && ("samsung".equals(h0.f5662c) || "XT1650".equals(h0.f5663d))) {
            return 0;
        }
        if ((h0.a >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && eglQueryString.contains("EGL_EXT_protected_content")) {
            return eglQueryString.contains("EGL_KHR_surfaceless_context") ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean b(Context context) {
        boolean z;
        synchronized (k.class) {
            z = true;
            if (!f5736d) {
                f5735c = h0.a < 24 ? 0 : a(context);
                f5736d = true;
            }
            if (f5735c == 0) {
                z = false;
            }
        }
        return z;
    }

    public static k c(Context context, boolean z) {
        if (h0.a >= 17) {
            boolean z2 = false;
            h.v(!z || b(context));
            b bVar = new b();
            int i2 = z ? f5735c : 0;
            bVar.start();
            Handler handler = new Handler(bVar.getLooper(), bVar);
            bVar.b = handler;
            bVar.a = new l(handler);
            synchronized (bVar) {
                bVar.b.obtainMessage(1, i2, 0).sendToTarget();
                while (bVar.f5739e == null && bVar.f5738d == null && bVar.f5737c == null) {
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
            RuntimeException runtimeException = bVar.f5738d;
            if (runtimeException == null) {
                Error error = bVar.f5737c;
                if (error == null) {
                    k kVar = bVar.f5739e;
                    h.t(kVar);
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
                h.t(bVar.b);
                bVar.b.sendEmptyMessage(2);
                this.b = true;
            }
        }
    }
}
