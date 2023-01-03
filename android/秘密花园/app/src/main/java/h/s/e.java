package h.s;

import h.o.b.c;
import h.o.c.g;
import h.o.c.h;

/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class e extends h implements c<CharSequence, Integer, h.c<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ char[] a;
    public final /* synthetic */ boolean b;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public e(char[] cArr, boolean z) {
        super(2);
        this.a = cArr;
        this.b = z;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // h.o.b.c
    public h.c<? extends Integer, ? extends Integer> b(CharSequence charSequence, Integer num) {
        CharSequence charSequence2 = charSequence;
        int intValue = num.intValue();
        if (charSequence2 != null) {
            int k2 = d.k(charSequence2, this.a, intValue, this.b);
            if (k2 < 0) {
                return null;
            }
            return new h.c<>(Integer.valueOf(k2), 1);
        }
        g.f("$receiver");
        throw null;
    }
}
