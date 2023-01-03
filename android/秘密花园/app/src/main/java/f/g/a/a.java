package f.g.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: ApkLibraryInstaller.java */
/* loaded from: classes.dex */
public class a implements c {

    /* compiled from: ApkLibraryInstaller.java */
    /* renamed from: f.g.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0052a {
        public ZipFile a;
        public ZipEntry b;

        public C0052a(ZipFile zipFile, ZipEntry zipEntry) {
            this.a = zipFile;
            this.b = zipEntry;
        }
    }

    public final C0052a a(Context context, String[] strArr, String str, f fVar) {
        String[] strArr2;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr3 = applicationInfo.splitSourceDirs;
        char c2 = 0;
        int i2 = 1;
        if (strArr3 == null || strArr3.length == 0) {
            strArr2 = new String[]{applicationInfo.sourceDir};
        } else {
            strArr2 = new String[strArr3.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr3, 0, strArr2, 1, strArr3.length);
        }
        int length = strArr2.length;
        int i3 = 0;
        ZipFile zipFile = null;
        while (i3 < length) {
            String str2 = strArr2[i3];
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                if (i4 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), i2);
                    break;
                } catch (IOException unused) {
                    i4 = i5;
                }
            }
            if (zipFile != null) {
                int i6 = 0;
                while (true) {
                    int i7 = i6 + 1;
                    if (i6 >= 5) {
                        break;
                    }
                    int length2 = strArr.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        String str3 = strArr[i8];
                        StringBuilder o = f.b.a.a.a.o("lib");
                        o.append(File.separatorChar);
                        o.append(str3);
                        o.append(File.separatorChar);
                        o.append(str);
                        String sb = o.toString();
                        Object[] objArr = new Object[2];
                        objArr[c2] = sb;
                        objArr[i2] = str2;
                        if (fVar != null) {
                            String.format(Locale.US, "Looking for %s in APK %s...", objArr);
                            ZipEntry entry = zipFile.getEntry(sb);
                            if (entry != null) {
                                return new C0052a(zipFile, entry);
                            }
                            i8++;
                            c2 = 0;
                            i2 = 1;
                        } else {
                            throw null;
                        }
                    }
                    i6 = i7;
                }
            }
            i3++;
            c2 = 0;
            i2 = 1;
        }
        return null;
    }
}
