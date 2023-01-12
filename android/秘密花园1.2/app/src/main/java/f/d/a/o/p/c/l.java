package f.d.a.o.p.c;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: DefaultImageHeaderParser.java */
/* loaded from: classes.dex */
public final class l implements ImageHeaderParser {
    public static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* compiled from: DefaultImageHeaderParser.java */
    /* loaded from: classes.dex */
    public static final class a implements c {
        public final ByteBuffer a;

        public a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // f.d.a.o.p.c.l.c
        public int a(byte[] bArr, int i2) {
            int min = Math.min(i2, this.a.remaining());
            if (min == 0) {
                return -1;
            }
            this.a.get(bArr, 0, min);
            return min;
        }

        @Override // f.d.a.o.p.c.l.c
        public int b() {
            return ((c() << 8) & 65280) | (c() & 255);
        }

        @Override // f.d.a.o.p.c.l.c
        public int c() {
            if (this.a.remaining() < 1) {
                return -1;
            }
            return this.a.get();
        }

        @Override // f.d.a.o.p.c.l.c
        public long skip(long j2) {
            int min = (int) Math.min(this.a.remaining(), j2);
            ByteBuffer byteBuffer = this.a;
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final ByteBuffer a;

        public b(byte[] bArr, int i2) {
            this.a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i2);
        }

        public short a(int i2) {
            if (this.a.remaining() - i2 >= 2) {
                return this.a.getShort(i2);
            }
            return (short) -1;
        }

        public int b(int i2) {
            if (this.a.remaining() - i2 >= 4) {
                return this.a.getInt(i2);
            }
            return -1;
        }
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* loaded from: classes.dex */
    public interface c {
        int a(byte[] bArr, int i2) throws IOException;

        int b() throws IOException;

        int c() throws IOException;

        long skip(long j2) throws IOException;
    }

    /* compiled from: DefaultImageHeaderParser.java */
    /* loaded from: classes.dex */
    public static final class d implements c {
        public final InputStream a;

        public d(InputStream inputStream) {
            this.a = inputStream;
        }

        @Override // f.d.a.o.p.c.l.c
        public int a(byte[] bArr, int i2) throws IOException {
            int i3 = i2;
            while (i3 > 0) {
                int read = this.a.read(bArr, i2 - i3, i3);
                if (read == -1) {
                    break;
                }
                i3 -= read;
            }
            return i2 - i3;
        }

        @Override // f.d.a.o.p.c.l.c
        public int b() throws IOException {
            return ((this.a.read() << 8) & 65280) | (this.a.read() & 255);
        }

        @Override // f.d.a.o.p.c.l.c
        public int c() throws IOException {
            return this.a.read();
        }

        public short d() throws IOException {
            return (short) (this.a.read() & 255);
        }

