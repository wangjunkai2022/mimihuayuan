package j;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: Options.kt */
/* loaded from: classes.dex */
public final class r extends AbstractList<k> implements RandomAccess {

    /* renamed from: c  reason: collision with root package name */
    public static final a f7062c = new a(null);
    public final k[] a;
    public final int[] b;

    /* compiled from: Options.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final void a(long j2, g gVar, int i2, List<? extends k> list, int i3, int i4, List<Integer> list2) {
            int i5;
            int i6;
            int i7;
            int i8;
            g gVar2;
            int i9 = i2;
            if (i3 < i4) {
                for (int i10 = i3; i10 < i4; i10++) {
                    if (!(list.get(i10).b() >= i9)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                k kVar = list.get(i3);
                k kVar2 = list.get(i4 - 1);
                if (i9 == kVar.b()) {
                    int i11 = i3 + 1;
                    i5 = i11;
                    i6 = list2.get(i3).intValue();
                    kVar = list.get(i11);
                } else {
                    i5 = i3;
                    i6 = -1;
                }
                if (kVar.e(i9) != kVar2.e(i9)) {
                    int i12 = 1;
                    for (int i13 = i5 + 1; i13 < i4; i13++) {
                        if (list.get(i13 - 1).e(i9) != list.get(i13).e(i9)) {
                            i12++;
                        }
                    }
                    long b = b(gVar) + j2 + 2 + (i12 * 2);
                    gVar.Z(i12);
                    gVar.Z(i6);
                    for (int i14 = i5; i14 < i4; i14++) {
                        byte e2 = list.get(i14).e(i9);
                        if (i14 == i5 || e2 != list.get(i14 - 1).e(i9)) {
                            gVar.Z(e2 & 255);
                        }
                    }
                    g gVar3 = new g();
                    while (i5 < i4) {
                        byte e3 = list.get(i5).e(i9);
                        int i15 = i5 + 1;
                        int i16 = i15;
                        while (true) {
                            if (i16 >= i4) {
                                i7 = i4;
                                break;
                            } else if (e3 != list.get(i16).e(i9)) {
                                i7 = i16;
                                break;
                            } else {
                                i16++;
                            }
                        }
                        if (i15 == i7 && i9 + 1 == list.get(i5).b()) {
                            gVar.Z(list2.get(i5).intValue());
                            i8 = i7;
                            gVar2 = gVar3;
                        } else {
                            gVar.Z(((int) (b(gVar3) + b)) * (-1));
                            i8 = i7;
                            gVar2 = gVar3;
                            a(b, gVar3, i9 + 1, list, i5, i7, list2);
                        }
                        gVar3 = gVar2;
                        i5 = i8;
                    }
                    gVar.P(gVar3);
                    return;
                }
                int min = Math.min(kVar.b(), kVar2.b());
                int i17 = 0;
                for (int i18 = i9; i18 < min && kVar.e(i18) == kVar2.e(i18); i18++) {
                    i17++;
                }
                long b2 = b(gVar) + j2 + 2 + i17 + 1;
                gVar.Z(-i17);
                gVar.Z(i6);
                int i19 = i9 + i17;
                while (i9 < i19) {
                    gVar.Z(kVar.e(i9) & 255);
                    i9++;
                }
                if (i5 + 1 == i4) {
                    if (i19 == list.get(i5).b()) {
                        gVar.Z(list2.get(i5).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                g gVar4 = new g();
                gVar.Z(((int) (b(gVar4) + b2)) * (-1));
                a(b2, gVar4, i19, list, i5, i4, list2);
                gVar.P(gVar4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        public final long b(g gVar) {
            return gVar.b / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:109:0x0189, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final j.r c(j.k... r18) {
            /*
                Method dump skipped, instructions count: 492
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: j.r.a.c(j.k[]):j.r");
        }
    }

    public r(k[] kVarArr, int[] iArr, h.o.c.f fVar) {
        this.a = kVarArr;
        this.b = iArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj != null ? obj instanceof k : true) {
            return super.contains((k) obj);
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        return this.a[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj != null ? obj instanceof k : true) {
            return super.indexOf((k) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj != null ? obj instanceof k : true) {
            return super.lastIndexOf((k) obj);
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean remove(Object obj) {
        if (obj != null ? obj instanceof k : true) {
            return super.remove((k) obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.a.length;
    }
}
