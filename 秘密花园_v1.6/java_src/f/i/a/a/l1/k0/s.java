package f.i.a.a.l1.k0;

import f.i.a.a.l1.k0.b;
import java.util.Comparator;
import java.util.TreeSet;
/* compiled from: LeastRecentlyUsedCacheEvictor.java */
/* loaded from: classes.dex */
public final class s implements g, Comparator<k> {
    public final long a;
    public final TreeSet<k> b = new TreeSet<>(this);

    /* renamed from: c  reason: collision with root package name */
    public long f5670c;

    public s(long j2) {
        this.a = j2;
    }

    @Override // f.i.a.a.l1.k0.b.InterfaceC0088b
    public void a(b bVar, k kVar) {
        this.b.remove(kVar);
        this.f5670c -= kVar.f5649c;
    }

    @Override // f.i.a.a.l1.k0.b.InterfaceC0088b
    public void b(b bVar, k kVar, k kVar2) {
        this.b.remove(kVar);
        this.f5670c -= kVar.f5649c;
        c(bVar, kVar2);
    }

    @Override // f.i.a.a.l1.k0.b.InterfaceC0088b
    public void c(b bVar, k kVar) {
        this.b.add(kVar);
        this.f5670c += kVar.f5649c;
        g(bVar, 0L);
    }

    @Override // java.util.Comparator
    public int compare(k kVar, k kVar2) {
        k kVar3 = kVar;
        k kVar4 = kVar2;
        long j2 = kVar3.f5652f;
        long j3 = kVar4.f5652f;
        if (j2 - j3 == 0) {
            return kVar3.compareTo(kVar4);
        }
        return j2 < j3 ? -1 : 1;
    }

    @Override // f.i.a.a.l1.k0.g
    public void d() {
    }

    @Override // f.i.a.a.l1.k0.g
    public boolean e() {
        return true;
    }

    @Override // f.i.a.a.l1.k0.g
    public void f(b bVar, String str, long j2, long j3) {
        if (j3 != -1) {
            g(bVar, j3);
        }
    }

    public final void g(b bVar, long j2) {
        while (this.f5670c + j2 > this.a && !this.b.isEmpty()) {
            try {
                bVar.e(this.b.first());
            } catch (b.a unused) {
            }
        }
    }
}
