package f.i.a.a.m1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* compiled from: SlidingPercentile.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: h  reason: collision with root package name */
    public static final Comparator<b> f5780h = f.i.a.a.m1.b.a;

    /* renamed from: i  reason: collision with root package name */
    public static final Comparator<b> f5781i = c.a;
    public final int a;

    /* renamed from: e  reason: collision with root package name */
    public int f5784e;

    /* renamed from: f  reason: collision with root package name */
    public int f5785f;

    /* renamed from: g  reason: collision with root package name */
    public int f5786g;

    /* renamed from: c  reason: collision with root package name */
    public final b[] f5782c = new b[5];
    public final ArrayList<b> b = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public int f5783d = -1;

    /* compiled from: SlidingPercentile.java */
    /* loaded from: classes.dex */
    public static class b {
        public int a;
        public int b;

        /* renamed from: c  reason: collision with root package name */
        public float f5787c;

        public b() {
        }

        public b(a aVar) {
        }
    }

    public z(int i2) {
        this.a = i2;
    }

    public static /* synthetic */ int c(b bVar, b bVar2) {
        return bVar.a - bVar2.a;
    }

    public void a(int i2, float f2) {
        b bVar;
        if (this.f5783d != 1) {
            Collections.sort(this.b, f5780h);
            this.f5783d = 1;
        }
        int i3 = this.f5786g;
        if (i3 > 0) {
            b[] bVarArr = this.f5782c;
            int i4 = i3 - 1;
            this.f5786g = i4;
            bVar = bVarArr[i4];
        } else {
            bVar = new b(null);
        }
        int i5 = this.f5784e;
        this.f5784e = i5 + 1;
        bVar.a = i5;
        bVar.b = i2;
        bVar.f5787c = f2;
        this.b.add(bVar);
        this.f5785f += i2;
        while (true) {
            int i6 = this.f5785f;
            int i7 = this.a;
            if (i6 <= i7) {
                return;
            }
            int i8 = i6 - i7;
            b bVar2 = this.b.get(0);
            int i9 = bVar2.b;
            if (i9 <= i8) {
                this.f5785f -= i9;
                this.b.remove(0);
                int i10 = this.f5786g;
                if (i10 < 5) {
                    b[] bVarArr2 = this.f5782c;
                    this.f5786g = i10 + 1;
                    bVarArr2[i10] = bVar2;
                }
            } else {
                bVar2.b = i9 - i8;
                this.f5785f -= i8;
            }
        }
    }

    public float b(float f2) {
        if (this.f5783d != 0) {
            Collections.sort(this.b, f5781i);
            this.f5783d = 0;
        }
        float f3 = f2 * this.f5785f;
        int i2 = 0;
        for (int i3 = 0; i3 < this.b.size(); i3++) {
            b bVar = this.b.get(i3);
            i2 += bVar.b;
            if (i2 >= f3) {
                return bVar.f5787c;
            }
        }
        if (this.b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<b> arrayList = this.b;
        return arrayList.get(arrayList.size() - 1).f5787c;
    }
}
