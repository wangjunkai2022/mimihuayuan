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

        public static a a(Class<? extends a> cls) {
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

    /* JADX WARNING: Removed duplicated region for block: B:49:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r6, java.io.File r7) {
        /*
            boolean r0 = r7.exists()
            if (r0 == 0) goto L_0x0007
            goto L_0x0038
        L_0x0007:
            r0 = 0
            android.content.Context r1 = g.a.a.f6187g     // Catch: IOException -> 0x0069, all -> 0x0066
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch: IOException -> 0x0069, all -> 0x0066
            java.io.InputStream r1 = r1.open(r6)     // Catch: IOException -> 0x0069, all -> 0x0066
            if (r1 == 0) goto L_0x0045
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: IOException -> 0x0062, all -> 0x005e
            r2.<init>(r7)     // Catch: IOException -> 0x0062, all -> 0x005e
            r7 = 4096(0x1000, float:5.74E-42)
            byte[] r7 = new byte[r7]     // Catch: IOException -> 0x0043, all -> 0x0041
        L_0x001d:
            int r3 = r1.read(r7)     // Catch: IOException -> 0x0043, all -> 0x0041
            r4 = -1
            if (r3 <= r4) goto L_0x0029
            r4 = 0
            r2.write(r7, r4, r3)     // Catch: IOException -> 0x0043, all -> 0x0041
            goto L_0x001d
        L_0x0029:
            r1.close()     // Catch: IOException -> 0x002d
            goto L_0x002e
        L_0x002d:
            r0 = move-exception
        L_0x002e:
            r2.close()     // Catch: IOException -> 0x0032
            goto L_0x0036
        L_0x0032:
            r6 = move-exception
            if (r0 != 0) goto L_0x0036
            r0 = r6
        L_0x0036:
            if (r0 != 0) goto L_0x0039
        L_0x0038:
            return
        L_0x0039:
            io.realm.exceptions.RealmFileException r6 = new io.realm.exceptions.RealmFileException
            io.realm.exceptions.RealmFileException$Kind r7 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR
            r6.<init>(r7, r0)
            throw r6
        L_0x0041:
            r6 = move-exception
            goto L_0x0060
        L_0x0043:
            r7 = move-exception
            goto L_0x0064
        L_0x0045:
            io.realm.exceptions.RealmFileException r7 = new io.realm.exceptions.RealmFileException     // Catch: IOException -> 0x0062, all -> 0x005e
            io.realm.exceptions.RealmFileException$Kind r2 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: IOException -> 0x0062, all -> 0x005e
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: IOException -> 0x0062, all -> 0x005e
            r3.<init>()     // Catch: IOException -> 0x0062, all -> 0x005e
            java.lang.String r4 = "Invalid input stream to the asset file: "
            r3.append(r4)     // Catch: IOException -> 0x0062, all -> 0x005e
            r3.append(r6)     // Catch: IOException -> 0x0062, all -> 0x005e
            java.lang.String r3 = r3.toString()     // Catch: IOException -> 0x0062, all -> 0x005e
            r7.<init>(r2, r3)     // Catch: IOException -> 0x0062, all -> 0x005e
            throw r7     // Catch: IOException -> 0x0062, all -> 0x005e
        L_0x005e:
            r6 = move-exception
            r2 = r0
        L_0x0060:
            r0 = r1
            goto L_0x0085
        L_0x0062:
            r7 = move-exception
            r2 = r0
        L_0x0064:
            r0 = r1
            goto L_0x006b
        L_0x0066:
            r6 = move-exception
            r2 = r0
            goto L_0x0085
        L_0x0069:
            r7 = move-exception
            r2 = r0
        L_0x006b:
            io.realm.exceptions.RealmFileException r1 = new io.realm.exceptions.RealmFileException     // Catch: all -> 0x0084
            io.realm.exceptions.RealmFileException$Kind r3 = io.realm.exceptions.RealmFileException.Kind.ACCESS_ERROR     // Catch: all -> 0x0084
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: all -> 0x0084
            r4.<init>()     // Catch: all -> 0x0084
            java.lang.String r5 = "Could not resolve the path to the asset file: "
            r4.append(r5)     // Catch: all -> 0x0084
            r4.append(r6)     // Catch: all -> 0x0084
            java.lang.String r6 = r4.toString()     // Catch: all -> 0x0084
            r1.<init>(r3, r6, r7)     // Catch: all -> 0x0084
            throw r1     // Catch: all -> 0x0084
        L_0x0084:
            r6 = move-exception
        L_0x0085:
            if (r0 == 0) goto L_0x008c
            r0.close()     // Catch: IOException -> 0x008b
            goto L_0x008c
        L_0x008b:
        L_0x008c:
            if (r2 == 0) goto L_0x0091
            r2.close()     // Catch: IOException -> 0x0091
        L_0x0091:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.z.a(java.lang.String, java.io.File):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x003e A[Catch: all -> 0x00e6, TryCatch #1 {, blocks: (B:4:0x0008, B:8:0x001e, B:10:0x002d, B:12:0x0031, B:17:0x003b, B:19:0x003e, B:21:0x0049, B:25:0x0052, B:33:0x006c, B:34:0x006f, B:37:0x0073, B:38:0x0076, B:39:0x0079, B:40:0x007a, B:41:0x007d, B:45:0x0089, B:53:0x00a5, B:54:0x00aa, B:55:0x00be, B:56:0x00c5, B:57:0x00c6, B:47:0x0090, B:50:0x0097), top: B:62:0x0008 }] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0079 A[Catch: all -> 0x00e6, TryCatch #1 {, blocks: (B:4:0x0008, B:8:0x001e, B:10:0x002d, B:12:0x0031, B:17:0x003b, B:19:0x003e, B:21:0x0049, B:25:0x0052, B:33:0x006c, B:34:0x006f, B:37:0x0073, B:38:0x0076, B:39:0x0079, B:40:0x007a, B:41:0x007d, B:45:0x0089, B:53:0x00a5, B:54:0x00aa, B:55:0x00be, B:56:0x00c5, B:57:0x00c6, B:47:0x0090, B:50:0x0097), top: B:62:0x0008 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <E extends g.a.a> E b(g.a.b0 r9, java.lang.Class<E> r10) {
        /*
        // Method dump skipped, instructions count: 233
        */
        throw new UnsupportedOperationException("Method not decompiled: g.a.z.b(g.a.b0, java.lang.Class):g.a.a");
    }

    public static void c(b0 b0Var) {
        int i2 = 5;
        boolean z = false;
        while (i2 > 0 && !z) {
            try {
                z = a.E(b0Var);
            } catch (IllegalStateException unused) {
                i2--;
                RealmLog.c(f.b.a.a.a.K("Sync server still holds a reference to the Realm. It cannot be deleted. Retrying ", i2, " more times"), new Object[0]);
                if (i2 > 0) {
                    SystemClock.sleep(15);
                }
            }
        }
        if (!z) {
            StringBuilder o = f.b.a.a.a.o("Failed to delete the underlying Realm file: ");
            o.append(b0Var.f6197c);
            RealmLog.a(o.toString(), new Object[0]);
        }
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
        if (!this.f6322c.equals(b0Var)) {
            if (Arrays.equals(this.f6322c.a(), b0Var.a())) {
                d0 d0Var = b0Var.f6201g;
                d0 d0Var2 = this.f6322c.f6201g;
                if (d0Var2 == null || d0Var == null || !d0Var2.getClass().equals(d0Var.getClass()) || d0Var.equals(d0Var2)) {
                    StringBuilder o = f.b.a.a.a.o("Configurations cannot be different if used to open the same file. \nCached configuration: \n");
                    o.append(this.f6322c);
                    o.append("\n\nNew configuration: \n");
                    o.append(b0Var);
                    throw new IllegalArgumentException(o.toString());
                }
                StringBuilder o2 = f.b.a.a.a.o("Configurations cannot be different if used to open the same file. The most likely cause is that equals() and hashCode() are not overridden in the migration class: ");
                o2.append(b0Var.f6201g.getClass().getCanonicalName());
                throw new IllegalArgumentException(o2.toString());
            }
            throw new IllegalArgumentException("Wrong key used to decrypt Realm.");
        }
    }

    /* compiled from: RealmCache.java */
    /* loaded from: classes.dex */
    public static class b {
        public final ThreadLocal<a> a = new ThreadLocal<>();
        public final ThreadLocal<Integer> b = new ThreadLocal<>();

        /* renamed from: c  reason: collision with root package name */
        public int f6325c = 0;

        public b() {
        }

        public b(y yVar) {
        }
    }
}
