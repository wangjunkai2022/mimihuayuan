package f.i.a.a.d1.j;

import android.os.Parcel;
import android.os.Parcelable;
import f.i.a.a.m1.u;

/* compiled from: TimeSignalCommand.java */
/* loaded from: classes.dex */
public final class g extends b {
    public static final Parcelable.Creator<g> CREATOR = new a();
    public final long a;
    public final long b;

    /* compiled from: TimeSignalCommand.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<g> {
        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public g createFromParcel(Parcel parcel) {
            return new g(parcel.readLong(), parcel.readLong(), null);
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public g[] newArray(int i2) {
            return new g[i2];
        }
    }

    public g(long j2, long j3) {
        this.a = j2;
        this.b = j3;
    }

    public static long a(u uVar, long j2) {
        long p = (long) uVar.p();
        if ((128 & p) != 0) {
            return 8589934591L & ((((p & 1) << 32) | uVar.q()) + j2);
        }
        return -9223372036854775807L;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.a);
        parcel.writeLong(this.b);
    }

    public g(long j2, long j3, a aVar) {
        this.a = j2;
        this.b = j3;
    }
}
