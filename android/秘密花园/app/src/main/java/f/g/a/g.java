package f.g.a;

import java.io.File;
import java.io.FilenameFilter;

/* compiled from: ReLinkerInstance.java */
/* loaded from: classes.dex */
public class g implements FilenameFilter {
    public final /* synthetic */ String a;

    public g(f fVar, String str) {
        this.a = str;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.startsWith(this.a);
    }
}
