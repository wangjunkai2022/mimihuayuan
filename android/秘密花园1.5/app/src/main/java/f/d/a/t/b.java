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
        String uuid;
        String packageName = context.getPackageName();
        f fVar = a.get(packageName);
        if (fVar == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
                context.getPackageName();
                packageInfo = null;
            }
            if (packageInfo != null) {
                uuid = String.valueOf(packageInfo.versionCode);
            } else {
                uuid = UUID.randomUUID().toString();
            }
            d dVar = new d(uuid);
            f putIfAbsent = a.putIfAbsent(packageName, dVar);
            return putIfAbsent == null ? dVar : putIfAbsent;
        }
        return fVar;
    }
}
