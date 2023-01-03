package g.a.f1.t;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* compiled from: RealmThreadPoolExecutor.java */
/* loaded from: classes.dex */
public class c implements FileFilter {
    public final /* synthetic */ Pattern a;

    public c(Pattern pattern) {
        this.a = pattern;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return this.a.matcher(file.getName()).matches();
    }
}
