package f.i.a.a.d1.j;

import f.i.a.a.d1.a;
/* compiled from: SpliceCommand.java */
/* loaded from: classes.dex */
public abstract class b implements a.b {
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("SCTE-35 splice command: type=");
        o.append(getClass().getSimpleName());
        return o.toString();
    }
}
