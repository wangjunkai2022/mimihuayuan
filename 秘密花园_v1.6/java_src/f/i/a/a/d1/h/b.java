package f.i.a.a.d1.h;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;
/* compiled from: IcyHeaders.java */
/* loaded from: classes.dex */
public final class b implements a.b {
    public static final Parcelable.Creator<b> CREATOR = new a();
    public final int a;
    @Nullable
    public final String b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f4634c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f4635d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f4636e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4637f;

    /* compiled from: IcyHeaders.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i2) {
            return new b[i2];
        }
    }

    public b(int i2, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z, int i3) {
        h.m(i3 == -1 || i3 > 0);
        this.a = i2;
        this.b = str;
        this.f4634c = str2;
        this.f4635d = str3;
        this.f4636e = z;
        this.f4637f = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static f.i.a.a.d1.h.b a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r12) {
        /*
            java.lang.String r0 = "icy-br"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L21
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.NumberFormatException -> L21
            int r0 = r0 * 1000
            if (r0 <= 0) goto L1d
            r4 = 1
            goto L1f
        L1d:
            r0 = -1
            r4 = 0
        L1f:
            r6 = r0
            goto L23
        L21:
            r4 = 0
            r6 = -1
        L23:
            java.lang.String r0 = "icy-genre"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            r5 = 0
            if (r0 == 0) goto L37
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r4 = 1
            goto L38
        L37:
            r7 = r5
        L38:
            java.lang.String r0 = "icy-name"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L4b
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r4 = 1
            goto L4c
        L4b:
            r8 = r5
        L4c:
            java.lang.String r0 = "icy-url"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L5f
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r9 = r0
            r4 = 1
            goto L60
        L5f:
            r9 = r5
        L60:
            java.lang.String r0 = "icy-pub"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L79
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r4 = "1"
            boolean r0 = r0.equals(r4)
            r10 = r0
            r4 = 1
            goto L7a
        L79:
            r10 = 0
        L7a:
            java.lang.String r0 = "icy-metaint"
            java.lang.Object r12 = r12.get(r0)
            java.util.List r12 = (java.util.List) r12
            if (r12 == 0) goto L96
            java.lang.Object r12 = r12.get(r3)
            java.lang.String r12 = (java.lang.String) r12
            int r12 = java.lang.Integer.parseInt(r12)     // Catch: java.lang.NumberFormatException -> L96
            if (r12 <= 0) goto L92
            r1 = r12
            goto L93
        L92:
            r2 = r4
        L93:
            r11 = r1
            r4 = r2
            goto L97
        L96:
            r11 = -1
        L97:
            if (r4 == 0) goto L9f
            f.i.a.a.d1.h.b r12 = new f.i.a.a.d1.h.b
            r5 = r12
            r5.<init>(r6, r7, r8, r9, r10, r11)
        L9f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.h.b.a(java.util.Map):f.i.a.a.d1.h.b");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.a == bVar.a && h0.b(this.b, bVar.b) && h0.b(this.f4634c, bVar.f4634c) && h0.b(this.f4635d, bVar.f4635d) && this.f4636e == bVar.f4636e && this.f4637f == bVar.f4637f;
    }

    public int hashCode() {
        int i2 = (527 + this.a) * 31;
        String str = this.b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4634c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4635d;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f4636e ? 1 : 0)) * 31) + this.f4637f;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("IcyHeaders: name=\"");
        o.append(this.f4634c);
        o.append("\", genre=\"");
        o.append(this.b);
        o.append("\", bitrate=");
        o.append(this.a);
        o.append(", metadataInterval=");
        o.append(this.f4637f);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4634c);
        parcel.writeString(this.f4635d);
        h0.s0(parcel, this.f4636e);
        parcel.writeInt(this.f4637f);
    }

    public b(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.f4634c = parcel.readString();
        this.f4635d = parcel.readString();
        this.f4636e = h0.e0(parcel);
        this.f4637f = parcel.readInt();
    }
}
