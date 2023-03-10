package f.i.a.a.h1.u0;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: SampleQueueMappingException.java */
/* loaded from: classes.dex */
public final class p extends IOException {
    public p(@Nullable String str) {
        super(f.b.a.a.a.g("Unable to bind a sample queue to TrackGroup with mime type ", str, "."));
    }
}
