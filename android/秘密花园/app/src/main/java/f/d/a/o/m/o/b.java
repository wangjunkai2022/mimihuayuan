package f.d.a.o.m.o;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import f.d.a.c;
import f.d.a.f;
import f.d.a.o.m.d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher.java */
/* loaded from: classes.dex */
public class b implements d<InputStream> {
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
    public static class C0027b implements c {
        public static final String[] b = {"_data"};
        public final ContentResolver a;

        public C0027b(ContentResolver contentResolver) {
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
        return new b(uri, new d(c.b(context).f3359d.e(), cVar, c.b(context).f3360e, context.getContentResolver()));
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

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 6, insn: 0x0022: MOVE  (r3 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:12:0x0022
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVarsInBlock(SSATransform.java:171)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:143)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:60)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:41)
        */
    public final java.io.InputStream d() throws java.io.FileNotFoundException {
        /*
        // Method dump skipped, instructions count: 254
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
