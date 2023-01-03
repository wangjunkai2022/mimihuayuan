package io.realm.internal;

import g.a.b0;
import g.a.f1.f;
import g.a.f1.h;
import g.a.f1.i;
import g.a.f1.j;
import g.a.f1.l;
import io.realm.internal.OsRealmConfig;
import io.realm.internal.OsResults;
import io.realm.internal.android.AndroidRealmNotifier;
import java.io.Closeable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Keep
/* loaded from: classes.dex */
public final class OsSharedRealm implements Closeable, i {
    public static final byte FILE_EXCEPTION_INCOMPATIBLE_SYNC_FILE = 7;
    public static final byte FILE_EXCEPTION_KIND_ACCESS_ERROR = 0;
    public static final byte FILE_EXCEPTION_KIND_BAD_HISTORY = 1;
    public static final byte FILE_EXCEPTION_KIND_EXISTS = 3;
    public static final byte FILE_EXCEPTION_KIND_FORMAT_UPGRADE_REQUIRED = 6;
    public static final byte FILE_EXCEPTION_KIND_INCOMPATIBLE_LOCK_FILE = 5;
    public static final byte FILE_EXCEPTION_KIND_NOT_FOUND = 4;
    public static final byte FILE_EXCEPTION_KIND_PERMISSION_DENIED = 2;
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public static final List<OsSharedRealm> sharedRealmsUnderConstruction = new CopyOnWriteArrayList();
    public static volatile File temporaryDirectory;
    public final g.a.f1.a capabilities;
    public final h context;
    public final long nativePtr;
    public final OsRealmConfig osRealmConfig;
    public final RealmNotifier realmNotifier;
    public final OsSchemaInfo schemaInfo;
    public final List<OsSharedRealm> tempSharedRealmsForCallback = new ArrayList();
    public final List<WeakReference<l>> pendingRows = new CopyOnWriteArrayList();
    public final List<WeakReference<OsResults.a>> iterators = new ArrayList();

    @Keep
    /* loaded from: classes.dex */
    public interface InitializationCallback {
        void onInit(OsSharedRealm osSharedRealm);
    }

    @Keep
    /* loaded from: classes.dex */
    public interface MigrationCallback {
        void onMigrationNeeded(OsSharedRealm osSharedRealm, long j2, long j3);
    }

    @Keep
    /* loaded from: classes.dex */
    public interface SchemaChangedCallback {
        void onSchemaChanged();
    }

    /* loaded from: classes.dex */
    public static class a implements Comparable<a> {
        public final long a;
        public final long b;

        public a(long j2, long j3) {
            this.a = j2;
            this.b = j3;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            if (aVar != null) {
                long j2 = this.a;
                long j3 = aVar.a;
                if (j2 > j3) {
                    return 1;
                }
                return j2 < j3 ? -1 : 0;
            }
            throw new IllegalArgumentException("Version cannot be compared to a null value.");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.b == aVar.b;
        }

