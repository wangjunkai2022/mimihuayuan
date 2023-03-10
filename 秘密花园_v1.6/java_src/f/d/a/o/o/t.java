package f.d.a.o.o;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: StreamEncoder.java */
/* loaded from: classes.dex */
public class t implements f.d.a.o.d<InputStream> {
    public final f.d.a.o.n.b0.b a;

    public t(f.d.a.o.n.b0.b bVar) {
        this.a = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @Override // f.d.a.o.d
    public boolean a(@NonNull InputStream inputStream, @NonNull File file, @NonNull f.d.a.o.h hVar) {
        FileOutputStream fileOutputStream;
        InputStream inputStream2 = inputStream;
        byte[] bArr = (byte[]) this.a.f(65536, byte[].class);
        boolean z = false;
        FileOutputStream fileOutputStream2 = 0;
        try {
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int read = inputStream2.read(bArr);
                            fileOutputStream2 = -1;
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        } catch (IOException unused) {
                            fileOutputStream2 = fileOutputStream;
                            Log.isLoggable("StreamEncoder", 3);
                            if (fileOutputStream2 != null) {
                                fileOutputStream2.close();
                                fileOutputStream2 = fileOutputStream2;
                            }
                            this.a.e(bArr);
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused2) {
                                }
                            }
                            this.a.e(bArr);
                            throw th;
                        }
                    }
                    fileOutputStream.close();
                    z = true;
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
            }
            this.a.e(bArr);
            return z;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
        }
    }
}
