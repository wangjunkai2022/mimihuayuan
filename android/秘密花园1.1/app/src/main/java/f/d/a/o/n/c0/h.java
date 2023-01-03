package f.d.a.o.n.c0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.n.c0.i;
import f.d.a.o.n.l;
import f.d.a.o.n.w;

/* compiled from: LruResourceCache.java */
/* loaded from: classes.dex */
public class h extends f.d.a.u.f<f.d.a.o.f, w<?>> implements i {

    /* renamed from: d  reason: collision with root package name */
    public i.a f3527d;

    public h(long j2) {
        super(j2);
    }

    @Override // f.d.a.u.f
    public int b(@Nullable w<?> wVar) {
        w<?> wVar2 = wVar;
        if (wVar2 == null) {
            return 1;
        }
        return wVar2.getSize();
    }

    @Override // f.d.a.u.f
    public void c(@NonNull f.d.a.o.f fVar, @Nullable w<?> wVar) {
        w<?> wVar2 = wVar;
        i.a aVar = this.f3527d;
        if (aVar == null || wVar2 == null) {
            return;
        }
        ((l) aVar).f3588e.a(wVar2);
    }

    @Nullable
    public /* bridge */ /* synthetic */ w f(@NonNull f.d.a.o.f fVar, @Nullable w wVar) {
        return (w) super.d(fVar, wVar);
    }
}
