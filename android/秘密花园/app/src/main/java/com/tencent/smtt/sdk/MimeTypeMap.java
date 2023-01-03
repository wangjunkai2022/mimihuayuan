package com.tencent.smtt.sdk;

/* loaded from: classes.dex */
public class MimeTypeMap {
    public static MimeTypeMap a;

    public static String getFileExtensionFromUrl(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.MimeTypeMap.getFileExtensionFromUrl(str);
        }
        return a2.c().h(str);
    }

    public static synchronized MimeTypeMap getSingleton() {
        MimeTypeMap mimeTypeMap;
        synchronized (MimeTypeMap.class) {
            if (a == null) {
                a = new MimeTypeMap();
            }
            mimeTypeMap = a;
        }
        return mimeTypeMap;
    }

    public String getExtensionFromMimeType(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        }
        return a2.c().l(str);
    }

    public String getMimeTypeFromExtension(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(str);
        }
        return a2.c().j(str);
    }

    public boolean hasExtension(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.MimeTypeMap.getSingleton().hasExtension(str);
        }
        return a2.c().k(str);
    }

    public boolean hasMimeType(String str) {
        t a2 = t.a();
        if (a2 == null || !a2.b()) {
            return android.webkit.MimeTypeMap.getSingleton().hasMimeType(str);
        }
        return a2.c().i(str);
    }
}
