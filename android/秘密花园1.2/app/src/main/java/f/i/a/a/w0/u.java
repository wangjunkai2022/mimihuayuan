package f.i.a.a.w0;

import androidx.annotation.Nullable;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: ChannelMappingAudioProcessor.java */
/* loaded from: classes.dex */
public final class u extends t {
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    public int[] f5972h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f5973i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public int[] f5974j;

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        int[] iArr = this.f5974j;
        c.a.a.b.g.h.t(iArr);
        int[] iArr2 = iArr;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer l2 = l(((limit - position) / (this.f5967c * 2)) * iArr2.length * 2);
        while (position < limit) {
            for (int i2 : iArr2) {
                l2.putShort(byteBuffer.getShort((i2 * 2) + position));
            }
            position += this.f5967c * 2;
        }
        byteBuffer.position(limit);
        l2.flip();
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public int e() {
        int[] iArr = this.f5974j;
        return iArr == null ? this.f5967c : iArr.length;
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        boolean z = !Arrays.equals(this.f5972h, this.f5974j);
        int[] iArr = this.f5972h;
        this.f5974j = iArr;
        if (iArr == null) {
            this.f5973i = false;
            return z;
        } else if (i4 == 2) {
            if (z || m(i2, i3, i4)) {
                this.f5973i = i3 != iArr.length;
                int i5 = 0;
                while (i5 < iArr.length) {
                    int i6 = iArr[i5];
                    if (i6 < i3) {
                        this.f5973i = (i6 != i5) | this.f5973i;
                        i5++;
                    } else {
                        throw new m.a(i2, i3, i4);
                    }
                }
                return true;
            }
            return false;
        } else {
            throw new m.a(i2, i3, i4);
        }
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        return this.f5973i;
    }

    @Override // f.i.a.a.w0.t
    public void k() {
        this.f5974j = null;
        this.f5972h = null;
        this.f5973i = false;
    }
}