        @Override // f.d.a.o.p.c.l.c
        public long skip(long j2) throws IOException {
            if (j2 < 0) {
                return 0L;
            }
            long j3 = j2;
            while (j3 > 0) {
                long skip = this.a.skip(j3);
                if (skip <= 0) {
                    if (this.a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j3 -= skip;
            }
            return j2 - j3;
        }
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType a(@NonNull ByteBuffer byteBuffer) throws IOException {
        c.a.a.b.g.h.s(byteBuffer, "Argument must not be null");
        return d(new a(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public int b(@NonNull InputStream inputStream, @NonNull f.d.a.o.n.b0.b bVar) throws IOException {
        int i2;
        c.a.a.b.g.h.s(inputStream, "Argument must not be null");
        d dVar = new d(inputStream);
        c.a.a.b.g.h.s(bVar, "Argument must not be null");
        int b2 = dVar.b();
        int i3 = -1;
        if ((b2 & 65496) == 65496 || b2 == 19789 || b2 == 18761) {
            while (true) {
                if (dVar.d() != 255) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                    break;
                }
                short d2 = dVar.d();
                if (d2 == 218) {
                    break;
                } else if (d2 == 217) {
                    Log.isLoggable("DfltImageHeaderParser", 3);
                    break;
                } else {
                    i2 = dVar.b() - 2;
                    if (d2 == 225) {
                        break;
                    }
                    long j2 = i2;
                    if (dVar.skip(j2) != j2) {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                        break;
                    }
                }
            }
            i2 = -1;
            if (i2 == -1) {
                Log.isLoggable("DfltImageHeaderParser", 3);
            } else {
                byte[] bArr = (byte[]) bVar.f(i2, byte[].class);
                try {
                    i3 = e(dVar, bArr, i2);
                } finally {
                    bVar.e(bArr);
                }
            }
        } else {
            Log.isLoggable("DfltImageHeaderParser", 3);
        }
        return i3;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    @NonNull
    public ImageHeaderParser.ImageType c(@NonNull InputStream inputStream) throws IOException {
        c.a.a.b.g.h.s(inputStream, "Argument must not be null");
        return d(new d(inputStream));
    }

    @NonNull
    public final ImageHeaderParser.ImageType d(c cVar) throws IOException {
        int b2 = cVar.b();
        if (b2 == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int b3 = ((b2 << 16) & (-65536)) | (cVar.b() & SupportMenu.USER_MASK);
        if (b3 == -1991225785) {
            cVar.skip(21L);
            return cVar.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        } else if ((b3 >> 8) == 4671814) {
            return ImageHeaderParser.ImageType.GIF;
        } else {
            if (b3 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            cVar.skip(4L);
            if ((((cVar.b() << 16) & (-65536)) | (cVar.b() & SupportMenu.USER_MASK)) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int b4 = ((cVar.b() << 16) & (-65536)) | (cVar.b() & SupportMenu.USER_MASK);
            if ((b4 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i2 = b4 & 255;
            if (i2 == 88) {
                cVar.skip(4L);
                return (cVar.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            } else if (i2 == 76) {
                cVar.skip(4L);
                return (cVar.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            } else {
                return ImageHeaderParser.ImageType.WEBP;
            }
        }
    }

    public final int e(c cVar, byte[] bArr, int i2) throws IOException {
        ByteOrder byteOrder;
        if (cVar.a(bArr, i2) != i2) {
            Log.isLoggable("DfltImageHeaderParser", 3);
            return -1;
        }
        boolean z = bArr != null && i2 > a.length;
        if (z) {
            int i3 = 0;
            while (true) {
                byte[] bArr2 = a;
                if (i3 >= bArr2.length) {
                    break;
                } else if (bArr[i3] != bArr2[i3]) {
                    z = false;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (z) {
            b bVar = new b(bArr, i2);
            short a2 = bVar.a(6);
            if (a2 == 18761) {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            } else if (a2 != 19789) {
                Log.isLoggable("DfltImageHeaderParser", 3);
                byteOrder = ByteOrder.BIG_ENDIAN;
            } else {
                byteOrder = ByteOrder.BIG_ENDIAN;
            }
            bVar.a.order(byteOrder);
            int b2 = bVar.b(10) + 6;
            short a3 = bVar.a(b2);
            for (int i4 = 0; i4 < a3; i4++) {
                int i5 = (i4 * 12) + b2 + 2;
                if (bVar.a(i5) == 274) {
                    short a4 = bVar.a(i5 + 2);
                    if (a4 >= 1 && a4 <= 12) {
                        int b3 = bVar.b(i5 + 4);
                        if (b3 < 0) {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            Log.isLoggable("DfltImageHeaderParser", 3);
                            int i6 = b3 + b[a4];
                            if (i6 > 4) {
                                Log.isLoggable("DfltImageHeaderParser", 3);
                            } else {
                                int i7 = i5 + 8;
                                if (i7 >= 0 && i7 <= bVar.a.remaining()) {
                                    if (i6 >= 0 && i6 + i7 <= bVar.a.remaining()) {
                                        return bVar.a(i7);
                                    }
                                    Log.isLoggable("DfltImageHeaderParser", 3);
                                } else {
                                    Log.isLoggable("DfltImageHeaderParser", 3);
                                }
                            }
                        }
                    } else {
                        Log.isLoggable("DfltImageHeaderParser", 3);
                    }
                }
            }
            return -1;
        }
        Log.isLoggable("DfltImageHeaderParser", 3);
        return -1;
    }
}
