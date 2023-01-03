package f.d.a.t;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import f.d.a.o.f;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: ApplicationVersionSignature.java */
/* loaded from: classes.dex */
public final class b {
    public static final ConcurrentMap<String, f> a = new ConcurrentHashMap();

    @NonNull
    public static f a(@NonNull Context context) {
        PackageInfo packageInfo;
        String str;
        String packageName = context.getPackageName();
        f fVar = a.get(packageName);
        if (fVar != null) {
            return fVar;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            context.getPackageName();
            packageInfo = null;
        }
        if (packageInfo != null) {
            str = String.valueOf(packageInfo.versionCode);
        } else {
            str = UUID.randomUUID().toString();
        }
        d dVar = new d(str);
        f putIfAbsent = a.putIfAbsent(packageName, dVar);
        return putIfAbsent == null ? dVar : putIfAbsent;
    }
}
