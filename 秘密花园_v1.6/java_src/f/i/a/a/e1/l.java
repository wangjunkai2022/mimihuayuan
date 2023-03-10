package f.i.a.a.e1;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.lang.reflect.Constructor;
import java.util.List;
/* compiled from: DefaultDownloaderFactory.java */
/* loaded from: classes.dex */
public class l implements x {
    @Nullable
    public static final Constructor<? extends v> b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public static final Constructor<? extends v> f4717c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public static final Constructor<? extends v> f4718d;
    public final w a;

    static {
        Constructor<? extends v> constructor;
        Constructor<? extends v> constructor2;
        Constructor<? extends v> constructor3 = null;
        try {
            constructor = c(Class.forName("f.i.a.a.h1.t0.l.a"));
        } catch (ClassNotFoundException unused) {
            constructor = null;
        }
        b = constructor;
        try {
            constructor2 = c(Class.forName("f.i.a.a.h1.u0.s.a"));
        } catch (ClassNotFoundException unused2) {
            constructor2 = null;
        }
        f4717c = constructor2;
        try {
            constructor3 = c(Class.forName("f.i.a.a.h1.v0.f.a"));
        } catch (ClassNotFoundException unused3) {
        }
        f4718d = constructor3;
    }

    public l(w wVar) {
        this.a = wVar;
    }

    public static Constructor<? extends v> c(Class<?> cls) {
        try {
            return cls.asSubclass(v.class).getConstructor(Uri.class, List.class, w.class);
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Downloader constructor missing", e2);
        }
    }

    public v a(u uVar) {
        char c2;
        String str = uVar.b;
        int hashCode = str.hashCode();
        if (hashCode == 3680) {
            if (str.equals("ss")) {
                c2 = 3;
            }
            c2 = 65535;
        } else if (hashCode == 103407) {
            if (str.equals("hls")) {
                c2 = 2;
            }
            c2 = 65535;
        } else if (hashCode != 3075986) {
            if (hashCode == 1131547531 && str.equals("progressive")) {
                c2 = 0;
            }
            c2 = 65535;
        } else {
            if (str.equals("dash")) {
                c2 = 1;
            }
            c2 = 65535;
        }
        if (c2 != 0) {
            if (c2 != 1) {
                if (c2 != 2) {
                    if (c2 == 3) {
                        return b(uVar, f4718d);
                    }
                    StringBuilder o = f.b.a.a.a.o("Unsupported type: ");
                    o.append(uVar.b);
                    throw new IllegalArgumentException(o.toString());
                }
                return b(uVar, f4717c);
            }
            return b(uVar, b);
        }
        return new a0(uVar.f4772c, uVar.f4774e, this.a);
    }

    public final v b(u uVar, @Nullable Constructor<? extends v> constructor) {
        if (constructor != null) {
            try {
                return constructor.newInstance(uVar.f4772c, uVar.f4773d, this.a);
            } catch (Exception e2) {
                StringBuilder o = f.b.a.a.a.o("Failed to instantiate downloader for: ");
                o.append(uVar.b);
                throw new RuntimeException(o.toString(), e2);
            }
        }
        StringBuilder o2 = f.b.a.a.a.o("Module missing for: ");
        o2.append(uVar.b);
        throw new IllegalStateException(o2.toString());
    }
}
