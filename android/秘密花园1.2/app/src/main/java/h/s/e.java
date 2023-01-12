package h.s;

import h.o.c.h;

/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class e extends h implements h.o.b.c<CharSequence, Integer, h.c<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ char[] a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(char[] cArr, boolean z) {
        super(2);
        this.a = cArr;
        this.b = z;
    }

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
        h.o.c.g.f("$receiver");
        throw null;
    }
}
