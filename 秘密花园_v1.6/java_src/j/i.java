package j;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* compiled from: BufferedSink.kt */
/* loaded from: classes.dex */
public interface i extends y, WritableByteChannel {
    i a(byte[] bArr, int i2, int i3) throws IOException;

    @Override // j.y, java.io.Flushable
    void flush() throws IOException;

    g h();

    i k(long j2) throws IOException;

    i l(int i2) throws IOException;

    i m(int i2) throws IOException;

    i q(int i2) throws IOException;

    i r(byte[] bArr) throws IOException;

    i s(k kVar) throws IOException;

    i t() throws IOException;

    i y(String str) throws IOException;

    i z(long j2) throws IOException;
}
