package f.d.a.o.p.c;

import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import java.io.File;

/* compiled from: HardwareConfigState.java */
/* loaded from: classes.dex */
public final class s {

    /* renamed from: d  reason: collision with root package name */
    public static final File f3774d = new File("/proc/self/fd");

    /* renamed from: e  reason: collision with root package name */
    public static volatile int f3775e = 700;

    /* renamed from: f  reason: collision with root package name */
    public static volatile int f3776f = 128;

    /* renamed from: g  reason: collision with root package name */
    public static volatile s f3777g;
    public final boolean a;
    @GuardedBy("this")
    public int b;
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    public boolean f3778c = true;

    @VisibleForTesting
    public s() {
        boolean z = true;
        String str = Build.MODEL;
        if (str != null && str.length() >= 7) {
            String substring = Build.MODEL.substring(0, 7);
            char c2 = 65535;
            switch (substring.hashCode()) {
                case -1398613787:
                    if (substring.equals("SM-A520")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -1398431166:
                    if (substring.equals("SM-G930")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1398431161:
                    if (substring.equals("SM-G935")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1398431073:
                    if (substring.equals("SM-G960")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1398431068:
                    if (substring.equals("SM-G965")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1398343746:
                    if (substring.equals("SM-J720")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1398222624:
                    if (substring.equals("SM-N935")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    if (Build.VERSION.SDK_INT == 26) {
                        z = false;
                        break;
                    }
                    break;
            }
        }
        this.a = z;
    }

    public static s a() {
        if (f3777g == null) {
            synchronized (s.class) {
                if (f3777g == null) {
                    f3777g = new s();
                }
            }
        }
        return f3777g;
    }

    public boolean b(int i2, int i3, boolean z, boolean z2) {
        boolean z3;
        if (!z || !this.a || Build.VERSION.SDK_INT < 26 || z2 || i2 < f3776f || i3 < f3776f) {
            return false;
        }
        synchronized (this) {
            int i4 = this.b + 1;
            this.b = i4;
            if (i4 >= 50) {
                this.b = 0;
                boolean z4 = f3774d.list().length < f3775e;
                this.f3778c = z4;
                if (!z4) {
                    Log.isLoggable("Downsampler", 5);
                }
            }
            z3 = this.f3778c;
        }
        return z3;
    }
}
