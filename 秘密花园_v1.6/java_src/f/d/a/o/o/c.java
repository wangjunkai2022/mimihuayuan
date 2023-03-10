package f.d.a.o.o;

import android.util.Log;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: ByteBufferEncoder.java */
/* loaded from: classes.dex */
public class c implements f.d.a.o.d<ByteBuffer> {
    @Override // f.d.a.o.d
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull f.d.a.o.h hVar) {
        try {
            f.d.a.u.a.d(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable("ByteBufferEncoder", 3);
            return false;
        }
    }
}
