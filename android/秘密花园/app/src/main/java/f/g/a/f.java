package f.g.a;

import android.content.Context;
import c.a.a.b.g.h;
import java.io.File;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* compiled from: ReLinkerInstance.java */
/* loaded from: classes.dex */
public class f {
    public final Set<String> a = new HashSet();
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public final c f3988c;

    /* compiled from: ReLinkerInstance.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        public final /* synthetic */ Context a;
        public final /* synthetic */ String b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f3989c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ e f3990d;

        public a(Context context, String str, String str2, e eVar) {
            this.a = context;
            this.b = str;
            this.f3989c = str2;
            this.f3990d = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                f.this.d(this.a, this.b, this.f3989c);
                this.f3990d.b();
            } catch (b e2) {
                this.f3990d.a(e2);
            } catch (UnsatisfiedLinkError e3) {
                this.f3990d.a(e3);
            }
        }
    }

    public f() {
        h hVar = new h();
        a aVar = new a();
        this.b = hVar;
        this.f3988c = aVar;
    }

    public File a(Context context) {
        return context.getDir("lib", 0);
    }

    public File b(Context context, String str, String str2) {
        String a2 = ((h) this.b).a(str);
        if (h.i0(str2)) {
            return new File(a(context), a2);
        }
        return new File(a(context), f.b.a.a.a.g(a2, ".", str2));
    }

    public void c(Context context, String str, String str2, e eVar) {
        if (context == null) {
            throw new IllegalArgumentException("Given context is null");
        } else if (!h.i0(str)) {
            String.format(Locale.US, "Beginning load of %s...", str);
            if (eVar == null) {
                d(context, str, str2);
            } else {
                new Thread(new a(context, str, str2, eVar)).start();
            }
        } else {
            throw new IllegalArgumentException("Given library is either null or empty");
        }
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:123:0x0190 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:126:? */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARNING: Removed duplicated region for block: B:127:0x016a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:159:0x0181 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:160:0x0181 A[SYNTHETIC] */
    /* JADX WARNING: Unknown variable types count: 2 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(android.content.Context r20, java.lang.String r21, java.lang.String r22) {
        /*
        // Method dump skipped, instructions count: 463
        */
        throw new UnsupportedOperationException("Method not decompiled: f.g.a.f.d(android.content.Context, java.lang.String, java.lang.String):void");
    }
}
