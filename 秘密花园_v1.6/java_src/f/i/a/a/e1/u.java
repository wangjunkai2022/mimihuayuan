package f.i.a.a.e1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* compiled from: DownloadRequest.java */
/* loaded from: classes.dex */
public final class u implements Parcelable {
    public static final Parcelable.Creator<u> CREATOR = new a();
    public final String a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final Uri f4772c;

    /* renamed from: d  reason: collision with root package name */
    public final List<c0> f4773d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f4774e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f4775f;

    /* compiled from: DownloadRequest.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<u> {
        @Override // android.os.Parcelable.Creator
        public u createFromParcel(Parcel parcel) {
            return new u(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public u[] newArray(int i2) {
            return new u[i2];
        }
    }

    /* compiled from: DownloadRequest.java */
    /* loaded from: classes.dex */
    public static class b extends IOException {
    }

    public u(String str, String str2, Uri uri, List<c0> list, @Nullable String str3, @Nullable byte[] bArr) {
        if ("dash".equals(str2) || "hls".equals(str2) || "ss".equals(str2)) {
            boolean z = str3 == null;
            c.a.a.b.g.h.n(z, "customCacheKey must be null for type: " + str2);
        }
        this.a = str;
        this.b = str2;
        this.f4772c = uri;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.f4773d = Collections.unmodifiableList(arrayList);
        this.f4774e = str3;
        this.f4775f = bArr != null ? Arrays.copyOf(bArr, bArr.length) : h0.f5749f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof u) {
            u uVar = (u) obj;
            return this.a.equals(uVar.a) && this.b.equals(uVar.b) && this.f4772c.equals(uVar.f4772c) && this.f4773d.equals(uVar.f4773d) && h0.b(this.f4774e, uVar.f4774e) && Arrays.equals(this.f4775f, uVar.f4775f);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode();
        int hashCode2 = this.b.hashCode();
        int hashCode3 = (this.f4773d.hashCode() + ((this.f4772c.hashCode() + ((hashCode2 + ((hashCode + (this.b.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.f4774e;
        return Arrays.hashCode(this.f4775f) + ((hashCode3 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public String toString() {
        return this.b + ":" + this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4772c.toString());
        parcel.writeInt(this.f4773d.size());
        for (int i3 = 0; i3 < this.f4773d.size(); i3++) {
            parcel.writeParcelable(this.f4773d.get(i3), 0);
        }
        parcel.writeString(this.f4774e);
        parcel.writeInt(this.f4775f.length);
        parcel.writeByteArray(this.f4775f);
    }

    public u(Parcel parcel) {
        String readString = parcel.readString();
        h0.g(readString);
        this.a = readString;
        this.b = parcel.readString();
        this.f4772c = Uri.parse(parcel.readString());
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(c0.class.getClassLoader()));
        }
        this.f4773d = Collections.unmodifiableList(arrayList);
        this.f4774e = parcel.readString();
        byte[] bArr = new byte[parcel.readInt()];
        this.f4775f = bArr;
        parcel.readByteArray(bArr);
    }
}
