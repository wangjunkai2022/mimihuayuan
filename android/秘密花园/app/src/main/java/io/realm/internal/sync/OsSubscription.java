package io.realm.internal.sync;

import g.a.a0;
import g.a.f1.i;
import g.a.f1.k;
import io.realm.internal.KeepMember;
import io.realm.internal.OsResults;

@KeepMember
/* loaded from: classes.dex */
public class OsSubscription implements i {

    /* renamed from: c  reason: collision with root package name */
    public static final long f6962c = nativeGetFinalizerPtr();
    public final long a;
    public final k<c> b = new k<>();

    /* loaded from: classes.dex */
    public static class b implements k.a<c> {
        public b(a aVar) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [g.a.f1.k$b, java.lang.Object] */
        @Override // g.a.f1.k.a
        public void a(c cVar, Object obj) {
            ((a0) cVar.b).a((OsSubscription) obj);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends k.b<OsSubscription, a0<OsSubscription>> {
        public c(OsSubscription osSubscription, a0<OsSubscription> a0Var) {
            super(osSubscription, a0Var);
        }
    }

    /* loaded from: classes.dex */
    public enum d {
        ERROR(-1),
        CREATING(2),
        PENDING(0),
        COMPLETE(1),
        INVALIDATED(3);
        
        public final int a;

        d(int i2) {
            this.a = i2;
        }
    }

    public OsSubscription(OsResults osResults, g.a.f1.w.a aVar) {
        this.a = nativeCreateOrUpdate(osResults.a, aVar.a, aVar.b, aVar.f6256c);
    }

    public static native long nativeCreateOrUpdate(long j2, String str, long j3, boolean z);

    public static native Object nativeGetError(long j2);

    public static native long nativeGetFinalizerPtr();

    public static native int nativeGetState(long j2);

    @KeepMember
    private void notifyChangeListeners() {
        this.b.b(new b(null));
    }

    public d a() {
        int nativeGetState = nativeGetState(this.a);
        d[] values = d.values();
        for (d dVar : values) {
            if (dVar.a == nativeGetState) {
                return dVar;
            }
        }
        throw new IllegalArgumentException(f.b.a.a.a.J("Unknown value: ", nativeGetState));
    }

    @Override // g.a.f1.i
    public long getNativeFinalizerPtr() {
        return f6962c;
    }

    @Override // g.a.f1.i
    public long getNativePtr() {
        return this.a;
    }

    public final native void nativeStartListening(long j2);
}
