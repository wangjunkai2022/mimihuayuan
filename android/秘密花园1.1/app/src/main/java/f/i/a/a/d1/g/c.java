package f.i.a.a.d1.g;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* compiled from: EventMessageEncoder.java */
/* loaded from: classes.dex */
public final class c {
    public final ByteArrayOutputStream a = new ByteArrayOutputStream(512);
    public final DataOutputStream b = new DataOutputStream(this.a);

    public static void a(DataOutputStream dataOutputStream, long j2) throws IOException {
        dataOutputStream.writeByte(((int) (j2 >>> 24)) & 255);
        dataOutputStream.writeByte(((int) (j2 >>> 16)) & 255);
        dataOutputStream.writeByte(((int) (j2 >>> 8)) & 255);
        dataOutputStream.writeByte(((int) j2) & 255);
    }
}
