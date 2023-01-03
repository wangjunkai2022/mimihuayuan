package io.realm.internal;

import g.a.b0;
import g.a.f1.h;
import g.a.f1.i;
import g.a.f1.j;
import io.realm.CompactOnLaunchCallback;
import io.realm.internal.OsSharedRealm;
import io.realm.log.RealmLog;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class OsRealmConfig implements i {

    /* renamed from: f  reason: collision with root package name */
    public static final long f6925f = nativeGetFinalizerPtr();
    public final b0 a;
    public final URI b;

    /* renamed from: c  reason: collision with root package name */
    public final long f6926c;

    /* renamed from: d  reason: collision with root package name */
    public final h f6927d = new h();

    /* renamed from: e  reason: collision with root package name */
    public final CompactOnLaunchCallback f6928e;

    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            a = iArr;
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        public b0 a;
        public OsSchemaInfo b = null;

        /* renamed from: c  reason: collision with root package name */
        public OsSharedRealm.MigrationCallback f6929c = null;

        /* renamed from: d  reason: collision with root package name */
        public OsSharedRealm.InitializationCallback f6930d = null;

        /* renamed from: e  reason: collision with root package name */
        public boolean f6931e = false;

        /* renamed from: f  reason: collision with root package name */
        public String f6932f = "";

        public b(b0 b0Var) {
            this.a = b0Var;
        }

        public OsRealmConfig a() {
            return new OsRealmConfig(this.a, this.f6932f, this.f6931e, this.b, this.f6929c, this.f6930d, null);
        }
    }

    /* loaded from: classes.dex */
    public enum c {
        FULL(0),
        MEM_ONLY(1);

        c(int i2) {
        }
    }

    /* loaded from: classes.dex */
    public enum d {
        SCHEMA_MODE_AUTOMATIC((byte) 0),
        SCHEMA_MODE_IMMUTABLE((byte) 1),
        SCHEMA_MODE_READONLY((byte) 2),
        SCHEMA_MODE_RESET_FILE((byte) 3),
        SCHEMA_MODE_ADDITIVE((byte) 4),
        SCHEMA_MODE_MANUAL((byte) 5);
        
        public final byte a;

        d(byte b) {
            this.a = b;
        }
    }

    public OsRealmConfig(b0 b0Var, String str, boolean z, OsSchemaInfo osSchemaInfo, OsSharedRealm.MigrationCallback migrationCallback, OsSharedRealm.InitializationCallback initializationCallback, a aVar) {
        long j2;
        URI uri;
        int i2;
        URI uri2;
        this.a = b0Var;
        this.f6926c = nativeCreate(b0Var.f6197c, str, false, true);
        h.f6233c.a(this);
        if (j.b() != null) {
            Object[] objArr = new Object[12];
            String str2 = (String) objArr[0];
            String str3 = (String) objArr[1];
            String str4 = (String) objArr[2];
            String str5 = (String) objArr[3];
            boolean equals = Boolean.TRUE.equals(objArr[4]);
            String str6 = (String) objArr[5];
            Byte b2 = (Byte) objArr[6];
            boolean equals2 = Boolean.TRUE.equals(objArr[7]);
            String str7 = (String) objArr[8];
            String str8 = (String) objArr[9];
            Byte b3 = (Byte) objArr[11];
            Map map = (Map) objArr[10];
            String[] strArr = new String[map != null ? map.size() * 2 : 0];
            if (map != null) {
                int i3 = 0;
                for (Map.Entry entry : map.entrySet()) {
                    strArr[i3] = (String) entry.getKey();
                    strArr[i3 + 1] = (String) entry.getValue();
                    i3 += 2;
                }
            }
            byte[] a2 = b0Var.a();
            if (a2 != null) {
                nativeSetEncryptionKey(this.f6926c, a2);
            }
            nativeSetInMemory(this.f6926c, b0Var.f6203i == c.MEM_ONLY);
            nativeEnableChangeNotification(this.f6926c, z);
            d dVar = d.SCHEMA_MODE_MANUAL;
            if (b0Var.o) {
                dVar = d.SCHEMA_MODE_IMMUTABLE;
            } else if (b0Var.f6207m) {
                dVar = d.SCHEMA_MODE_READONLY;
            } else if (str3 != null) {
                dVar = d.SCHEMA_MODE_ADDITIVE;
            } else if (b0Var.f6202h) {
                dVar = d.SCHEMA_MODE_RESET_FILE;
            }
            long j3 = b0Var.f6200f;
            if (osSchemaInfo == null) {
                j2 = 0;
            } else {
                j2 = osSchemaInfo.a;
            }
            nativeSetSchemaConfig(this.f6926c, dVar.a, j3, j2, migrationCallback);
            CompactOnLaunchCallback compactOnLaunchCallback = b0Var.n;
            this.f6928e = compactOnLaunchCallback;
            if (compactOnLaunchCallback != null) {
                nativeSetCompactOnLaunchCallback(this.f6926c, compactOnLaunchCallback);
            }
            if (initializationCallback != null) {
                nativeSetInitializationCallback(this.f6926c, initializationCallback);
            }
            if (str3 != null) {
                String nativeCreateAndSetSyncConfig = nativeCreateAndSetSyncConfig(this.f6926c, str3, str4, str2, str5, equals2, b2.byteValue(), str7, str8, strArr, b3.byteValue());
                try {
                    uri = new URI(nativeCreateAndSetSyncConfig);
                    i2 = 6;
                } catch (URISyntaxException e2) {
                    i2 = 6;
                    RealmLog.b(6, e2, "Cannot create a URI from the Realm URL address", new Object[0]);
                    uri = null;
                }
                nativeSetSyncConfigSslSettings(this.f6926c, equals, str6);
                ProxySelector proxySelector = ProxySelector.getDefault();
                if (!(uri == null || proxySelector == null)) {
                    try {
                        uri2 = new URI(nativeCreateAndSetSyncConfig.replaceFirst("realm", "http"));
                    } catch (URISyntaxException e3) {
                        RealmLog.b(i2, e3, "Cannot create a URI from the Realm URL address", new Object[0]);
                        uri2 = null;
                    }
                    List<Proxy> select = proxySelector.select(uri2);
                    if (select != null && !select.isEmpty()) {
                        Proxy proxy = select.get(0);
                        if (proxy.type() != Proxy.Type.DIRECT) {
                            byte b4 = a.a[proxy.type().ordinal()] == 1 ? (byte) 0 : -1;
                            if (proxy.type() == Proxy.Type.HTTP) {
                                SocketAddress address = proxy.address();
                                if (address instanceof InetSocketAddress) {
                                    InetSocketAddress inetSocketAddress = (InetSocketAddress) address;
                                    nativeSetSyncConfigProxySettings(this.f6926c, b4, inetSocketAddress.getHostString(), inetSocketAddress.getPort());
                                } else {
                                    StringBuilder o = f.b.a.a.a.o("Unsupported proxy socket address type: ");
                                    o.append(address.getClass().getName());
                                    RealmLog.a(o.toString(), new Object[0]);
                                }
                            } else {
                                RealmLog.a("SOCKS proxies are not supported.", new Object[0]);
                            }
                        }
                    }
                }
            } else {
                uri = null;
            }
            this.b = uri;
            return;
        }
        throw null;
    }

    public static native long nativeCreate(String str, String str2, boolean z, boolean z2);

    public static native String nativeCreateAndSetSyncConfig(long j2, String str, String str2, String str3, String str4, boolean z, byte b2, String str5, String str6, String[] strArr, byte b3);

    public static native void nativeEnableChangeNotification(long j2, boolean z);

    public static native long nativeGetFinalizerPtr();

    public static native void nativeSetCompactOnLaunchCallback(long j2, CompactOnLaunchCallback compactOnLaunchCallback);

    public static native void nativeSetEncryptionKey(long j2, byte[] bArr);

    public static native void nativeSetInMemory(long j2, boolean z);

    public static native void nativeSetSyncConfigProxySettings(long j2, byte b2, String str, int i2);

    public static native void nativeSetSyncConfigSslSettings(long j2, boolean z, String str);

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6925f;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.f6926c;
    }

    public final native void nativeSetInitializationCallback(long j2, OsSharedRealm.InitializationCallback initializationCallback);

    public final native void nativeSetSchemaConfig(long j2, byte b2, long j3, long j4, OsSharedRealm.MigrationCallback migrationCallback);
}
