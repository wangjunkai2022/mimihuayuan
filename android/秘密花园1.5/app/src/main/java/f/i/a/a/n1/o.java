package f.i.a.a.n1;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: VideoFrameReleaseTimeHelper.java */
/* loaded from: classes.dex */
public final class o {
    public final WindowManager a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final a f5816c;

    /* renamed from: d  reason: collision with root package name */
    public long f5817d;

    /* renamed from: e  reason: collision with root package name */
    public long f5818e;

    /* renamed from: f  reason: collision with root package name */
    public long f5819f;

    /* renamed from: g  reason: collision with root package name */
    public long f5820g;

    /* renamed from: h  reason: collision with root package name */
    public long f5821h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5822i;

    /* renamed from: j  reason: collision with root package name */
    public long f5823j;

    /* renamed from: k  reason: collision with root package name */
    public long f5824k;

    /* renamed from: l  reason: collision with root package name */
    public long f5825l;

    /* compiled from: VideoFrameReleaseTimeHelper.java */
    @TargetApi(17)
    /* loaded from: classes.dex */
    public final class a implements DisplayManager.DisplayListener {
        public final DisplayManager a;

        public a(DisplayManager displayManager) {
            this.a = displayManager;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i2) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i2) {
            if (i2 == 0) {
                o.this.b();
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i2) {
        }
    }

    /* compiled from: VideoFrameReleaseTimeHelper.java */
    /* loaded from: classes.dex */
    public static final class b implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        public static final b f5826f = new b();
        public volatile long a = -9223372036854775807L;
        public final Handler b;

        /* renamed from: c  reason: collision with root package name */
        public final HandlerThread f5827c;

        /* renamed from: d  reason: collision with root package name */
        public Choreographer f5828d;

        /* renamed from: e  reason: collision with root package name */
        public int f5829e;

        public b() {
            HandlerThread handlerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.f5827c = handlerThread;
            handlerThread.start();
            Handler t = h0.t(this.f5827c.getLooper(), this);
            this.b = t;
            t.sendEmptyMessage(0);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j2) {
            this.a = j2;
            this.f5828d.postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 0) {
                this.f5828d = Choreographer.getInstance();
                return true;
            } else if (i2 == 1) {
                int i3 = this.f5829e + 1;
                this.f5829e = i3;
                if (i3 == 1) {
                    this.f5828d.postFrameCallback(this);
                }
                return true;
            } else if (i2 != 2) {
                return false;
            } else {
                int i4 = this.f5829e - 1;
                this.f5829e = i4;
                if (i4 == 0) {
                    this.f5828d.removeFrameCallback(this);
                    this.a = -9223372036854775807L;
                }
                return true;
            }
        }
    }

    public o(@Nullable Context context) {
        DisplayManager displayManager;
        a aVar = null;
        if (context != null) {
            context = context.getApplicationContext();
            this.a = (WindowManager) context.getSystemService("window");
        } else {
            this.a = null;
        }
        if (this.a != null) {
            if (h0.a >= 17 && (displayManager = (DisplayManager) context.getSystemService("display")) != null) {
                aVar = new a(displayManager);
            }
            this.f5816c = aVar;
            this.b = b.f5826f;
        } else {
            this.f5816c = null;
            this.b = null;
        }
        this.f5817d = -9223372036854775807L;
        this.f5818e = -9223372036854775807L;
    }

    public final boolean a(long j2, long j3) {
        return Math.abs((j3 - this.f5823j) - (j2 - this.f5824k)) > 20000000;
    }

    public final void b() {
        Display defaultDisplay = this.a.getDefaultDisplay();
        if (defaultDisplay != null) {
            long refreshRate = (long) (1.0E9d / defaultDisplay.getRefreshRate());
            this.f5817d = refreshRate;
            this.f5818e = (refreshRate * 80) / 100;
        }
    }
}
