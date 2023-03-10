package f.g.a;

import android.content.Context;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* compiled from: ReLinkerInstance.java */
/* loaded from: classes.dex */
public class f {
    public final Set<String> a;
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final c f4072c;

    /* compiled from: ReLinkerInstance.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ String b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f4073c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ e f4074d;

        public a(Context context, String str, String str2, e eVar) {
            this.a = context;
            this.b = str;
            this.f4073c = str2;
            this.f4074d = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f.this.d(this.a, this.b, this.f4073c);
                this.f4074d.b();
            } catch (b e2) {
                this.f4074d.a(e2);
            } catch (UnsatisfiedLinkError e3) {
                this.f4074d.a(e3);
            }
        }
    }

    public f() {
        h hVar = new h();
        f.g.a.a aVar = new f.g.a.a();
        this.a = new HashSet();
        this.b = hVar;
        this.f4072c = aVar;
    }

    public File a(Context context) {
        return context.getDir("lib", 0);
    }

    public File b(Context context, String str, String str2) {
        String a2 = ((h) this.b).a(str);
        if (c.a.a.b.g.h.i0(str2)) {
            return new File(a(context), a2);
        }
        return new File(a(context), f.b.a.a.a.g(a2, ".", str2));
    }

    public void c(Context context, String str, String str2, e eVar) {
        if (context != null) {
            if (!c.a.a.b.g.h.i0(str)) {
                String.format(Locale.US, "Beginning load of %s...", str);
                if (eVar == null) {
                    d(context, str, str2);
                    return;
                } else {
                    new Thread(new a(context, str, str2, eVar)).start();
                    return;
                }
            }
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        throw new IllegalArgumentException("Given context is null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x016a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0181 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v9, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(android.content.Context r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.g.a.f.d(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
