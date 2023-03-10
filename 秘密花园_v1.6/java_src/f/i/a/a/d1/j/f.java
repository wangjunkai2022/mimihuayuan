package f.i.a.a.d1.j;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: SpliceScheduleCommand.java */
/* loaded from: classes.dex */
public final class f extends f.i.a.a.d1.j.b {
    public static final Parcelable.Creator<f> CREATOR = new a();
    public final List<c> a;

    /* compiled from: SpliceScheduleCommand.java */
    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public f createFromParcel(Parcel parcel) {
            return new f(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public f[] newArray(int i2) {
            return new f[i2];
        }
    }

    public f(List<c> list) {
        this.a = Collections.unmodifiableList(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int size = this.a.size();
        parcel.writeInt(size);
        for (int i3 = 0; i3 < size; i3++) {
            c cVar = this.a.get(i3);
            parcel.writeLong(cVar.a);
            parcel.writeByte(cVar.b ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.f4679c ? (byte) 1 : (byte) 0);
            parcel.writeByte(cVar.f4680d ? (byte) 1 : (byte) 0);
            int size2 = cVar.f4682f.size();
            parcel.writeInt(size2);
            for (int i4 = 0; i4 < size2; i4++) {
                b bVar = cVar.f4682f.get(i4);
                parcel.writeInt(bVar.a);
                parcel.writeLong(bVar.b);
            }
            parcel.writeLong(cVar.f4681e);
            parcel.writeByte(cVar.f4683g ? (byte) 1 : (byte) 0);
            parcel.writeLong(cVar.f4684h);
            parcel.writeInt(cVar.f4685i);
            parcel.writeInt(cVar.f4686j);
            parcel.writeInt(cVar.f4687k);
        }
    }

    /* compiled from: SpliceScheduleCommand.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final long b;

        public b(int i2, long j2) {
            this.a = i2;
            this.b = j2;
        }

        public b(int i2, long j2, a aVar) {
            this.a = i2;
            this.b = j2;
        }
    }

    public f(Parcel parcel, a aVar) {
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(new c(parcel));
        }
        this.a = Collections.unmodifiableList(arrayList);
    }

    /* compiled from: SpliceScheduleCommand.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final long a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f4679c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f4680d;

        /* renamed from: e  reason: collision with root package name */
        public final long f4681e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b> f4682f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f4683g;

        /* renamed from: h  reason: collision with root package name */
        public final long f4684h;

        /* renamed from: i  reason: collision with root package name */
        public final int f4685i;

        /* renamed from: j  reason: collision with root package name */
        public final int f4686j;

        /* renamed from: k  reason: collision with root package name */
        public final int f4687k;

        public c(long j2, boolean z, boolean z2, boolean z3, List<b> list, long j3, boolean z4, long j4, int i2, int i3, int i4) {
            this.a = j2;
            this.b = z;
            this.f4679c = z2;
            this.f4680d = z3;
            this.f4682f = Collections.unmodifiableList(list);
            this.f4681e = j3;
            this.f4683g = z4;
            this.f4684h = j4;
            this.f4685i = i2;
            this.f4686j = i3;
            this.f4687k = i4;
        }

        public c(Parcel parcel) {
            this.a = parcel.readLong();
            this.b = parcel.readByte() == 1;
            this.f4679c = parcel.readByte() == 1;
            this.f4680d = parcel.readByte() == 1;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                arrayList.add(new b(parcel.readInt(), parcel.readLong()));
            }
            this.f4682f = Collections.unmodifiableList(arrayList);
            this.f4681e = parcel.readLong();
            this.f4683g = parcel.readByte() == 1;
            this.f4684h = parcel.readLong();
            this.f4685i = parcel.readInt();
            this.f4686j = parcel.readInt();
            this.f4687k = parcel.readInt();
        }
    }
}
