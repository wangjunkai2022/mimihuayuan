package f.i.a.a.d1.j;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: SpliceInsertCommand.java */
/* loaded from: classes.dex */
public final class d extends f.i.a.a.d1.j.b {
    public static final Parcelable.Creator<d> CREATOR = new a();
    public final long a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f4583c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f4584d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f4585e;

    /* renamed from: f  reason: collision with root package name */
    public final long f4586f;

    /* renamed from: g  reason: collision with root package name */
    public final long f4587g;

    /* renamed from: h  reason: collision with root package name */
    public final List<b> f4588h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f4589i;

    /* renamed from: j  reason: collision with root package name */
    public final long f4590j;

    /* renamed from: k  reason: collision with root package name */
    public final int f4591k;

    /* renamed from: l  reason: collision with root package name */
    public final int f4592l;

    /* renamed from: m  reason: collision with root package name */
    public final int f4593m;

    /* compiled from: SpliceInsertCommand.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public d createFromParcel(Parcel parcel) {
            return new d(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public d[] newArray(int i2) {
            return new d[i2];
        }
    }

    public d(long j2, boolean z, boolean z2, boolean z3, boolean z4, long j3, long j4, List<b> list, boolean z5, long j5, int i2, int i3, int i4) {
        this.a = j2;
        this.b = z;
        this.f4583c = z2;
        this.f4584d = z3;
        this.f4585e = z4;
        this.f4586f = j3;
        this.f4587g = j4;
        this.f4588h = Collections.unmodifiableList(list);
        this.f4589i = z5;
        this.f4590j = j5;
        this.f4591k = i2;
        this.f4592l = i3;
        this.f4593m = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeLong(this.a);
        parcel.writeByte(this.b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4583c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4584d ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4585e ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f4586f);
        parcel.writeLong(this.f4587g);
        int size = this.f4588h.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            b bVar = this.f4588h.get(i3);
            parcel.writeInt(bVar.a);
            parcel.writeLong(bVar.b);
            parcel.writeLong(bVar.f4594c);
        }
        parcel.writeByte(this.f4589i ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f4590j);
        parcel.writeInt(this.f4591k);
        parcel.writeInt(this.f4592l);
        parcel.writeInt(this.f4593m);
    }

    /* compiled from: SpliceInsertCommand.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f4594c;

        public b(int i2, long j2, long j3) {
            this.a = i2;
            this.b = j2;
            this.f4594c = j3;
        }

        public b(int i2, long j2, long j3, a aVar) {
            this.a = i2;
            this.b = j2;
            this.f4594c = j3;
        }
    }

    public d(Parcel parcel, a aVar) {
        this.a = parcel.readLong();
        this.b = parcel.readByte() == 1;
        this.f4583c = parcel.readByte() == 1;
        this.f4584d = parcel.readByte() == 1;
        this.f4585e = parcel.readByte() == 1;
        this.f4586f = parcel.readLong();
        this.f4587g = parcel.readLong();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(new b(parcel.readInt(), parcel.readLong(), parcel.readLong()));
        }
        this.f4588h = Collections.unmodifiableList(arrayList);
        this.f4589i = parcel.readByte() == 1;
        this.f4590j = parcel.readLong();
        this.f4591k = parcel.readInt();
        this.f4592l = parcel.readInt();
        this.f4593m = parcel.readInt();
    }
}
