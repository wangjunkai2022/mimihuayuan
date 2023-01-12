package f.i.a.a;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: Format.java */
/* loaded from: classes.dex */
public final class b0 implements Parcelable {
    public static final Parcelable.Creator<b0> CREATOR = new a();
    @Nullable
    public final String A;
    public final int B;
    public int C;
    @Nullable
    public final String a;
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4082c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4083d;

    /* renamed from: e  reason: collision with root package name */
    public final int f4084e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f4085f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final f.i.a.a.d1.a f4086g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public final String f4087h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public final String f4088i;

    /* renamed from: j  reason: collision with root package name */
    public final int f4089j;

    /* renamed from: k  reason: collision with root package name */
    public final List<byte[]> f4090k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public final f.i.a.a.z0.e f4091l;

    /* renamed from: m  reason: collision with root package name */
    public final long f4092m;
    public final int n;
    public final int o;
    public final float p;
    public final int q;
    public final float r;
    public final int s;
    @Nullable
    public final byte[] t;
    @Nullable
    public final f.i.a.a.n1.i u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    /* compiled from: Format.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<b0> {
        @Override // android.os.Parcelable.Creator
        public b0 createFromParcel(Parcel parcel) {
            return new b0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public b0[] newArray(int i2) {
            return new b0[i2];
        }
    }

    public b0(@Nullable String str, @Nullable String str2, int i2, int i3, int i4, @Nullable String str3, @Nullable f.i.a.a.d1.a aVar, @Nullable String str4, @Nullable String str5, int i5, @Nullable List<byte[]> list, @Nullable f.i.a.a.z0.e eVar, long j2, int i6, int i7, float f2, int i8, float f3, @Nullable byte[] bArr, int i9, @Nullable f.i.a.a.n1.i iVar, int i10, int i11, int i12, int i13, int i14, @Nullable String str6, int i15) {
        this.a = str;
        this.b = str2;
        this.f4082c = i2;
        this.f4083d = i3;
        this.f4084e = i4;
        this.f4085f = str3;
        this.f4086g = aVar;
        this.f4087h = str4;
        this.f4088i = str5;
        this.f4089j = i5;
        this.f4090k = list == null ? Collections.emptyList() : list;
        this.f4091l = eVar;
        this.f4092m = j2;
        this.n = i6;
        this.o = i7;
        this.p = f2;
        int i16 = i8;
        this.q = i16 == -1 ? 0 : i16;
        this.r = f3 == -1.0f ? 1.0f : f3;
        this.t = bArr;
        this.s = i9;
        this.u = iVar;
        this.v = i10;
        this.w = i11;
        this.x = i12;
        int i17 = i13;
        this.y = i17 == -1 ? 0 : i17;
        int i18 = i14;
        this.z = i18 == -1 ? 0 : i18;
        this.A = f.i.a.a.m1.h0.a0(str6);
        this.B = i15;
    }

    public static b0 g(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i2, int i3, int i4, @Nullable List<byte[]> list, int i5, int i6, @Nullable String str6) {
        return new b0(str, str2, i5, i6, i2, str5, null, str3, str4, -1, list, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i3, i4, -1, -1, -1, str6, -1);
    }

    public static b0 h(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, int i4, int i5, int i6, int i7, int i8, @Nullable List<byte[]> list, @Nullable f.i.a.a.z0.e eVar, int i9, @Nullable String str4, @Nullable f.i.a.a.d1.a aVar) {
        return new b0(str, null, i9, 0, i2, str3, aVar, null, str2, i3, list, eVar, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, i4, i5, i6, i7, i8, str4, -1);
    }

    public static b0 i(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, int i4, int i5, int i6, @Nullable List<byte[]> list, @Nullable f.i.a.a.z0.e eVar, int i7, @Nullable String str4) {
        return h(str, str2, str3, i2, i3, i4, i5, i6, -1, -1, list, eVar, i7, str4, null);
    }

    public static b0 j(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, int i4, int i5, @Nullable List<byte[]> list, @Nullable f.i.a.a.z0.e eVar, int i6, @Nullable String str4) {
        return i(str, str2, null, i2, i3, i4, i5, -1, list, eVar, i6, str4);
    }

    public static b0 k(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i2, int i3, int i4, @Nullable String str6) {
        return new b0(str, str2, i3, i4, i2, str5, null, str3, str4, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, -1);
    }

    public static b0 l(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, @Nullable List<byte[]> list, @Nullable String str4, @Nullable f.i.a.a.z0.e eVar) {
        return new b0(str, null, i3, 0, i2, null, null, null, str2, -1, list, eVar, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, -1);
    }

    public static b0 m(@Nullable String str, @Nullable String str2, long j2) {
        return new b0(str, null, 0, 0, -1, null, null, null, str2, -1, null, null, j2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    public static b0 n(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, @Nullable f.i.a.a.z0.e eVar) {
        return new b0(str, null, 0, 0, i2, null, null, null, str2, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    public static b0 o(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i2, int i3, int i4, @Nullable String str6) {
        return p(str, str2, str3, str4, null, i2, i3, i4, str6, -1);
    }

    public static b0 p(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, int i2, int i3, int i4, @Nullable String str6, int i5) {
        return new b0(str, str2, i3, i4, i2, str5, null, str3, str4, -1, null, null, RecyclerView.FOREVER_NS, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str6, i5);
    }

    public static b0 q(@Nullable String str, String str2, int i2, @Nullable String str3, @Nullable f.i.a.a.z0.e eVar) {
        return r(str, str2, null, -1, i2, str3, -1, eVar, RecyclerView.FOREVER_NS, Collections.emptyList());
    }

    public static b0 r(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, @Nullable String str4, int i4, @Nullable f.i.a.a.z0.e eVar, long j2, List<byte[]> list) {
        return new b0(str, null, i3, 0, i2, str3, null, null, str2, -1, list, eVar, j2, -1, -1, -1.0f, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, str4, i4);
    }

    public static b0 s(@Nullable String str, @Nullable String str2, @Nullable String str3, String str4, String str5, int i2, int i3, int i4, float f2, @Nullable List<byte[]> list, int i5, int i6) {
        return new b0(str, str2, i5, i6, i2, str5, null, str3, str4, -1, list, null, RecyclerView.FOREVER_NS, i3, i4, f2, -1, -1.0f, null, -1, null, -1, -1, -1, -1, -1, null, -1);
    }

    public static b0 t(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, int i4, int i5, float f2, @Nullable List<byte[]> list, int i6, float f3, @Nullable f.i.a.a.z0.e eVar) {
        return u(str, str2, str3, i2, i3, i4, i5, f2, list, i6, f3, null, -1, null, null);
    }

    public static b0 u(@Nullable String str, @Nullable String str2, @Nullable String str3, int i2, int i3, int i4, int i5, float f2, @Nullable List<byte[]> list, int i6, float f3, byte[] bArr, int i7, @Nullable f.i.a.a.n1.i iVar, @Nullable f.i.a.a.z0.e eVar) {
        return new b0(str, null, 0, 0, i2, str3, null, null, str2, i3, list, eVar, RecyclerView.FOREVER_NS, i4, i5, f2, i6, f3, bArr, i7, iVar, -1, -1, -1, -1, -1, null, -1);
    }

    public b0 a(@Nullable f.i.a.a.z0.e eVar) {
        return new b0(this.a, this.b, this.f4082c, this.f4083d, this.f4084e, this.f4085f, this.f4086g, this.f4087h, this.f4088i, this.f4089j, this.f4090k, eVar, this.f4092m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
    }

    public b0 b(float f2) {
        return new b0(this.a, this.b, this.f4082c, this.f4083d, this.f4084e, this.f4085f, this.f4086g, this.f4087h, this.f4088i, this.f4089j, this.f4090k, this.f4091l, this.f4092m, this.n, this.o, f2, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
    }

    public b0 c(int i2, int i3) {
        return new b0(this.a, this.b, this.f4082c, this.f4083d, this.f4084e, this.f4085f, this.f4086g, this.f4087h, this.f4088i, this.f4089j, this.f4090k, this.f4091l, this.f4092m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, i2, i3, this.A, this.B);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f.i.a.a.b0 d(f.i.a.a.b0 r35) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b0.d(f.i.a.a.b0):f.i.a.a.b0");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public b0 e(@Nullable f.i.a.a.d1.a aVar) {
        return new b0(this.a, this.b, this.f4082c, this.f4083d, this.f4084e, this.f4085f, aVar, this.f4087h, this.f4088i, this.f4089j, this.f4090k, this.f4091l, this.f4092m, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
    }

    public boolean equals(@Nullable Object obj) {
        int i2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b0.class != obj.getClass()) {
            return false;
        }
        b0 b0Var = (b0) obj;
        int i3 = this.C;
        return (i3 == 0 || (i2 = b0Var.C) == 0 || i3 == i2) && this.f4082c == b0Var.f4082c && this.f4083d == b0Var.f4083d && this.f4084e == b0Var.f4084e && this.f4089j == b0Var.f4089j && this.f4092m == b0Var.f4092m && this.n == b0Var.n && this.o == b0Var.o && this.q == b0Var.q && this.s == b0Var.s && this.v == b0Var.v && this.w == b0Var.w && this.x == b0Var.x && this.y == b0Var.y && this.z == b0Var.z && this.B == b0Var.B && Float.compare(this.p, b0Var.p) == 0 && Float.compare(this.r, b0Var.r) == 0 && f.i.a.a.m1.h0.b(this.a, b0Var.a) && f.i.a.a.m1.h0.b(this.b, b0Var.b) && f.i.a.a.m1.h0.b(this.f4085f, b0Var.f4085f) && f.i.a.a.m1.h0.b(this.f4087h, b0Var.f4087h) && f.i.a.a.m1.h0.b(this.f4088i, b0Var.f4088i) && f.i.a.a.m1.h0.b(this.A, b0Var.A) && Arrays.equals(this.t, b0Var.t) && f.i.a.a.m1.h0.b(this.f4086g, b0Var.f4086g) && f.i.a.a.m1.h0.b(this.u, b0Var.u) && f.i.a.a.m1.h0.b(this.f4091l, b0Var.f4091l) && w(b0Var);
    }

    public b0 f(long j2) {
        return new b0(this.a, this.b, this.f4082c, this.f4083d, this.f4084e, this.f4085f, this.f4086g, this.f4087h, this.f4088i, this.f4089j, this.f4090k, this.f4091l, j2, this.n, this.o, this.p, this.q, this.r, this.t, this.s, this.u, this.v, this.w, this.x, this.y, this.z, this.A, this.B);
    }

    public int hashCode() {
        if (this.C == 0) {
            String str = this.a;
            int hashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.b;
            int hashCode2 = (((((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f4082c) * 31) + this.f4083d) * 31) + this.f4084e) * 31;
            String str3 = this.f4085f;
            int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            f.i.a.a.d1.a aVar = this.f4086g;
            int hashCode4 = (hashCode3 + (aVar == null ? 0 : aVar.hashCode())) * 31;
            String str4 = this.f4087h;
            int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.f4088i;
            int hashCode6 = str5 == null ? 0 : str5.hashCode();
            int floatToIntBits = (((((((((((((Float.floatToIntBits(this.r) + ((((Float.floatToIntBits(this.p) + ((((((((((hashCode5 + hashCode6) * 31) + this.f4089j) * 31) + ((int) this.f4092m)) * 31) + this.n) * 31) + this.o) * 31)) * 31) + this.q) * 31)) * 31) + this.s) * 31) + this.v) * 31) + this.w) * 31) + this.x) * 31) + this.y) * 31) + this.z) * 31;
            String str6 = this.A;
            this.C = ((floatToIntBits + (str6 != null ? str6.hashCode() : 0)) * 31) + this.B;
        }
        return this.C;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Format(");
        o.append(this.a);
        o.append(", ");
        o.append(this.b);
        o.append(", ");
        o.append(this.f4087h);
        o.append(", ");
        o.append(this.f4088i);
        o.append(", ");
        o.append(this.f4085f);
        o.append(", ");
        o.append(this.f4084e);
        o.append(", ");
        o.append(this.A);
        o.append(", [");
        o.append(this.n);
        o.append(", ");
        o.append(this.o);
        o.append(", ");
        o.append(this.p);
        o.append("], [");
        o.append(this.v);
        o.append(", ");
        return f.b.a.a.a.k(o, this.w, "])");
    }

    public int v() {
        int i2;
        int i3 = this.n;
        if (i3 == -1 || (i2 = this.o) == -1) {
            return -1;
        }
        return i3 * i2;
    }

    public boolean w(b0 b0Var) {
        if (this.f4090k.size() != b0Var.f4090k.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.f4090k.size(); i2++) {
            if (!Arrays.equals(this.f4090k.get(i2), b0Var.f4090k.get(i2))) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeInt(this.f4082c);
        parcel.writeInt(this.f4083d);
        parcel.writeInt(this.f4084e);
        parcel.writeString(this.f4085f);
        parcel.writeParcelable(this.f4086g, 0);
        parcel.writeString(this.f4087h);
        parcel.writeString(this.f4088i);
        parcel.writeInt(this.f4089j);
        int size = this.f4090k.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeByteArray(this.f4090k.get(i3));
        }
        parcel.writeParcelable(this.f4091l, 0);
        parcel.writeLong(this.f4092m);
        parcel.writeInt(this.n);
        parcel.writeInt(this.o);
        parcel.writeFloat(this.p);
        parcel.writeInt(this.q);
        parcel.writeFloat(this.r);
        f.i.a.a.m1.h0.s0(parcel, this.t != null);
        byte[] bArr = this.t;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
        parcel.writeInt(this.s);
        parcel.writeParcelable(this.u, i2);
        parcel.writeInt(this.v);
        parcel.writeInt(this.w);
        parcel.writeInt(this.x);
        parcel.writeInt(this.y);
        parcel.writeInt(this.z);
        parcel.writeString(this.A);
        parcel.writeInt(this.B);
    }

    public b0(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.f4082c = parcel.readInt();
        this.f4083d = parcel.readInt();
        this.f4084e = parcel.readInt();
        this.f4085f = parcel.readString();
        this.f4086g = (f.i.a.a.d1.a) parcel.readParcelable(f.i.a.a.d1.a.class.getClassLoader());
        this.f4087h = parcel.readString();
        this.f4088i = parcel.readString();
        this.f4089j = parcel.readInt();
        int readInt = parcel.readInt();
        this.f4090k = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            this.f4090k.add(parcel.createByteArray());
        }
        this.f4091l = (f.i.a.a.z0.e) parcel.readParcelable(f.i.a.a.z0.e.class.getClassLoader());
        this.f4092m = parcel.readLong();
        this.n = parcel.readInt();
        this.o = parcel.readInt();
        this.p = parcel.readFloat();
        this.q = parcel.readInt();
        this.r = parcel.readFloat();
        this.t = f.i.a.a.m1.h0.e0(parcel) ? parcel.createByteArray() : null;
        this.s = parcel.readInt();
        this.u = (f.i.a.a.n1.i) parcel.readParcelable(f.i.a.a.n1.i.class.getClassLoader());
        this.v = parcel.readInt();
        this.w = parcel.readInt();
        this.x = parcel.readInt();
        this.y = parcel.readInt();
        this.z = parcel.readInt();
        this.A = parcel.readString();
        this.B = parcel.readInt();
    }
}
