package i.m0.e;

import i.i0;
import i.z;
/* compiled from: RealResponseBody.kt */
/* loaded from: classes.dex */
public final class h extends i0 {

    /* renamed from: c  reason: collision with root package name */
    public final String f6679c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6680d;

    /* renamed from: e  reason: collision with root package name */
    public final j.j f6681e;

    public h(String str, long j2, j.j jVar) {
        this.f6679c = str;
        this.f6680d = j2;
        this.f6681e = jVar;
    }

    @Override // i.i0
    public z E() {
        String str = this.f6679c;
        if (str != null) {
            z.a aVar = z.f6873f;
            return z.a.b(str);
        }
        return null;
    }

    @Override // i.i0
    public j.j G() {
        return this.f6681e;
    }

    @Override // i.i0
    public long g() {
        return this.f6680d;
    }
}
