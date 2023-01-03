package f.i.a.a.z0;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import f.i.a.a.q;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* compiled from: DrmInitData.java */
/* loaded from: classes.dex */
public final class e implements Comparator<b>, Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();
    public final b[] a;
    public int b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f5996c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5997d;

    /* compiled from: DrmInitData.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<e> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public e[] newArray(int i2) {
            return new e[i2];
        }
    }

    /* compiled from: DrmInitData.java */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();
        public int a;
        public final UUID b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f5998c;

        /* renamed from: d  reason: collision with root package name */
        public final String f5999d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f6000e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f6001f;

        /* compiled from: DrmInitData.java */
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

        public b(UUID uuid, String str, @Nullable byte[] bArr) {
            this(uuid, null, str, bArr, false);
        }

        public boolean a() {
            return this.f6000e != null;
        }

        public boolean b(UUID uuid) {
            return q.a.equals(this.b) || uuid.equals(this.b);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // java.lang.Object
        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            b bVar = (b) obj;
            if (!h0.b(this.f5998c, bVar.f5998c) || !h0.b(this.f5999d, bVar.f5999d) || !h0.b(this.b, bVar.b) || !Arrays.equals(this.f6000e, bVar.f6000e)) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Object
        public int hashCode() {
            if (this.a == 0) {
                int hashCode = this.b.hashCode() * 31;
                String str = this.f5998c;
                int hashCode2 = str == null ? 0 : str.hashCode();
                this.a = Arrays.hashCode(this.f6000e) + ((this.f5999d.hashCode() + ((hashCode + hashCode2) * 31)) * 31);
            }
            return this.a;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.b.getMostSignificantBits());
            parcel.writeLong(this.b.getLeastSignificantBits());
            parcel.writeString(this.f5998c);
            parcel.writeString(this.f5999d);
            parcel.writeByteArray(this.f6000e);
            parcel.writeByte(this.f6001f ? (byte) 1 : 0);
        }

        public b(UUID uuid, @Nullable String str, String str2, @Nullable byte[] bArr, boolean z) {
            if (uuid != null) {
                this.b = uuid;
                this.f5998c = str;
                if (str2 != null) {
                    this.f5999d = str2;
                    this.f6000e = bArr;
                    this.f6001f = z;
                    return;
                }
                throw null;
            }
            throw null;
        }

        public b(Parcel parcel) {
            this.b = new UUID(parcel.readLong(), parcel.readLong());
            this.f5998c = parcel.readString();
            String readString = parcel.readString();
            h0.g(readString);
            this.f5999d = readString;
            this.f6000e = parcel.createByteArray();
            this.f6001f = parcel.readByte() != 0;
        }
    }

    public e(@Nullable String str, boolean z, b... bVarArr) {
        this.f5996c = str;
        bVarArr = z ? (b[]) bVarArr.clone() : bVarArr;
        this.a = bVarArr;
        this.f5997d = bVarArr.length;
        Arrays.sort(bVarArr, this);
    }

    public e a(@Nullable String str) {
        if (h0.b(this.f5996c, str)) {
            return this;
        }
        return new e(str, false, this.a);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public int compare(b bVar, b bVar2) {
        b bVar3 = bVar;
        b bVar4 = bVar2;
        if (q.a.equals(bVar3.b)) {
            return q.a.equals(bVar4.b) ? 0 : 1;
        }
        return bVar3.b.compareTo(bVar4.b);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator, java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (!h0.b(this.f5996c, eVar.f5996c) || !Arrays.equals(this.a, eVar.a)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        if (this.b == 0) {
            String str = this.f5996c;
            this.b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.a);
        }
        return this.b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f5996c);
        parcel.writeTypedArray(this.a, 0);
    }

    public e(Parcel parcel) {
        this.f5996c = parcel.readString();
        Object[] createTypedArray = parcel.createTypedArray(b.CREATOR);
        h0.g(createTypedArray);
        b[] bVarArr = (b[]) createTypedArray;
        this.a = bVarArr;
        this.f5997d = bVarArr.length;
    }
}
