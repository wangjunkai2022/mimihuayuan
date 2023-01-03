package f.i.a.a.d1.i;

import f.i.a.a.d1.a;

/* compiled from: Id3Frame.java */
/* loaded from: classes.dex */
public abstract class h implements a.b {
    public final String a;

    public h(String str) {
        this.a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // java.lang.Object
    public String toString() {
        return this.a;
    }
}
