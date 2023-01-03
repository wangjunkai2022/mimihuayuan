package h.s;

import h.o.c.h;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: Strings.kt */
/* loaded from: classes.dex */
public final class f extends h implements h.o.b.c<CharSequence, Integer, h.c<? extends Integer, ? extends Integer>> {
    public final /* synthetic */ List a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(List list, boolean z) {
        super(2);
        this.a = list;
        this.b = z;
    }

    @Override // h.o.b.c
    public h.c<? extends Integer, ? extends Integer> b(CharSequence charSequence, Integer num) {
        Object obj;
        h.c cVar;
        Object obj2;
        CharSequence charSequence2 = charSequence;
        int intValue = num.intValue();
        if (charSequence2 != null) {
            List list = this.a;
            boolean z = this.b;
            if (!z && list.size() == 1) {
                int size = list.size();
                if (size == 0) {
                    throw new NoSuchElementException("List is empty.");
                }
                if (size == 1) {
                    String str = (String) list.get(0);
                    int j2 = d.j(charSequence2, str, intValue, false, 4);
                    if (j2 >= 0) {
                        cVar = new h.c(Integer.valueOf(j2), str);
                    }
                    cVar = null;
                } else {
                    throw new IllegalArgumentException("List has more than one element.");
                }
            } else {
                if (intValue < 0) {
                    intValue = 0;
                }
                h.p.c cVar2 = new h.p.c(intValue, charSequence2.length());
                if (charSequence2 instanceof String) {
                    int i2 = cVar2.a;
                    int i3 = cVar2.b;
                    int i4 = cVar2.f6334c;
                    if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                        while (true) {
                            Iterator it = list.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    obj2 = null;
                                    break;
                                }
                                obj2 = it.next();
                                String str2 = (String) obj2;
                                if (d.o(str2, 0, (String) charSequence2, i2, str2.length(), z)) {
                                    break;
                                }
                            }
                            String str3 = (String) obj2;
                            if (str3 == null) {
                                if (i2 == i3) {
                                    break;
                                }
                                i2 += i4;
                            } else {
                                cVar = new h.c(Integer.valueOf(i2), str3);
                                break;
                            }
                        }
                    }
                    cVar = null;
                } else {
                    int i5 = cVar2.a;
                    int i6 = cVar2.b;
                    int i7 = cVar2.f6334c;
                    if (i7 < 0 ? i5 >= i6 : i5 <= i6) {
                        while (true) {
                            Iterator it2 = list.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    obj = null;
                                    break;
                                }
                                obj = it2.next();
                                String str4 = (String) obj;
                                if (d.p(str4, 0, charSequence2, i5, str4.length(), z)) {
                                    break;
                                }
                            }
                            String str5 = (String) obj;
                            if (str5 == null) {
                                if (i5 == i6) {
                                    break;
                                }
                                i5 += i7;
                            } else {
                                cVar = new h.c(Integer.valueOf(i5), str5);
                                break;
                            }
                        }
                    }
                    cVar = null;
                }
            }
            if (cVar != null) {
                return new h.c<>(cVar.a, Integer.valueOf(((String) cVar.b).length()));
            }
            return null;
        }
        h.o.c.g.f("$receiver");
        throw null;
    }
}
