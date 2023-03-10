package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(19)
/* loaded from: classes.dex */
public class DocumentsContractApi19 {
    public static final int FLAG_VIRTUAL_DOCUMENT = 512;
    public static final String TAG = "DocumentFile";

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(getRawType(context, uri));
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, uri);
        int queryForInt = queryForInt(context, uri, "flags", 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((queryForInt & 4) != 0) {
            return true;
        }
        if ("vnd.android.document/directory".equals(rawType) && (queryForInt & 8) != 0) {
            return true;
        }
        if (TextUtils.isEmpty(rawType) || (queryForInt & 2) == 0) {
            return false;
        }
        return true;
    }

    public static void closeQuietly(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static boolean exists(Context context, Uri uri) {
        Cursor cursor;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            boolean z = false;
            cursor = null;
            cursor = contentResolver.query(uri, new String[]{"document_id"}, null, null, null);
            if (cursor.getCount() > 0) {
                z = true;
            }
            return z;
        } catch (Exception e2) {
            String str = "Failed query: " + e2;
            return false;
        } finally {
            closeQuietly(cursor);
        }
    }

    public static long getFlags(Context context, Uri uri) {
        return queryForLong(context, uri, "flags", 0);
    }

    @Nullable
    public static String getName(Context context, Uri uri) {
        return queryForString(context, uri, "_display_name", null);
    }

    @Nullable
    public static String getRawType(Context context, Uri uri) {
        return queryForString(context, uri, "mime_type", null);
    }

    @Nullable
    public static String getType(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        if ("vnd.android.document/directory".equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return "vnd.android.document/directory".equals(getRawType(context, uri));
    }

    public static boolean isFile(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return !"vnd.android.document/directory".equals(rawType) && !TextUtils.isEmpty(rawType);
    }

    public static boolean isVirtual(Context context, Uri uri) {
        if (DocumentsContract.isDocumentUri(context, uri) && (getFlags(context, uri) & 512) != 0) {
            return true;
        }
        return false;
    }

    public static long lastModified(Context context, Uri uri) {
        return queryForLong(context, uri, "last_modified", 0);
    }

    public static long length(Context context, Uri uri) {
        return queryForLong(context, uri, "_size", 0);
    }

    public static int queryForInt(Context context, Uri uri, String str, int i2) {
        return (int) queryForLong(context, uri, str, (long) i2);
    }

    public static long queryForLong(Context context, Uri uri, String str, long j2) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            if (!cursor.moveToFirst() || cursor.isNull(0)) {
                return j2;
            }
            return cursor.getLong(0);
        } catch (Exception e2) {
            String str2 = "Failed query: " + e2;
            return j2;
        } finally {
            closeQuietly(cursor);
        }
    }

    @Nullable
    public static String queryForString(Context context, Uri uri, String str, @Nullable String str2) {
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            if (!cursor.moveToFirst() || cursor.isNull(0)) {
                return str2;
            }
            return cursor.getString(0);
        } catch (Exception e2) {
            String str3 = "Failed query: " + e2;
            return str2;
        } finally {
            closeQuietly(cursor);
        }
    }
}
