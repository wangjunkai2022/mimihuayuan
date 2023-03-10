package f.d.a.o.p.e;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.IOException;
import java.util.List;
/* compiled from: ResourceDrawableDecoder.java */
/* loaded from: classes.dex */
public class d implements j<Uri, Drawable> {
    public final Context a;

    public d(Context context) {
        this.a = context.getApplicationContext();
    }

    @Override // f.d.a.o.j
    @Nullable
    public /* bridge */ /* synthetic */ w<Drawable> a(@NonNull Uri uri, int i2, int i3, @NonNull h hVar) throws IOException {
        return c(uri);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull Uri uri, @NonNull h hVar) throws IOException {
        return uri.getScheme().equals("android.resource");
    }

    @Nullable
    public w c(@NonNull Uri uri) {
        Context context;
        int parseInt;
        String authority = uri.getAuthority();
        if (authority.equals(this.a.getPackageName())) {
            context = this.a;
        } else {
            try {
                context = this.a.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e2) {
                if (authority.contains(this.a.getPackageName())) {
                    context = this.a;
                } else {
                    throw new IllegalArgumentException(f.b.a.a.a.d("Failed to obtain context or unrecognized Uri format for: ", uri), e2);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            parseInt = context.getResources().getIdentifier(str2, str, authority2);
            if (parseInt == 0) {
                parseInt = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (parseInt == 0) {
                throw new IllegalArgumentException(f.b.a.a.a.d("Failed to find resource id for: ", uri));
            }
        } else if (pathSegments.size() == 1) {
            try {
                parseInt = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e3) {
                throw new IllegalArgumentException(f.b.a.a.a.d("Unrecognized Uri format: ", uri), e3);
            }
        } else {
            throw new IllegalArgumentException(f.b.a.a.a.d("Unrecognized Uri format: ", uri));
        }
        Drawable a = a.a(this.a, context, parseInt, null);
        if (a != null) {
            return new c(a);
        }
        return null;
    }
}
