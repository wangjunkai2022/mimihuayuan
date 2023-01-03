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
    public final List<b> f5070c;

    /* compiled from: HlsTrackMetadataEntry.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<o> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public o createFromParcel(Parcel parcel) {
            return new o(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public o[] newArray(int i2) {
            return new o[i2];
        }
    }

    public o(@Nullable String str, @Nullable String str2, List<b> list) {
        this.a = str;
        this.b = str2;
        this.f5070c = Collections.unmodifiableList(new ArrayList(list));
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
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        if (!TextUtils.equals(this.a, oVar.a) || !TextUtils.equals(this.b, oVar.b) || !this.f5070c.equals(oVar.f5070c)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public int hashCode() {
        String str = this.a;
        int i2 = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return this.f5070c.hashCode() + ((hashCode + i2) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        int size = this.f5070c.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            parcel.writeParcelable(this.f5070c.get(i3), 0);
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
        this.f5070c = Collections.unmodifiableList(arrayList);
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
        public final String f5071c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f5072d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f5073e;

        /* compiled from: HlsTrackMetadataEntry.java */
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

        public b(long j2, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.a = j2;
            this.b = str;
            this.f5071c = str2;
            this.f5072d = str3;
            this.f5073e = str4;
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
            if (this.a != bVar.a || !TextUtils.equals(this.b, bVar.b) || !TextUtils.equals(this.f5071c, bVar.f5071c) || !TextUtils.equals(this.f5072d, bVar.f5072d) || !TextUtils.equals(this.f5073e, bVar.f5073e)) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Object
        public int hashCode() {
            long j2 = this.a;
            int i2 = ((int) (j2 ^ (j2 >>> 32))) * 31;
            String str = this.b;
            int i3 = 0;
            int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f5071c;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f5072d;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f5073e;
            if (str4 != null) {
                i3 = str4.hashCode();
            }
            return hashCode3 + i3;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.a);
            parcel.writeString(this.b);
            parcel.writeString(this.f5071c);
            parcel.writeString(this.f5072d);
            parcel.writeString(this.f5073e);
        }

        public b(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readString();
            this.f5071c = parcel.readString();
            this.f5072d = parcel.readString();
            this.f5073e = parcel.readString();
        }
    }
}
