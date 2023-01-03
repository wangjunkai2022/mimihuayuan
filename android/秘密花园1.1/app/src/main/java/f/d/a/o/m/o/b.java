package f.d.a.o.m.o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import f.d.a.f;
import f.d.a.o.m.d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher.java */
/* loaded from: classes.dex */
public class b implements f.d.a.o.m.d<InputStream> {
    public final Uri a;
    public final d b;

    /* renamed from: c  reason: collision with root package name */
    public InputStream f3489c;

    /* compiled from: ThumbFetcher.java */
    /* loaded from: classes.dex */
    public static class a implements c {
        public static final String[] b = {"_data"};
        public final ContentResolver a;

        public a(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // f.d.a.o.m.o.c
        public Cursor a(Uri uri) {
            return this.a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: ThumbFetcher.java */
    /* renamed from: f.d.a.o.m.o.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0034b implements c {
        public static final String[] b = {"_data"};
        public final ContentResolver a;

        public C0034b(ContentResolver contentResolver) {
            this.a = contentResolver;
        }

        @Override // f.d.a.o.m.o.c
        public Cursor a(Uri uri) {
            return this.a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public b(Uri uri, d dVar) {
        this.a = uri;
        this.b = dVar;
    }

    public static b c(Context context, Uri uri, c cVar) {
        return new b(uri, new d(f.d.a.c.b(context).f3359d.e(), cVar, f.d.a.c.b(context).f3360e, context.getContentResolver()));
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // f.d.a.o.m.d
    public void b() {
        InputStream inputStream = this.f3489c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // f.d.a.o.m.d
    public void cancel() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r6 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        if (r6 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0044, code lost:
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
        r7 = null;
     */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0022: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:12:0x0022 */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.io.InputStream d() throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.d.a.o.m.o.b.d():java.io.InputStream");
    }

    @Override // f.d.a.o.m.d
    @NonNull
    public f.d.a.o.a e() {
        return f.d.a.o.a.LOCAL;
    }

    @Override // f.d.a.o.m.d
    public void f(@NonNull f fVar, @NonNull d.a<? super InputStream> aVar) {
        try {
            InputStream d2 = d();
            this.f3489c = d2;
            aVar.d(d2);
        } catch (FileNotFoundException e2) {
            Log.isLoggable("MediaStoreThumbFetcher", 3);
            aVar.c(e2);
        }
    }
}
