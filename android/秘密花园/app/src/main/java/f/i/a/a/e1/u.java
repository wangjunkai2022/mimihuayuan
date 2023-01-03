package f.i.a.a.e1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
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
    public final Uri f4688c;

    /* renamed from: d  reason: collision with root package name */
    public final List<c0> f4689d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final String f4690e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f4691f;

    /* compiled from: DownloadRequest.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<u> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public u createFromParcel(Parcel parcel) {
            return new u(parcel);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
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
            h.n(z, "customCacheKey must be null for type: " + str2);
        }
        this.a = str;
        this.b = str2;
        this.f4688c = uri;
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        this.f4689d = Collections.unmodifiableList(arrayList);
        this.f4690e = str3;
        this.f4691f = bArr != null ? Arrays.copyOf(bArr, bArr.length) : h0.f5665f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (!this.a.equals(uVar.a) || !this.b.equals(uVar.b) || !this.f4688c.equals(uVar.f4688c) || !this.f4689d.equals(uVar.f4689d) || !h0.b(this.f4690e, uVar.f4690e) || !Arrays.equals(this.f4691f, uVar.f4691f)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Object
    public final int hashCode() {
        int hashCode = this.a.hashCode();
        int hashCode2 = this.b.hashCode();
        int hashCode3 = (this.f4689d.hashCode() + ((this.f4688c.hashCode() + ((hashCode2 + ((hashCode + (this.b.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.f4690e;
        return Arrays.hashCode(this.f4691f) + ((hashCode3 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // java.lang.Object
    public String toString() {
        return this.b + ":" + this.a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.f4688c.toString());
        parcel.writeInt(this.f4689d.size());
        for (int i3 = 0; i3 < this.f4689d.size(); i3++) {
            parcel.writeParcelable(this.f4689d.get(i3), 0);
        }
        parcel.writeString(this.f4690e);
        parcel.writeInt(this.f4691f.length);
        parcel.writeByteArray(this.f4691f);
    }

    public u(Parcel parcel) {
        String readString = parcel.readString();
        h0.g(readString);
        this.a = readString;
        this.b = parcel.readString();
        this.f4688c = Uri.parse(parcel.readString());
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(parcel.readParcelable(c0.class.getClassLoader()));
        }
        this.f4689d = Collections.unmodifiableList(arrayList);
        this.f4690e = parcel.readString();
        byte[] bArr = new byte[parcel.readInt()];
        this.f4691f = bArr;
        parcel.readByteArray(bArr);
    }
}
