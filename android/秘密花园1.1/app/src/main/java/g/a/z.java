package g.a;

import android.os.SystemClock;
import io.realm.log.RealmLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: RealmCache.java */
/* loaded from: classes.dex */
public final class z {

    /* renamed from: e  reason: collision with root package name */
    public static final List<WeakReference<z>> f6320e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public static final Collection<z> f6321f = new ConcurrentLinkedQueue();
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public b0 f6322c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicBoolean f6323d = new AtomicBoolean(false);
    public final EnumMap<a, b> a = new EnumMap<>(a.class);

    /* compiled from: RealmCache.java */
    /* loaded from: classes.dex */
    public enum a {
        TYPED_REALM,
        DYNAMIC_REALM;

        public static a a(Class<? extends g.a.a> cls) {
            if (cls == x.class) {
                return TYPED_REALM;
            }
            if (cls == i.class) {
                return DYNAMIC_REALM;
            }
            throw new IllegalArgumentException("The type of Realm class must be Realm or DynamicRealm.");
        }
    }

    public z(String str) {
        this.b = str;
        for (a aVar : a.values()) {
            this.a.put((EnumMap<a, b>) aVar, (a) new b(null));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(java.lang.String r6, java.io.File r7) {
        /*
            boolean r0 = r7.exists()
            if (r0 == 0) goto L7
            goto L38
        L7:
            r0 = 0
            android.content.Context r1 = g.a.a.f6187g     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L69
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L69
            java.io.InputStream r1 = r1.open(r6)     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L69
            if (r1 == 0) goto L45
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            r7 = 4096(0x1000, float:5.74E-42)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
        L1d:
            int r3 = r1.read(r7)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            r4 = -1
            if (r3 <= r4) goto L29
            r4 = 0
            r2.write(r7, r4, r3)     // Catch: java.lang.Throwable -> L41 java.io.IOException -> L43
            goto L1d
        L29:
            r1.close()     // Catch: java.io.IOException -> L2d
            goto L2e
        L2d:
            r0 = move-exception
        L2e:
            r2.close()     // Catch: java.io.IOException -> L32
            goto L36
        L32:
            r6 = move-exception
            if (r0 != 0) goto L36
            r0 = r6
        L36:
            if (r0 != 0) goto L39
        L38:
            return
        L39:
            io.realm.exceptions.RealmFileException r6 = new io.realm.exceptions.RealmFileException
            io.realm.exceptions.RealmFileException$Kind r7 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR
            r6.<init>(r7, r0)
            throw r6
        L41:
            r6 = move-exception
            goto L60
        L43:
            r7 = move-exception
            goto L64
        L45:
            io.realm.exceptions.RealmFileException r7 = new io.realm.exceptions.RealmFileException     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            io.realm.exceptions.RealmFileException$Kind r2 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            r3.<init>()     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            java.lang.String r4 = "Invalid input stream to the asset file: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            r3.append(r6)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            r7.<init>(r2, r3)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
            throw r7     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L62
        L5e:
            r6 = move-exception
            r2 = r0
        L60:
            r0 = r1
            goto L85
        L62:
            r7 = move-exception
            r2 = r0
        L64:
            r0 = r1
            goto L6b
        L66:
            r6 = move-exception
            r2 = r0
            goto L85
        L69:
            r7 = move-exception
            r2 = r0
        L6b:
            io.realm.exceptions.RealmFileException r1 = new io.realm.exceptions.RealmFileException     // Catch: java.lang.Throwable -> L84
            io.realm.exceptions.RealmFileException$Kind r3 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: java.lang.Throwable -> L84
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84
            r4.<init>()     // Catch: java.lang.Throwable -> L84
            java.lang.String r5 = "Could not resolve the path to the asset file: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L84
            r4.append(r6)     // Catch: java.lang.Throwable -> L84
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L84
            r1.<init>(r3, r6, r7)     // Catch: java.lang.Throwable -> L84
            throw r1     // Catch: java.lang.Throwable -> L84
        L84:
            r6 = move-exception
        L85:
            if (r0 == 0) goto L8c
            r0.close()     // Catch: java.io.IOException -> L8b
            goto L8c
        L8b:
        L8c:
            if (r2 == 0) goto L91
            r2.close()     // Catch: java.io.IOException -> L91
        L91:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.z.a(java.lang.String, java.io.File):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003e A[Catch: all -> 0x00e6, TryCatch #1 {, blocks: (B:4:0x0008, B:8:0x001e, B:10:0x002d, B:12:0x0031, B:17:0x003b, B:19:0x003e, B:21:0x0049, B:38:0x0073, B:39:0x0076, B:42:0x007d, B:46:0x0089, B:56:0x00aa, B:55:0x00a5, B:57:0x00be, B:58:0x00c5, B:59:0x00c6, B:34:0x006c, B:35:0x006f, B:25:0x0052, B:40:0x0079, B:41:0x007a, B:48:0x0090, B:51:0x0097), top: B:65:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0079 A[Catch: all -> 0x00e6, TryCatch #1 {, blocks: (B:4:0x0008, B:8:0x001e, B:10:0x002d, B:12:0x0031, B:17:0x003b, B:19:0x003e, B:21:0x0049, B:38:0x0073, B:39:0x0076, B:42:0x007d, B:46:0x0089, B:56:0x00aa, B:55:0x00a5, B:57:0x00be, B:58:0x00c5, B:59:0x00c6, B:34:0x006c, B:35:0x006f, B:25:0x0052, B:40:0x0079, B:41:0x007a, B:48:0x0090, B:51:0x0097), top: B:65:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static <E extends g.a.a> E b(g.a.b0 r9, java.lang.Class<E> r10) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.z.b(g.a.b0, java.lang.Class):g.a.a");
    }

    public static void c(b0 b0Var) {
        int i2 = 5;
        boolean z = false;
        while (i2 > 0 && !z) {
            try {
                z = g.a.a.E(b0Var);
            } catch (IllegalStateException unused) {
                i2--;
                RealmLog.c(f.b.a.a.a.K("Sync server still holds a reference to the Realm. It cannot be deleted. Retrying ", i2, " more times"), new Object[0]);
                if (i2 > 0) {
                    SystemClock.sleep(15L);
                }
            }
        }
        if (z) {
            return;
        }
        StringBuilder o = f.b.a.a.a.o("Failed to delete the underlying Realm file: ");
        o.append(b0Var.f6197c);
        RealmLog.a(o.toString(), new Object[0]);
    }

    public static z d(String str, boolean z) {
        z zVar;
        synchronized (f6320e) {
            Iterator<WeakReference<z>> it = f6320e.iterator();
            zVar = null;
            while (it.hasNext()) {
                z zVar2 = it.next().get();
                if (zVar2 == null) {
                    it.remove();
                } else if (zVar2.b.equals(str)) {
                    zVar = zVar2;
                }
            }
            if (zVar == null && z) {
                zVar = new z(str);
                f6320e.add(new WeakReference<>(zVar));
            }
        }
        return zVar;
    }

    public final int e() {
        int i2 = 0;
        for (b bVar : this.a.values()) {
            i2 += bVar.f6325c;
        }
        return i2;
    }

    public final void f(b0 b0Var) {
        if (this.f6322c.equals(b0Var)) {
            return;
        }
        if (Arrays.equals(this.f6322c.a(), b0Var.a())) {
            d0 d0Var = b0Var.f6201g;
            d0 d0Var2 = this.f6322c.f6201g;
            if (d0Var2 != null && d0Var != null && d0Var2.getClass().equals(d0Var.getClass()) && !d0Var.equals(d0Var2)) {
                StringBuilder o = f.b.a.a.a.o("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: ");
                o.append(b0Var.f6201g.getClass().getCanonicalName());
                throw new IllegalArgumentException(o.toString());
            }
            StringBuilder o2 = f.b.a.a.a.o("Configurations cannot be different if used to open the same file. \nCached configuration: \n");
            o2.append(this.f6322c);
            o2.append("\n\nNew configuration: \n");
            o2.append(b0Var);
            throw new IllegalArgumentException(o2.toString());
        }
        throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
    }

    /* compiled from: RealmCache.java */
    /* loaded from: classes.dex */
    public static class b {
        public final ThreadLocal<g.a.a> a = new ThreadLocal<>();
        public final ThreadLocal<Integer> b = new ThreadLocal<>();

        /* renamed from: c  reason: collision with root package name */
        public int f6325c = 0;

        public b() {
        }

        public b(y yVar) {
        }
    }
}
