package h.s;

import h.o.c.h;
/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class g extends h implements h.o.b.b<h.p.c, String> {
    public final /* synthetic */ CharSequence a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(CharSequence charSequence) {
        super(1);
        this.a = charSequence;
    }

    @Override // h.o.b.b
    public String d(h.p.c cVar) {
        h.p.c cVar2 = cVar;
        if (cVar2 != null) {
            return d.x(this.a, cVar2);
        }
        h.o.c.g.f("it");
        throw null;
    }
}
