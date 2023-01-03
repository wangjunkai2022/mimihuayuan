package i.m0.e;

import i.i0;
import i.z;
import j.j;

/* compiled from: RealResponseBody.kt */
/* loaded from: classes.dex */
public final class h extends i0 {

    /* renamed from: c  reason: collision with root package name */
    public final String f6595c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6596d;

    /* renamed from: e  reason: collision with root package name */
    public final j f6597e;

    public h(String str, long j2, j jVar) {
        this.f6595c = str;
        this.f6596d = j2;
        this.f6597e = jVar;
    }

    @Override // i.i0
    public z E() {
        String str = this.f6595c;
        if (str == null) {
            return null;
        }
        z.a aVar = z.f6789f;
        return z.a.b(str);
    }

    @Override // i.i0
    public j G() {
        return this.f6597e;
    }

    @Override // i.i0
    public long g() {
        return this.f6596d;
    }
}
