package f.i.a.a.l1;

import com.tencent.smtt.sdk.TbsReaderView;
import f.i.a.a.l1.a0;
import f.i.a.a.l1.c0;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: DefaultLoadErrorHandlingPolicy.java */
/* loaded from: classes.dex */
public class w implements b0 {
    public final int a;

    public w() {
        this.a = -1;
    }

    public long a(int i2, long j2, IOException iOException, int i3) {
        if (iOException instanceof a0.e) {
            int i4 = ((a0.e) iOException).a;
            return (i4 == 404 || i4 == 410) ? 60000L : -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    public int b(int i2) {
        int i3 = this.a;
        return i3 == -1 ? i2 == 7 ? 6 : 3 : i3;
    }

    public long c(int i2, long j2, IOException iOException, int i3) {
        if ((iOException instanceof f.i.a.a.h0) || (iOException instanceof FileNotFoundException) || (iOException instanceof c0.h)) {
            return -9223372036854775807L;
        }
        return Math.min((i3 - 1) * 1000, (int) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING);
    }

    public w(int i2) {
        this.a = i2;
    }
}
