package f.i.a.a.h1.r0;

import android.net.Uri;
import c.a.a.b.g.h;
import java.util.Arrays;

/* compiled from: AdPlaybackState.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: f  reason: collision with root package name */
    public static final a f4852f = new a(new long[0]);
    public final int a;
    public final long[] b;

    /* renamed from: c  reason: collision with root package name */
    public final C0075a[] f4853c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4854d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4855e;

    /* compiled from: AdPlaybackState.java */
    /* renamed from: f.i.a.a.h1.r0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0075a {
        public final int a;
        public final Uri[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f4856c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f4857d;

        public C0075a() {
            h.m(true);
            this.a = -1;
            this.f4856c = new int[0];
            this.b = new Uri[0];
            this.f4857d = new long[0];
        }

        public int a(int i2) {
            int i3 = i2 + 1;
            while (true) {
                int[] iArr = this.f4856c;
                if (i3 >= iArr.length || iArr[i3] == 0 || iArr[i3] == 1) {
                    break;
                }
                i3++;
            }
            return i3;
        }

        public boolean b() {
            return this.a == -1 || a(-1) < this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0075a.class != obj.getClass()) {
                return false;
            }
            C0075a c0075a = (C0075a) obj;
            return this.a == c0075a.a && Arrays.equals(this.b, c0075a.b) && Arrays.equals(this.f4856c, c0075a.f4856c) && Arrays.equals(this.f4857d, c0075a.f4857d);
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f4856c);
            return Arrays.hashCode(this.f4857d) + ((hashCode + (((this.a * 31) + Arrays.hashCode(this.b)) * 31)) * 31);
        }
    }

    public a(long... jArr) {
        int length = jArr.length;
        this.a = length;
        this.b = Arrays.copyOf(jArr, length);
        this.f4853c = new C0075a[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f4853c[i2] = new C0075a();
        }
        this.f4854d = 0L;
        this.f4855e = -9223372036854775807L;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.a == aVar.a && this.f4854d == aVar.f4854d && this.f4855e == aVar.f4855e && Arrays.equals(this.b, aVar.b) && Arrays.equals(this.f4853c, aVar.f4853c);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.b);
        return Arrays.hashCode(this.f4853c) + ((hashCode + (((((this.a * 31) + ((int) this.f4854d)) * 31) + ((int) this.f4855e)) * 31)) * 31);
    }
}
