package f.i.a.a.m1;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
/* compiled from: TimestampAdjuster.java */
/* loaded from: classes.dex */
public final class e0 {
    public long a;
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public volatile long f5745c = -9223372036854775807L;

    public e0(long j2) {
        d(j2);
    }

    public long a(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f5745c != -9223372036854775807L) {
            this.f5745c = j2;
        } else {
            long j3 = this.a;
            if (j3 != RecyclerView.FOREVER_NS) {
                this.b = j3 - j2;
            }
            synchronized (this) {
                this.f5745c = j2;
                notifyAll();
            }
        }
        return j2 + this.b;
    }

    public long b(long j2) {
        if (j2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.f5745c != -9223372036854775807L) {
            long j3 = (this.f5745c * 90000) / 1000000;
            long j4 = (AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT + j3) / AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSIBLE_FLAG_BIT;
            long j5 = ((j4 - 1) * AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSIBLE_FLAG_BIT) + j2;
            j2 += j4 * AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSIBLE_FLAG_BIT;
            if (Math.abs(j5 - j3) < Math.abs(j2 - j3)) {
                j2 = j5;
            }
        }
        return a((j2 * 1000000) / 90000);
    }

    public long c() {
        if (this.a == RecyclerView.FOREVER_NS) {
            return 0L;
        }
        if (this.f5745c == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.b;
    }

    public synchronized void d(long j2) {
        c.a.a.b.g.h.v(this.f5745c == -9223372036854775807L);
        this.a = j2;
    }
}
