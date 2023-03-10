package f.i.a.a.h1.r0;

import android.net.Uri;
import c.a.a.b.g.h;
import java.util.Arrays;
/* compiled from: AdPlaybackState.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: f  reason: collision with root package name */
    public static final a f4936f = new a(new long[0]);
    public final int a;
    public final long[] b;

    /* renamed from: c  reason: collision with root package name */
    public final C0075a[] f4937c;

    /* renamed from: d  reason: collision with root package name */
    public final long f4938d;

    /* renamed from: e  reason: collision with root package name */
    public final long f4939e;

    /* compiled from: AdPlaybackState.java */
    /* renamed from: f.i.a.a.h1.r0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0075a {
        public final int a;
        public final Uri[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f4940c;

        /* renamed from: d  reason: collision with root package name */
        public final long[] f4941d;

        public C0075a() {
            h.m(true);
            this.a = -1;
            this.f4940c = new int[0];
            this.b = new Uri[0];
            this.f4941d = new long[0];
        }

        public int a(int i2) {
            int i3 = i2 + 1;
            while (true) {
                int[] iArr = this.f4940c;
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
            return this.a == c0075a.a && Arrays.equals(this.b, c0075a.b) && Arrays.equals(this.f4940c, c0075a.f4940c) && Arrays.equals(this.f4941d, c0075a.f4941d);
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f4940c);
            return Arrays.hashCode(this.f4941d) + ((hashCode + (((this.a * 31) + Arrays.hashCode(this.b)) * 31)) * 31);
        }
    }

    public a(long... jArr) {
        int length = jArr.length;
        this.a = length;
        this.b = Arrays.copyOf(jArr, length);
        this.f4937c = new C0075a[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.f4937c[i2] = new C0075a();
        }
        this.f4938d = 0L;
        this.f4939e = -9223372036854775807L;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.a == aVar.a && this.f4938d == aVar.f4938d && this.f4939e == aVar.f4939e && Arrays.equals(this.b, aVar.b) && Arrays.equals(this.f4937c, aVar.f4937c);
    }

    public int hashCode() {
        int hashCode = Arrays.hashCode(this.b);
        return Arrays.hashCode(this.f4937c) + ((hashCode + (((((this.a * 31) + ((int) this.f4938d)) * 31) + ((int) this.f4939e)) * 31)) * 31);
    }
}
