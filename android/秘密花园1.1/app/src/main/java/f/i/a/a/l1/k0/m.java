package f.i.a.a.l1.k0;

import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.io.File;
import java.util.TreeSet;

/* compiled from: CachedContent.java */
/* loaded from: classes.dex */
public final class m {
    public final int a;
    public final String b;

    /* renamed from: c  reason: collision with root package name */
    public final TreeSet<w> f5570c = new TreeSet<>();

    /* renamed from: d  reason: collision with root package name */
    public r f5571d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f5572e;

    public m(int i2, String str, r rVar) {
        this.a = i2;
        this.b = str;
        this.f5571d = rVar;
    }

    public long a(long j2, long j3) {
        w b = b(j2);
        if (!b.f5566d) {
            return -Math.min(b.f5565c == -1 ? RecyclerView.FOREVER_NS : b.f5565c, j3);
        }
        long j4 = j2 + j3;
        long j5 = b.b + b.f5565c;
        if (j5 < j4) {
            for (w wVar : this.f5570c.tailSet(b, false)) {
                long j6 = wVar.b;
                if (j6 > j5) {
                    break;
                }
                j5 = Math.max(j5, j6 + wVar.f5565c);
                if (j5 >= j4) {
                    break;
                }
            }
        }
        return Math.min(j5 - j2, j3);
    }

    public w b(long j2) {
        w wVar = new w(this.b, j2, -1L, -9223372036854775807L, null);
        w floor = this.f5570c.floor(wVar);
        if (floor == null || floor.b + floor.f5565c <= j2) {
            w ceiling = this.f5570c.ceiling(wVar);
            String str = this.b;
            if (ceiling == null) {
                return new w(str, j2, -1L, -9223372036854775807L, null);
            }
            return new w(str, j2, ceiling.b - j2, -9223372036854775807L, null);
        }
        return floor;
    }

    public w c(w wVar, long j2, boolean z) {
        File file;
        c.a.a.b.g.h.v(this.f5570c.remove(wVar));
        File file2 = wVar.f5567e;
        if (z) {
            File c2 = w.c(file2.getParentFile(), this.a, wVar.b, j2);
            if (!file2.renameTo(c2)) {
                String str = "Failed to rename " + file2 + " to " + c2;
            } else {
                file = c2;
                c.a.a.b.g.h.v(wVar.f5566d);
                w wVar2 = new w(wVar.a, wVar.b, wVar.f5565c, j2, file);
                this.f5570c.add(wVar2);
                return wVar2;
            }
        }
        file = file2;
        c.a.a.b.g.h.v(wVar.f5566d);
        w wVar22 = new w(wVar.a, wVar.b, wVar.f5565c, j2, file);
        this.f5570c.add(wVar22);
        return wVar22;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.a == mVar.a && this.b.equals(mVar.b) && this.f5570c.equals(mVar.f5570c) && this.f5571d.equals(mVar.f5571d);
    }

    public int hashCode() {
        int hashCode = this.b.hashCode();
        return this.f5571d.hashCode() + ((hashCode + (this.a * 31)) * 31);
    }
}
