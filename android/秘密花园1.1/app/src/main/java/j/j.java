package j;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;

/* compiled from: BufferedSource.kt */
/* loaded from: classes.dex */
public interface j extends a0, ReadableByteChannel {
    long A() throws IOException;

    String B(Charset charset) throws IOException;

    InputStream C();

    int D(r rVar) throws IOException;

    k b(long j2) throws IOException;

    g h();

    String n() throws IOException;

    byte[] o() throws IOException;

    boolean p() throws IOException;

    byte readByte() throws IOException;

    int readInt() throws IOException;

    short readShort() throws IOException;

    void skip(long j2) throws IOException;

    long u() throws IOException;

    String v(long j2) throws IOException;

    long w(y yVar) throws IOException;

    void x(long j2) throws IOException;
}
