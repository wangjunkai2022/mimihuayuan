package f.d.a.o.p.f;

import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.File;
import java.io.IOException;
/* compiled from: FileDecoder.java */
/* loaded from: classes.dex */
public class a implements j<File, File> {
    @Override // f.d.a.o.j
    public w<File> a(@NonNull File file, int i2, int i3, @NonNull h hVar) throws IOException {
        return new b(file);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull File file, @NonNull h hVar) throws IOException {
        return true;
    }
}
