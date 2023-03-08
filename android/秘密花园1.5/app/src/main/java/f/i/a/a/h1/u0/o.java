package f.i.a.a.h1.u0;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import f.i.a.a.d1.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: HlsTrackMetadataEntry.java */
/* loaded from: classes.dex */
public final class o implements a.b {
    public static final Parcelable.Creator<o> CREATOR = new a();
    @Nullable
    public final String a;
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final List<b> f5145c;

    /* compiled from: HlsTrackMetadataEntry.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<o> {
        @Override // android.os.Parcelable.Creator
        public o createFromParcel(Parcel parcel) {
            return new o(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public o[] newArray(int i2) {
            return new o[i2];
        }
    }

    public o(@Nullable String str, @Nullable String str2, List<b> list) {
        this.a = str;
        this.b = str2;
        this.f5145c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return TextUtils.equals(this.a, oVar.a) && TextUtils.equals(this.b, oVar.b) && this.f5145c.equals(oVar.f5145c);
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        return this.f5145c.hashCode() + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        int size = this.f5145c.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeParcelable(this.f5145c.get(i3), 0);
        }
    }

    public o(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(b.class.getClassLoader()));
        }
        this.f5145c = Collections.unmodifiableList(arrayList);
    }

    /* compiled from: HlsTrackMetadataEntry.java */
    /* loaded from: classes.dex */
    public static final class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();
        public final long a;
        @Nullable
        public final String b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f5146c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f5147d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f5148e;

        /* compiled from: HlsTrackMetadataEntry.java */
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

        public b(long j2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.a = j2;
            this.b = str;
            this.f5146c = str2;
            this.f5147d = str3;
            this.f5148e = str4;
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
            return this.a == bVar.a && TextUtils.equals(this.b, bVar.b) && TextUtils.equals(this.f5146c, bVar.f5146c) && TextUtils.equals(this.f5147d, bVar.f5147d) && TextUtils.equals(this.f5148e, bVar.f5148e);
        }

        public int hashCode() {
            long j2 = this.a;
            int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
            String str = this.b;
            int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f5146c;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f5147d;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f5148e;
            return hashCode3 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.a);
            parcel.writeString(this.b);
            parcel.writeString(this.f5146c);
            parcel.writeString(this.f5147d);
            parcel.writeString(this.f5148e);
        }

        public b(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readString();
            this.f5146c = parcel.readString();
            this.f5147d = parcel.readString();
            this.f5148e = parcel.readString();
        }
    }
}
