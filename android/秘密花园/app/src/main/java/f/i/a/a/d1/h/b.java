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
    public final String f4550c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final String f4551d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f4552e;

    /* renamed from: f  reason: collision with root package name */
    public final int f4553f;

    /* compiled from: IcyHeaders.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<b> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public b[] newArray(int i2) {
            return new b[i2];
        }
    }

    public b(int i2, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z, int i3) {
        h.m(i3 == -1 || i3 > 0);
        this.a = i2;
        this.b = str;
        this.f4550c = str2;
        this.f4551d = str3;
        this.f4552e = z;
        this.f4553f = i3;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x006a  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0099  */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static f.i.a.a.d1.h.b a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r12) {
        /*
            java.lang.String r0 = "icy-br"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L_0x0021
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: NumberFormatException -> 0x0021
            int r0 = r0 * 1000
            if (r0 <= 0) goto L_0x001d
            r4 = 1
            goto L_0x001f
        L_0x001d:
            r0 = -1
            r4 = 0
        L_0x001f:
            r6 = r0
            goto L_0x0023
        L_0x0021:
            r4 = 0
            r6 = -1
        L_0x0023:
            java.lang.String r0 = "icy-genre"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            r5 = 0
            if (r0 == 0) goto L_0x0037
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r4 = 1
            goto L_0x0038
        L_0x0037:
            r7 = r5
        L_0x0038:
            java.lang.String r0 = "icy-name"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x004b
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r4 = 1
            goto L_0x004c
        L_0x004b:
            r8 = r5
        L_0x004c:
            java.lang.String r0 = "icy-url"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x005f
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            r9 = r0
            r4 = 1
            goto L_0x0060
        L_0x005f:
            r9 = r5
        L_0x0060:
            java.lang.String r0 = "icy-pub"
            java.lang.Object r0 = r12.get(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 == 0) goto L_0x0079
            java.lang.Object r0 = r0.get(r3)
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r4 = "1"
            boolean r0 = r0.equals(r4)
            r10 = r0
            r4 = 1
            goto L_0x007a
        L_0x0079:
            r10 = 0
        L_0x007a:
            java.lang.String r0 = "icy-metaint"
            java.lang.Object r12 = r12.get(r0)
            java.util.List r12 = (java.util.List) r12
            if (r12 == 0) goto L_0x0096
            java.lang.Object r12 = r12.get(r3)
            java.lang.String r12 = (java.lang.String) r12
            int r12 = java.lang.Integer.parseInt(r12)     // Catch: NumberFormatException -> 0x0096
            if (r12 <= 0) goto L_0x0092
            r1 = r12
            goto L_0x0093
        L_0x0092:
            r2 = r4
        L_0x0093:
            r11 = r1
            r4 = r2
            goto L_0x0097
        L_0x0096:
            r11 = -1
        L_0x0097:
            if (r4 == 0) goto L_0x009f
            f.i.a.a.d1.h.b r12 = new f.i.a.a.d1.h.b
            r5 = r12
            r5.<init>(r6, r7, r8, r9, r10, r11)
        L_0x009f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.d1.h.b.a(java.util.Map):f.i.a.a.d1.h.b");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.a != bVar.a || !h0.b(this.b, bVar.b) || !h0.b(this.f4550c, bVar.f4550c) || !h0.b(this.f4551d, bVar.f4551d) || this.f4552e != bVar.f4552e || this.f4553f != bVar.f4553f) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        int i2 = (527 + this.a) * 31;
        String str = this.b;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f4550c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f4551d;
        if (str3 != null) {
            i3 = str3.hashCode();
        }
        return ((((hashCode2 + i3) * 31) + (this.f4552e ? 1 : 0)) * 31) + this.f4553f;
    }

    @Override // java.lang.Object
    public String toString() {
        StringBuilder o = f.b.a.a.a.o("IcyHeaders: name=\"");
        o.append(this.f4550c);
        o.append("\", genre=\"");
        o.append(this.b);
        o.append("\", bitrate=");
        o.append(this.a);
        o.append(", metadataInterval=");
        o.append(this.f4553f);
        return o.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4550c);
        parcel.writeString(this.f4551d);
        h0.s0(parcel, this.f4552e);
        parcel.writeInt(this.f4553f);
    }

    public b(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.f4550c = parcel.readString();
        this.f4551d = parcel.readString();
        this.f4552e = h0.e0(parcel);
        this.f4553f = parcel.readInt();
    }
}
