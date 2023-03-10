package io.realm.internal;

import g.a.f1.h;
import g.a.f1.i;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
/* loaded from: classes.dex */
public final class NativeObjectReference extends PhantomReference<i> {

    /* renamed from: f  reason: collision with root package name */
    public static b f6996f = new b(null);
    public final long a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final h f6997c;

    /* renamed from: d  reason: collision with root package name */
    public NativeObjectReference f6998d;

    /* renamed from: e  reason: collision with root package name */
    public NativeObjectReference f6999e;

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
        this.f6997c = hVar;
        b bVar = f6996f;
        synchronized (bVar) {
            this.f6998d = null;
            this.f6999e = bVar.a;
            if (bVar.a != null) {
                bVar.a.f6998d = this;
            }
            bVar.a = this;
        }
    }

    public static native void nativeCleanUp(long j2, long j3);

    public void a() {
        synchronized (this.f6997c) {
            nativeCleanUp(this.b, this.a);
        }
        b bVar = f6996f;
        synchronized (bVar) {
            NativeObjectReference nativeObjectReference = this.f6999e;
            NativeObjectReference nativeObjectReference2 = this.f6998d;
            this.f6999e = null;
            this.f6998d = null;
            if (nativeObjectReference2 != null) {
                nativeObjectReference2.f6999e = nativeObjectReference;
            } else {
                bVar.a = nativeObjectReference;
            }
            if (nativeObjectReference != null) {
                nativeObjectReference.f6998d = nativeObjectReference2;
            }
        }
    }
}
