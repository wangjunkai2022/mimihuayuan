package f.i.a.a.j1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: TrackSelectionParameters.java */
/* loaded from: classes.dex */
public class l implements Parcelable {
    @Nullable
    public final String a;
    @Nullable
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5448c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5449d;

    /* renamed from: e  reason: collision with root package name */
    public static final l f5447e = new l();
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* compiled from: TrackSelectionParameters.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<l> {
        @Override // android.os.Parcelable.Creator
        public l createFromParcel(Parcel parcel) {
            return new l(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public l[] newArray(int i2) {
            return new l[i2];
        }
    }

    /* compiled from: TrackSelectionParameters.java */
    /* loaded from: classes.dex */
    public static class b {
        @Nullable
        public String a;
        @Nullable
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f5450c;

        /* renamed from: d  reason: collision with root package name */
        public int f5451d;

        public b(l lVar) {
            this.a = lVar.a;
            this.b = lVar.b;
            this.f5450c = lVar.f5448c;
            this.f5451d = lVar.f5449d;
        }
    }

    public l() {
        this.a = h0.a0(null);
        this.b = h0.a0(null);
        this.f5448c = false;
        this.f5449d = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return TextUtils.equals(this.a, lVar.a) && TextUtils.equals(this.b, lVar.b) && this.f5448c == lVar.f5448c && this.f5449d == lVar.f5449d;
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = ((str == null ? 0 : str.hashCode()) + 31) * 31;
        String str2 = this.b;
        return ((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.f5448c ? 1 : 0)) * 31) + this.f5449d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        h0.s0(parcel, this.f5448c);
        parcel.writeInt(this.f5449d);
    }

    public l(@Nullable String str, @Nullable String str2, boolean z, int i2) {
        this.a = h0.a0(str);
        this.b = h0.a0(str2);
        this.f5448c = z;
        this.f5449d = i2;
    }

    public l(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.f5448c = h0.e0(parcel);
        this.f5449d = parcel.readInt();
    }
}
