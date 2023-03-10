package f.d.a.t;

import android.content.Context;
import androidx.annotation.NonNull;
import f.d.a.o.f;
import f.d.a.u.i;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: AndroidResourceSignature.java */
/* loaded from: classes.dex */
public final class a implements f {
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final f f3861c;

    public a(int i2, f fVar) {
        this.b = i2;
        this.f3861c = fVar;
    }

    @NonNull
    public static f c(@NonNull Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.a(context));
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        this.f3861c.b(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return this.b == aVar.b && this.f3861c.equals(aVar.f3861c);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return i.j(this.f3861c, this.b);
    }
}
