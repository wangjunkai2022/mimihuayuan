package f.i.a.a.k1;

import androidx.annotation.Nullable;

/* compiled from: TimeBar.java */
/* loaded from: classes.dex */
public interface g {

    /* compiled from: TimeBar.java */
    /* loaded from: classes.dex */
    public interface a {
        void c(g gVar, long j2);

        void d(g gVar, long j2);

        void f(g gVar, long j2, boolean z);
    }

    void addListener(a aVar);

    boolean isOpenSeek();

    void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i2);

    void setBufferedPosition(long j2);

    void setDuration(long j2);

    @Override // f.i.a.a.k1.g
    void setEnabled(boolean z);

    void setPosition(long j2);
}
