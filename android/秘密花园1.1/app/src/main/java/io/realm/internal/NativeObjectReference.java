package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;

/* loaded from: classes.dex */
public final class NativeObjectReference extends PhantomReference<i> {

    /* renamed from: f  reason: collision with root package name */
    public static b f6912f = new b(null);
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final h f6913c;

    /* renamed from: d  reason: collision with root package name */
    public NativeObjectReference f6914d;

    /* renamed from: e  reason: collision with root package name */
    public NativeObjectReference f6915e;

    /* loaded from: classes.dex */
    public static class b {
        public NativeObjectReference a;

        public b(a aVar) {
        }
    }

    public NativeObjectReference(h hVar, i iVar, ReferenceQueue<? super i> referenceQueue) {
        super(iVar, referenceQueue);
        this.a = iVar.getNativePtr();
        this.b = iVar.getNativeFinalizerPtr();
        this.f6913c = hVar;
        b bVar = f6912f;
        synchronized (bVar) {
            this.f6914d = null;
            this.f6915e = bVar.a;
            if (bVar.a != null) {
                bVar.a.f6914d = this;
            }
            bVar.a = this;
        }
    }

    public static native void nativeCleanUp(long j2, long j3);

    public void a() {
        synchronized (this.f6913c) {
            nativeCleanUp(this.b, this.a);
        }
        b bVar = f6912f;
        synchronized (bVar) {
            NativeObjectReference nativeObjectReference = this.f6915e;
            NativeObjectReference nativeObjectReference2 = this.f6914d;
            this.f6915e = null;
            this.f6914d = null;
            if (nativeObjectReference2 != null) {
                nativeObjectReference2.f6915e = nativeObjectReference;
            } else {
                bVar.a = nativeObjectReference;
            }
            if (nativeObjectReference != null) {
                nativeObjectReference.f6914d = nativeObjectReference2;
            }
        }
    }
}
