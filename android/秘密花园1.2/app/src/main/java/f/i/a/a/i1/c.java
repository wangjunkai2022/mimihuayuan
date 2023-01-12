package f.i.a.a.i1;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;

/* compiled from: SimpleSubtitleDecoder.java */
/* loaded from: classes.dex */
public abstract class c extends f.i.a.a.y0.g<i, j, g> implements f {
    public c(String str) {
        super(new i[2], new j[2]);
        c.a.a.b.g.h.v(this.f6037g == this.f6035e.length);
        for (f.i.a.a.y0.e eVar : this.f6035e) {
            eVar.k(1024);
        }
    }

    @Override // f.i.a.a.i1.f
    public void b(long j2) {
    }

    @Override // f.i.a.a.y0.g
    @Nullable
    public g f(i iVar, j jVar, boolean z) {
        i iVar2 = iVar;
        j jVar2 = jVar;
        try {
            ByteBuffer byteBuffer = iVar2.f6030c;
            e k2 = k(byteBuffer.array(), byteBuffer.limit(), z);
            long j2 = iVar2.f6031d;
            long j3 = iVar2.f5314f;
            jVar2.b = j2;
            jVar2.f5315c = k2;
            if (j3 != RecyclerView.FOREVER_NS) {
                j2 = j3;
            }
            jVar2.f5316d = j2;
            jVar2.a &= ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            return null;
        } catch (g e2) {
            return e2;
        }
    }

    public abstract e k(byte[] bArr, int i2, boolean z) throws g;
}
