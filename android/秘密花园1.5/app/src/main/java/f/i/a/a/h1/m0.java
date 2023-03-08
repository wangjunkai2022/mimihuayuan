package f.i.a.a.h1;

import java.util.Arrays;
import java.util.Random;

/* compiled from: ShuffleOrder.java */
/* loaded from: classes.dex */
public interface m0 {

    /* compiled from: ShuffleOrder.java */
    /* loaded from: classes.dex */
    public static final class b implements m0 {
        public final int a;

        public b(int i2) {
            this.a = i2;
        }

        @Override // f.i.a.a.h1.m0
        public m0 a(int i2, int i3) {
            return new b((this.a - i3) + i2);
        }

        @Override // f.i.a.a.h1.m0
        public int b(int i2) {
            int i3 = i2 + 1;
            if (i3 < this.a) {
                return i3;
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public m0 c(int i2, int i3) {
            return new b(this.a + i3);
        }

        @Override // f.i.a.a.h1.m0
        public int d() {
            return this.a;
        }

        @Override // f.i.a.a.h1.m0
        public int e() {
            return this.a > 0 ? 0 : -1;
        }

        @Override // f.i.a.a.h1.m0
        public int f(int i2) {
            int i3 = i2 - 1;
            if (i3 >= 0) {
                return i3;
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public int g() {
            int i2 = this.a;
            if (i2 > 0) {
                return i2 - 1;
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public m0 h() {
            return new b(0);
        }
    }

    m0 a(int i2, int i3);

    int b(int i2);

    m0 c(int i2, int i3);

    int d();

    int e();

    int f(int i2);

    int g();

    m0 h();

    /* compiled from: ShuffleOrder.java */
    /* loaded from: classes.dex */
    public static class a implements m0 {
        public final Random a;
        public final int[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f4895c;

        public a(int[] iArr, Random random) {
            this.b = iArr;
            this.a = random;
            this.f4895c = new int[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                this.f4895c[iArr[i2]] = i2;
            }
        }

        @Override // f.i.a.a.h1.m0
        public m0 a(int i2, int i3) {
            int i4 = i3 - i2;
            int[] iArr = new int[this.b.length - i4];
            int i5 = 0;
            int i6 = 0;
            while (true) {
                int[] iArr2 = this.b;
                if (i5 < iArr2.length) {
                    if (iArr2[i5] < i2 || iArr2[i5] >= i3) {
                        int i7 = i5 - i6;
                        int[] iArr3 = this.b;
                        iArr[i7] = iArr3[i5] >= i2 ? iArr3[i5] - i4 : iArr3[i5];
                    } else {
                        i6++;
                    }
                    i5++;
                } else {
                    return new a(iArr, new Random(this.a.nextLong()));
                }
            }
        }

        @Override // f.i.a.a.h1.m0
        public int b(int i2) {
            int i3 = this.f4895c[i2] + 1;
            int[] iArr = this.b;
            if (i3 < iArr.length) {
                return iArr[i3];
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public m0 c(int i2, int i3) {
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int i4 = 0;
            while (i4 < i3) {
                iArr[i4] = this.a.nextInt(this.b.length + 1);
                int i5 = i4 + 1;
                int nextInt = this.a.nextInt(i5);
                iArr2[i4] = iArr2[nextInt];
                iArr2[nextInt] = i4 + i2;
                i4 = i5;
            }
            Arrays.sort(iArr);
            int[] iArr3 = new int[this.b.length + i3];
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < this.b.length + i3; i8++) {
                if (i6 < i3 && i7 == iArr[i6]) {
                    iArr3[i8] = iArr2[i6];
                    i6++;
                } else {
                    int i9 = i7 + 1;
                    iArr3[i8] = this.b[i7];
                    if (iArr3[i8] >= i2) {
                        iArr3[i8] = iArr3[i8] + i3;
                    }
                    i7 = i9;
                }
            }
            return new a(iArr3, new Random(this.a.nextLong()));
        }

        @Override // f.i.a.a.h1.m0
        public int d() {
            return this.b.length;
        }

        @Override // f.i.a.a.h1.m0
        public int e() {
            int[] iArr = this.b;
            if (iArr.length > 0) {
                return iArr[0];
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public int f(int i2) {
            int i3 = this.f4895c[i2] - 1;
            if (i3 >= 0) {
                return this.b[i3];
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public int g() {
            int[] iArr = this.b;
            if (iArr.length > 0) {
                return iArr[iArr.length - 1];
            }
            return -1;
        }

        @Override // f.i.a.a.h1.m0
        public m0 h() {
            return new a(0, new Random(this.a.nextLong()));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public a(int r6, java.util.Random r7) {
            /*
                r5 = this;
                int[] r0 = new int[r6]
                r1 = 0
            L3:
                if (r1 >= r6) goto L13
                int r2 = r1 + 1
                int r3 = r7.nextInt(r2)
                r4 = r0[r3]
                r0[r1] = r4
                r0[r3] = r1
                r1 = r2
                goto L3
            L13:
                r5.<init>(r0, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.m0.a.<init>(int, java.util.Random):void");
        }
    }
}
