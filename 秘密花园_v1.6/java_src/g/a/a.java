package g.a;

import android.content.Context;
import g.a.x;
import g.a.z;
import io.realm.DynamicRealmObject;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsObjectStore;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsSchemaInfo;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.UncheckedRow;
import io.realm.log.RealmLog;
import java.io.Closeable;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: BaseRealm.java */
/* loaded from: classes.dex */
public abstract class a implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    public static volatile Context f6271g;

    /* renamed from: h  reason: collision with root package name */
    public static final g.a.f1.t.d f6272h;

    /* renamed from: i  reason: collision with root package name */
    public static final d f6273i;
    public final long a;
    public final b0 b;

    /* renamed from: c  reason: collision with root package name */
    public z f6274c;

    /* renamed from: d  reason: collision with root package name */
    public OsSharedRealm f6275d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6276e;

    /* renamed from: f  reason: collision with root package name */
    public OsSharedRealm.SchemaChangedCallback f6277f;

    /* compiled from: BaseRealm.java */
    /* renamed from: g.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0098a implements OsSharedRealm.SchemaChangedCallback {
        public C0098a() {
        }

        @Override // io.realm.internal.OsSharedRealm.SchemaChangedCallback
        public void onSchemaChanged() {
            k0 G = a.this.G();
            if (G != null) {
                g.a.f1.b bVar = G.f6370f;
                if (bVar != null) {
                    for (Map.Entry<Class<? extends e0>, g.a.f1.c> entry : bVar.a.entrySet()) {
                        entry.getValue().c(bVar.f6311c.c(entry.getKey(), bVar.f6312d));
                    }
                }
                G.a.clear();
                G.b.clear();
                G.f6367c.clear();
                G.f6368d.clear();
            }
        }
    }

    /* compiled from: BaseRealm.java */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        public final /* synthetic */ b0 a;
        public final /* synthetic */ AtomicBoolean b;

        public b(b0 b0Var, AtomicBoolean atomicBoolean) {
            this.a = b0Var;
            this.b = atomicBoolean;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            b0 b0Var = this.a;
            String str = b0Var.f6281c;
            File file = b0Var.a;
            String str2 = b0Var.b;
            AtomicBoolean atomicBoolean = this.b;
            File file2 = new File(file, f.b.a.a.a.f(str2, ".management"));
            File file3 = new File(str);
            File file4 = new File(f.b.a.a.a.f(str, ".note"));
            File[] listFiles = file2.listFiles();
            if (listFiles != null) {
                for (File file5 : listFiles) {
                    if (!file5.delete()) {
                        RealmLog.c(String.format(Locale.ENGLISH, "Realm temporary file at %s cannot be deleted", file5.getAbsolutePath()), new Object[0]);
                    }
                }
            }
            if (file2.exists() && !file2.delete()) {
                RealmLog.c(String.format(Locale.ENGLISH, "Realm temporary folder at %s cannot be deleted", file2.getAbsolutePath()), new Object[0]);
            }
            if (file3.exists()) {
                z = file3.delete();
                if (!z) {
                    RealmLog.c(String.format(Locale.ENGLISH, "Realm file at %s cannot be deleted", file3.getAbsolutePath()), new Object[0]);
                }
            } else {
                z = true;
            }
            if (file4.exists() && !file4.delete()) {
                RealmLog.c(String.format(Locale.ENGLISH, ".note file at %s cannot be deleted", file4.getAbsolutePath()), new Object[0]);
            }
            atomicBoolean.set(z);
        }
    }

    /* compiled from: BaseRealm.java */
    /* loaded from: classes.dex */
    public static final class c {
        public a a;
        public g.a.f1.p b;

        /* renamed from: c  reason: collision with root package name */
        public g.a.f1.c f6278c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f6279d;

        /* renamed from: e  reason: collision with root package name */
        public List<String> f6280e;

        public void a() {
            this.a = null;
            this.b = null;
            this.f6278c = null;
            this.f6279d = false;
            this.f6280e = null;
        }

        public void b(a aVar, g.a.f1.p pVar, g.a.f1.c cVar, boolean z, List<String> list) {
            this.a = aVar;
            this.b = pVar;
            this.f6278c = cVar;
            this.f6279d = z;
            this.f6280e = list;
        }
    }

    /* compiled from: BaseRealm.java */
    /* loaded from: classes.dex */
    public static final class d extends ThreadLocal<c> {
        @Override // java.lang.ThreadLocal
        public c initialValue() {
            return new c();
        }
    }

    static {
        int i2 = g.a.f1.t.d.f6326c;
        f6272h = new g.a.f1.t.d(i2, i2);
        f6273i = new d();
    }

    public a(OsSharedRealm osSharedRealm) {
        this.f6277f = new C0098a();
        this.a = Thread.currentThread().getId();
        this.b = osSharedRealm.getConfiguration();
        this.f6274c = null;
        this.f6275d = osSharedRealm;
        this.f6276e = false;
    }

    public static boolean E(b0 b0Var) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        if (OsObjectStore.nativeCallWithLock(b0Var.f6281c, new b(b0Var, atomicBoolean))) {
            return atomicBoolean.get();
        }
        StringBuilder o = f.b.a.a.a.o("It's not allowed to delete the file associated with an open Realm. Remember to close() all the instances of the Realm before deleting its file: ");
        o.append(b0Var.f6281c);
        throw new IllegalStateException(o.toString());
    }

    public <E extends e0> E F(Class<E> cls, String str, UncheckedRow uncheckedRow) {
        if (str != null) {
            return new DynamicRealmObject(this, new CheckedRow(uncheckedRow));
        }
        g.a.f1.o oVar = this.b.f6288j;
        k0 G = G();
        G.a();
        return (E) oVar.i(cls, this, uncheckedRow, G.f6370f.a(cls), false, Collections.emptyList());
    }

    public abstract k0 G();

    public boolean H() {
        if (this.a == Thread.currentThread().getId()) {
            OsSharedRealm osSharedRealm = this.f6275d;
            return osSharedRealm == null || osSharedRealm.isClosed();
        }
        throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
    }

    public boolean I() {
        f();
        return this.f6275d.isInTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.a == Thread.currentThread().getId()) {
            z zVar = this.f6274c;
            if (zVar != null) {
                synchronized (zVar) {
                    String str = this.b.f6281c;
                    z.b bVar = zVar.a.get(z.a.a(getClass()));
                    Integer num = bVar.b.get();
                    if (num == null) {
                        num = 0;
                    }
                    if (num.intValue() <= 0) {
                        RealmLog.c("%s has been closed already. refCount is %s", str, num);
                        return;
                    }
                    Integer valueOf = Integer.valueOf(num.intValue() - 1);
                    if (valueOf.intValue() == 0) {
                        bVar.b.set(null);
                        bVar.a.set(null);
                        int i2 = bVar.f6409c - 1;
                        bVar.f6409c = i2;
                        if (i2 >= 0) {
                            this.f6274c = null;
                            OsSharedRealm osSharedRealm = this.f6275d;
                            if (osSharedRealm != null && this.f6276e) {
                                osSharedRealm.close();
                                this.f6275d = null;
                            }
                            if (zVar.e() == 0) {
                                zVar.f6406c = null;
                                if (this.b != null) {
                                    if (g.a.f1.j.a(false) == null) {
                                        throw null;
                                    }
                                } else {
                                    throw null;
                                }
                            }
                        } else {
                            throw new IllegalStateException("Global reference counter of Realm" + str + " got corrupted.");
                        }
                    } else {
                        bVar.b.set(valueOf);
                    }
                    return;
                }
            }
            this.f6274c = null;
            OsSharedRealm osSharedRealm2 = this.f6275d;
            if (osSharedRealm2 == null || !this.f6276e) {
                return;
            }
            osSharedRealm2.close();
            this.f6275d = null;
            return;
        }
        throw new IllegalStateException("Realm access from incorrect thread. Realm instance can only be closed on the thread it was created.");
    }

    public void d() {
        f();
        this.f6275d.beginTransaction();
    }

    public void e() {
        f();
        this.f6275d.cancelTransaction();
    }

    public void f() {
        OsSharedRealm osSharedRealm = this.f6275d;
        if (osSharedRealm != null && !osSharedRealm.isClosed()) {
            if (this.a != Thread.currentThread().getId()) {
                throw new IllegalStateException("Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created.");
            }
            return;
        }
        throw new IllegalStateException("This Realm instance has already been closed, making it unusable.");
    }

    public void finalize() throws Throwable {
        OsSharedRealm osSharedRealm;
        if (this.f6276e && (osSharedRealm = this.f6275d) != null && !osSharedRealm.isClosed()) {
            RealmLog.c("Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory.", this.b.f6281c);
            z zVar = this.f6274c;
            if (zVar != null && !zVar.f6407d.getAndSet(true)) {
                z.f6405f.add(zVar);
            }
        }
        super.finalize();
    }

    public void g() {
        f();
        this.f6275d.commitTransaction();
    }

    public a(z zVar, OsSchemaInfo osSchemaInfo) {
        d0 d0Var;
        b0 b0Var = zVar.f6406c;
        this.f6277f = new C0098a();
        this.a = Thread.currentThread().getId();
        this.b = b0Var;
        this.f6274c = null;
        g.a.c cVar = (osSchemaInfo == null || (d0Var = b0Var.f6285g) == null) ? null : new g.a.c(d0Var);
        x.a aVar = b0Var.f6290l;
        g.a.b bVar = aVar != null ? new g.a.b(this, aVar) : null;
        OsRealmConfig.b bVar2 = new OsRealmConfig.b(b0Var);
        bVar2.f7016f = new File(f6271g.getFilesDir(), ".realm.temp").getAbsolutePath();
        bVar2.f7015e = true;
        bVar2.f7013c = cVar;
        bVar2.b = osSchemaInfo;
        bVar2.f7014d = bVar;
        OsSharedRealm osSharedRealm = OsSharedRealm.getInstance(bVar2);
        this.f6275d = osSharedRealm;
        this.f6276e = true;
        osSharedRealm.registerSchemaChangedCallback(this.f6277f);
        this.f6274c = zVar;
    }
}
