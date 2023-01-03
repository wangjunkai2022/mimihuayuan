package f.i.a.a.l1.k0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: CacheSpan.java */
/* loaded from: classes.dex */
public class k implements Comparable<k> {
    public final String a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f5565c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f5566d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public final File f5567e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5568f;

    public k(String str, long j2, long j3, long j4, @Nullable File file) {
        this.a = str;
        this.b = j2;
        this.f5565c = j3;
        this.f5566d = file != null;
        this.f5567e = file;
        this.f5568f = j4;
    }

    /* renamed from: a */
    public int compareTo(@NonNull k kVar) {
        if (!this.a.equals(kVar.a)) {
            return this.a.compareTo(kVar.a);
        }
        int i2 = ((this.b - kVar.b) > 0 ? 1 : ((this.b - kVar.b) == 0 ? 0 : -1));
        if (i2 == 0) {
            return 0;
        }
        return i2 < 0 ? -1 : 1;
    }
}