        public int hashCode() {
            long j2 = this.a;
            long j3 = this.b;
            return (((super.hashCode() * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + ((int) (j3 ^ (j3 >>> 32)));
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("VersionID{version=");
            o.append(this.a);
            o.append(", index=");
            o.append(this.b);
            o.append('}');
            return o.toString();
        }
    }

    public OsSharedRealm(OsRealmConfig osRealmConfig) {
        g.a.f1.s.a aVar = new g.a.f1.s.a();
        AndroidRealmNotifier androidRealmNotifier = new AndroidRealmNotifier(this, aVar);
        this.context = osRealmConfig.f6927d;
        sharedRealmsUnderConstruction.add(this);
        try {
            this.nativePtr = nativeGetSharedRealm(osRealmConfig.f6926c, androidRealmNotifier);
            this.tempSharedRealmsForCallback.clear();
            sharedRealmsUnderConstruction.remove(this);
            this.osRealmConfig = osRealmConfig;
            this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
            this.context.a(this);
            this.capabilities = aVar;
            this.realmNotifier = androidRealmNotifier;
            nativeSetAutoRefresh(this.nativePtr, aVar.a());
        } finally {
        }
    }

    private void detachIterators() {
        for (WeakReference<OsResults.a> weakReference : this.iterators) {
            OsResults.a aVar = weakReference.get();
            if (aVar != null) {
                aVar.c();
            }
        }
        this.iterators.clear();
    }

    private void executePendingRowQueries() {
        for (WeakReference<l> weakReference : this.pendingRows) {
            l lVar = weakReference.get();
            if (lVar != null) {
                if (lVar.a == null) {
                    throw new IllegalStateException("The query has been executed. This 'PendingRow' is not valid anymore.");
                }
                throw new IllegalStateException("The 'frontEnd' has not been set.");
            }
        }
        this.pendingRows.clear();
    }

    public static OsSharedRealm getInstance(b0 b0Var) {
        return getInstance(new OsRealmConfig.b(b0Var));
    }

    public static File getTemporaryDirectory() {
        return temporaryDirectory;
    }

    public static void initialize(File file) {
        if (temporaryDirectory != null) {
            return;
        }
        String absolutePath = file.getAbsolutePath();
        if (!file.isDirectory() && !file.mkdirs() && !file.isDirectory()) {
            throw new f(f.b.a.a.a.f("failed to create temporary directory: ", absolutePath));
        }
        if (!absolutePath.endsWith("/")) {
            absolutePath = f.b.a.a.a.f(absolutePath, "/");
        }
        nativeInit(absolutePath);
        temporaryDirectory = file;
    }

    public static native void nativeBeginTransaction(long j2);

    public static native void nativeCancelTransaction(long j2);

    public static native void nativeCloseSharedRealm(long j2);

    public static native void nativeCommitTransaction(long j2);

    public static native boolean nativeCompact(long j2);

    public static native long nativeCreateTable(long j2, String str);

    public static native long nativeCreateTableWithPrimaryKeyField(long j2, String str, String str2, boolean z, boolean z2);

    public static native int nativeGetClassPrivileges(long j2, String str);

    public static native long nativeGetFinalizerPtr();

    public static native int nativeGetObjectPrivileges(long j2, long j3);

    public static native int nativeGetRealmPrivileges(long j2);

    public static native long nativeGetSchemaInfo(long j2);

    public static native long nativeGetSharedRealm(long j2, RealmNotifier realmNotifier);

    public static native long nativeGetTable(long j2, String str);

    public static native String nativeGetTableName(long j2, int i2);

    public static native long[] nativeGetVersionID(long j2);

    public static native boolean nativeHasTable(long j2, String str);

    public static native void nativeInit(String str);

    public static native boolean nativeIsAutoRefresh(long j2);

    public static native boolean nativeIsClosed(long j2);

    public static native boolean nativeIsEmpty(long j2);

    public static native boolean nativeIsInTransaction(long j2);

    public static native boolean nativeIsPartial(long j2);

    public static native void nativeRefresh(long j2);

    public static native void nativeRegisterSchemaChangedCallback(long j2, SchemaChangedCallback schemaChangedCallback);

    public static native void nativeRenameTable(long j2, String str, String str2);

    public static native void nativeSetAutoRefresh(long j2, boolean z);

    public static native long nativeSize(long j2);

    public static native void nativeStopWaitForChange(long j2);

    public static native boolean nativeWaitForChange(long j2);

    public static native void nativeWriteCopy(long j2, String str, byte[] bArr);

    public static void runInitializationCallback(long j2, OsRealmConfig osRealmConfig, InitializationCallback initializationCallback) {
        initializationCallback.onInit(new OsSharedRealm(j2, osRealmConfig));
    }

    public static void runMigrationCallback(long j2, OsRealmConfig osRealmConfig, MigrationCallback migrationCallback, long j3) {
        migrationCallback.onMigrationNeeded(new OsSharedRealm(j2, osRealmConfig), j3, osRealmConfig.a.f6200f);
    }

    public void addIterator(OsResults.a aVar) {
        this.iterators.add(new WeakReference<>(aVar));
    }

    public void addPendingRow(l lVar) {
        this.pendingRows.add(new WeakReference<>(lVar));
    }

    public void beginTransaction() {
        detachIterators();
        executePendingRowQueries();
        nativeBeginTransaction(this.nativePtr);
    }

    public void cancelTransaction() {
        nativeCancelTransaction(this.nativePtr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        RealmNotifier realmNotifier = this.realmNotifier;
        if (realmNotifier != null) {
            realmNotifier.close();
        }
        synchronized (this.context) {
            nativeCloseSharedRealm(this.nativePtr);
        }
    }

    public void commitTransaction() {
        nativeCommitTransaction(this.nativePtr);
    }

    public boolean compact() {
        return nativeCompact(this.nativePtr);
    }

    public Table createTable(String str) {
        return new Table(this, nativeCreateTable(this.nativePtr, str));
    }

    public Table createTableWithPrimaryKey(String str, String str2, boolean z, boolean z2) {
        return new Table(this, nativeCreateTableWithPrimaryKeyField(this.nativePtr, str, str2, z, z2));
    }

    public b0 getConfiguration() {
        return this.osRealmConfig.a;
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.nativePtr;
    }

    public String getPath() {
        return this.osRealmConfig.a.f6197c;
    }

    public OsSchemaInfo getSchemaInfo() {
        return this.schemaInfo;
    }

    public Table getTable(String str) {
        return new Table(this, nativeGetTable(this.nativePtr, str));
    }

    public String getTableName(int i2) {
        return nativeGetTableName(this.nativePtr, i2);
    }

    public a getVersionID() {
        long[] nativeGetVersionID = nativeGetVersionID(this.nativePtr);
        return new a(nativeGetVersionID[0], nativeGetVersionID[1]);
    }

    public boolean hasTable(String str) {
        return nativeHasTable(this.nativePtr, str);
    }

    public void invalidateIterators() {
        for (WeakReference<OsResults.a> weakReference : this.iterators) {
            OsResults.a aVar = weakReference.get();
            if (aVar != null) {
                aVar.a = null;
            }
        }
        this.iterators.clear();
    }

    public boolean isAutoRefresh() {
        return nativeIsAutoRefresh(this.nativePtr);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.nativePtr);
    }

    public boolean isEmpty() {
        return nativeIsEmpty(this.nativePtr);
    }

    public boolean isInTransaction() {
        return nativeIsInTransaction(this.nativePtr);
    }

    public boolean isPartial() {
        return nativeIsPartial(this.nativePtr);
    }

    public boolean isSyncRealm() {
        return this.osRealmConfig.b != null;
    }

    public void refresh() {
        nativeRefresh(this.nativePtr);
    }

    public void registerSchemaChangedCallback(SchemaChangedCallback schemaChangedCallback) {
        nativeRegisterSchemaChangedCallback(this.nativePtr, schemaChangedCallback);
    }

    public void removePendingRow(l lVar) {
        for (WeakReference<l> weakReference : this.pendingRows) {
            l lVar2 = weakReference.get();
            if (lVar2 == null || lVar2 == lVar) {
                this.pendingRows.remove(weakReference);
            }
        }
    }

    public void renameTable(String str, String str2) {
        nativeRenameTable(this.nativePtr, str, str2);
    }

    public void setAutoRefresh(boolean z) {
        ((g.a.f1.s.a) this.capabilities).b(null);
        nativeSetAutoRefresh(this.nativePtr, z);
    }

    public long size() {
        return nativeSize(this.nativePtr);
    }

    public void stopWaitForChange() {
        nativeStopWaitForChange(this.nativePtr);
    }

    public boolean waitForChange() {
        return nativeWaitForChange(this.nativePtr);
    }

    public void writeCopy(File file, byte[] bArr) {
        if (file.isFile() && file.exists()) {
            throw new IllegalArgumentException("The destination file must not exist");
        }
        nativeWriteCopy(this.nativePtr, file.getAbsolutePath(), bArr);
    }

    public static OsSharedRealm getInstance(OsRealmConfig.b bVar) {
        OsRealmConfig a2 = bVar.a();
        if (j.b() != null) {
            return new OsSharedRealm(a2);
        }
        throw null;
    }

    public OsSharedRealm(long j2, OsRealmConfig osRealmConfig) {
        this.nativePtr = j2;
        this.osRealmConfig = osRealmConfig;
        this.schemaInfo = new OsSchemaInfo(nativeGetSchemaInfo(this.nativePtr), this);
        h hVar = osRealmConfig.f6927d;
        this.context = hVar;
        hVar.a(this);
        this.capabilities = new g.a.f1.s.a();
        this.realmNotifier = null;
        boolean z = false;
        nativeSetAutoRefresh(this.nativePtr, false);
        Iterator<OsSharedRealm> it = sharedRealmsUnderConstruction.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            OsSharedRealm next = it.next();
            if (next.context == osRealmConfig.f6927d) {
                z = true;
                next.tempSharedRealmsForCallback.add(this);
                break;
            }
        }
        if (!z) {
            throw new IllegalStateException("Cannot find the parent 'OsSharedRealm' which is under construction.");
        }
    }
}
