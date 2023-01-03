package f.d.a.o.o;

import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.d;
import f.d.a.o.h;
import f.d.a.u.a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferEncoder.java */
/* loaded from: classes.dex */
public class c implements d<ByteBuffer> {
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.io.File, f.d.a.o.h] */
    @Override // f.d.a.o.d
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull File file, @NonNull h hVar) {
        try {
            a.d(byteBuffer, file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable("ByteBufferEncoder", 3);
            return false;
        }
    }
}
