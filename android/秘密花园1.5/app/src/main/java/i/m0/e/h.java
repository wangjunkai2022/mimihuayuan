package i.m0.e;

import i.i0;
import i.z;

/* compiled from: RealResponseBody.kt */
/* loaded from: classes.dex */
public final class h extends i0 {

    /* renamed from: c  reason: collision with root package name */
    public final String f6670c;

    /* renamed from: d  reason: collision with root package name */
    public final long f6671d;

    /* renamed from: e  reason: collision with root package name */
    public final j.j f6672e;

    public h(String str, long j2, j.j jVar) {
        this.f6670c = str;
        this.f6671d = j2;
        this.f6672e = jVar;
    }

    @Override // i.i0
    public z E() {
        String str = this.f6670c;
        if (str != null) {
            z.a aVar = z.f6864f;
            return z.a.b(str);
        }
        return null;
    }

    @Override // i.i0
    public j.j G() {
        return this.f6672e;
    }

    @Override // i.i0
    public long g() {
        return this.f6671d;
    }
}
