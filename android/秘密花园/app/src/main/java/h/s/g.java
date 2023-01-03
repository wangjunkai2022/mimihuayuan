package h.s;

import h.o.b.b;
import h.o.c.h;
import h.p.c;

/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class g extends h implements b<c, String> {
    public final /* synthetic */ CharSequence a;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public g(CharSequence charSequence) {
        super(1);
        this.a = charSequence;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // h.o.b.b
    public String d(c cVar) {
        c cVar2 = cVar;
        if (cVar2 != null) {
            return d.x(this.a, cVar2);
        }
        h.o.c.g.f("it");
        throw null;
    }
}
