package f.i.a.a.w0;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import androidx.annotation.Nullable;

/* compiled from: AudioAttributes.java */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: e  reason: collision with root package name */
    public static final i f5865e = new i(0, 0, 1, null);
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5866c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public AudioAttributes f5867d;

    public i(int i2, int i3, int i4, a aVar) {
        this.a = i2;
        this.b = i3;
        this.f5866c = i4;
    }

    @TargetApi(21)
    public AudioAttributes a() {
        if (this.f5867d == null) {
            this.f5867d = new AudioAttributes.Builder().setContentType(this.a).setFlags(this.b).setUsage(this.f5866c).build();
        }
        return this.f5867d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.a == iVar.a && this.b == iVar.b && this.f5866c == iVar.f5866c;
    }

    public int hashCode() {
        return ((((527 + this.a) * 31) + this.b) * 31) + this.f5866c;
    }
}
