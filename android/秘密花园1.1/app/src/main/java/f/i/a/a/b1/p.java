package f.i.a.a.b1;

import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.m1.u;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: TrackOutput.java */
/* loaded from: classes.dex */
public interface p {

    /* compiled from: TrackOutput.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int a;
        public final byte[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int f4060c;

        /* renamed from: d  reason: collision with root package name */
        public final int f4061d;

        public a(int i2, byte[] bArr, int i3, int i4) {
            this.a = i2;
            this.b = bArr;
            this.f4060c = i3;
            this.f4061d = i4;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.a == aVar.a && this.f4060c == aVar.f4060c && this.f4061d == aVar.f4061d && Arrays.equals(this.b, aVar.b);
        }

        public int hashCode() {
            return ((((Arrays.hashCode(this.b) + (this.a * 31)) * 31) + this.f4060c) * 31) + this.f4061d;
        }
    }

    void a(u uVar, int i2);

    int b(d dVar, int i2, boolean z) throws IOException, InterruptedException;

    void c(long j2, int i2, int i3, int i4, @Nullable a aVar);

    void d(b0 b0Var);
}
