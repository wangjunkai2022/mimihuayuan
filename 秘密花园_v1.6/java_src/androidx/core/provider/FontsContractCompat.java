package androidx.core.provider;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import android.provider.BaseColumns;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.provider.SelfDestructiveThread;
import androidx.core.util.Preconditions;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import f.i.a.a.k1.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public class FontsContractCompat {
    public static final int BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS = 10000;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String PARCEL_FONT_RESULTS = "font_results";
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int RESULT_CODE_PROVIDER_NOT_FOUND = -1;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final int RESULT_CODE_WRONG_CERTIFICATES = -2;
    public static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    public static final SelfDestructiveThread sBackgroundThread = new SelfDestructiveThread("fonts", 10, 10000);
    public static final Object sLock = new Object();
    @GuardedBy("sLock")
    public static final SimpleArrayMap<String, ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>>> sPendingReplies = new SimpleArrayMap<>();
    public static final Comparator<byte[]> sByteArrayComparator = new Comparator<byte[]>() { // from class: androidx.core.provider.FontsContractCompat.5
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int i2;
            int i3;
            if (bArr.length != bArr2.length) {
                i2 = bArr.length;
                i3 = bArr2.length;
            } else {
                for (int i4 = 0; i4 < bArr.length; i4++) {
                    if (bArr[i4] != bArr2[i4]) {
                        i2 = bArr[i4];
                        i3 = bArr2[i4];
                    }
                }
                return 0;
            }
            return i2 - i3;
        }
    };

    /* loaded from: classes.dex */
    public static final class Columns implements BaseColumns {
        public static final String FILE_ID = "file_id";
        public static final String ITALIC = "font_italic";
        public static final String RESULT_CODE = "result_code";
        public static final int RESULT_CODE_FONT_NOT_FOUND = 1;
        public static final int RESULT_CODE_FONT_UNAVAILABLE = 2;
        public static final int RESULT_CODE_MALFORMED_QUERY = 3;
        public static final int RESULT_CODE_OK = 0;
        public static final String TTC_INDEX = "font_ttc_index";
        public static final String VARIATION_SETTINGS = "font_variation_settings";
        public static final String WEIGHT = "font_weight";
    }

    /* loaded from: classes.dex */
    public static class FontFamilyResult {
        public static final int STATUS_OK = 0;
        public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
        public static final int STATUS_WRONG_CERTIFICATES = 1;
        public final FontInfo[] mFonts;
        public final int mStatusCode;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public FontFamilyResult(int i2, @Nullable FontInfo[] fontInfoArr) {
            this.mStatusCode = i2;
            this.mFonts = fontInfoArr;
        }

        public FontInfo[] getFonts() {
            return this.mFonts;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }
    }

    /* loaded from: classes.dex */
    public static class FontInfo {
        public final boolean mItalic;
        public final int mResultCode;
        public final int mTtcIndex;
        public final Uri mUri;
        public final int mWeight;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public FontInfo(@NonNull Uri uri, @IntRange(from = 0) int i2, @IntRange(from = 1, to = 1000) int i3, boolean z, int i4) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = i2;
            this.mWeight = i3;
            this.mItalic = z;
            this.mResultCode = i4;
        }

        public int getResultCode() {
            return this.mResultCode;
        }

        @IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY)
        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        @NonNull
        public Uri getUri() {
            return this.mUri;
        }

        @IntRange(from = 1, to = a.STOP_SCRUBBING_TIMEOUT_MS)
        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }
    }

    /* loaded from: classes.dex */
    public static class FontRequestCallback {
        public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
        public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
        public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
        public static final int FAIL_REASON_MALFORMED_QUERY = 3;
        public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
        public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
        public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public static final int RESULT_OK = 0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes.dex */
        public @interface FontRequestFailReason {
        }

        public void onTypefaceRequestFailed(int i2) {
        }

        public void onTypefaceRetrieved(Typeface typeface) {
        }
    }

    /* loaded from: classes.dex */
    public static final class TypefaceResult {
        public final int mResult;
        public final Typeface mTypeface;

        public TypefaceResult(@Nullable Typeface typeface, int i2) {
            this.mTypeface = typeface;
            this.mResult = i2;
        }
    }

    @Nullable
    public static Typeface buildTypeface(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    public static List<byte[]> convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static boolean equalsByteArrayList(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            if (!Arrays.equals(list.get(i2), list2.get(i2))) {
                return false;
            }
        }
        return true;
    }

    @NonNull
    public static FontFamilyResult fetchFonts(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontRequest fontRequest) throws PackageManager.NameNotFoundException {
        ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
        if (provider == null) {
            return new FontFamilyResult(1, null);
        }
        return new FontFamilyResult(0, getFontFromProvider(context, fontRequest, provider.authority, cancellationSignal));
    }

    public static List<List<byte[]>> getCertificates(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    @NonNull
    @VisibleForTesting
    public static FontInfo[] getFontFromProvider(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        Uri withAppendedId;
        ArrayList arrayList = new ArrayList();
        Uri build = new Uri.Builder().scheme("content").authority(str).build();
        Uri build2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        Cursor cursor = null;
        try {
            cursor = context.getContentResolver().query(build, new String[]{"_id", Columns.FILE_ID, Columns.TTC_INDEX, Columns.VARIATION_SETTINGS, Columns.WEIGHT, Columns.ITALIC, Columns.RESULT_CODE}, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
            if (cursor != null && cursor.getCount() > 0) {
                int columnIndex = cursor.getColumnIndex(Columns.RESULT_CODE);
                ArrayList arrayList2 = new ArrayList();
                int columnIndex2 = cursor.getColumnIndex("_id");
                int columnIndex3 = cursor.getColumnIndex(Columns.FILE_ID);
                int columnIndex4 = cursor.getColumnIndex(Columns.TTC_INDEX);
                int columnIndex5 = cursor.getColumnIndex(Columns.WEIGHT);
                int columnIndex6 = cursor.getColumnIndex(Columns.ITALIC);
                while (cursor.moveToNext()) {
                    int i2 = columnIndex != -1 ? cursor.getInt(columnIndex) : 0;
                    int i3 = columnIndex4 != -1 ? cursor.getInt(columnIndex4) : 0;
                    if (columnIndex3 == -1) {
                        withAppendedId = ContentUris.withAppendedId(build, cursor.getLong(columnIndex2));
                    } else {
                        withAppendedId = ContentUris.withAppendedId(build2, cursor.getLong(columnIndex3));
                    }
                    arrayList2.add(new FontInfo(withAppendedId, i3, columnIndex5 != -1 ? cursor.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursor.getInt(columnIndex6) == 1, i2));
                }
                arrayList = arrayList2;
            }
            return (FontInfo[]) arrayList.toArray(new FontInfo[0]);
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @NonNull
    public static TypefaceResult getFontInternal(Context context, FontRequest fontRequest, int i2) {
        try {
            FontFamilyResult fetchFonts = fetchFonts(context, null, fontRequest);
            if (fetchFonts.getStatusCode() == 0) {
                Typeface createFromFontInfo = TypefaceCompat.createFromFontInfo(context, null, fetchFonts.getFonts(), i2);
                return new TypefaceResult(createFromFontInfo, createFromFontInfo != null ? 0 : -3);
            }
            return new TypefaceResult(null, fetchFonts.getStatusCode() == 1 ? -2 : -3);
        } catch (PackageManager.NameNotFoundException unused) {
            return new TypefaceResult(null, -1);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface getFontSync(final Context context, final FontRequest fontRequest, @Nullable final ResourcesCompat.FontCallback fontCallback, @Nullable final Handler handler, boolean z, int i2, final int i3) {
        final String str = fontRequest.getIdentifier() + "-" + i3;
        Typeface typeface = sTypefaceCache.get(str);
        if (typeface != null) {
            if (fontCallback != null) {
                fontCallback.onFontRetrieved(typeface);
            }
            return typeface;
        } else if (z && i2 == -1) {
            TypefaceResult fontInternal = getFontInternal(context, fontRequest, i3);
            if (fontCallback != null) {
                int i4 = fontInternal.mResult;
                if (i4 == 0) {
                    fontCallback.callbackSuccessAsync(fontInternal.mTypeface, handler);
                } else {
                    fontCallback.callbackFailAsync(i4, handler);
                }
            }
            return fontInternal.mTypeface;
        } else {
            Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public TypefaceResult call() throws Exception {
                    TypefaceResult fontInternal2 = FontsContractCompat.getFontInternal(context, fontRequest, i3);
                    Typeface typeface2 = fontInternal2.mTypeface;
                    if (typeface2 != null) {
                        FontsContractCompat.sTypefaceCache.put(str, typeface2);
                    }
                    return fontInternal2;
                }
            };
            if (z) {
                try {
                    return ((TypefaceResult) sBackgroundThread.postAndWait(callable, i2)).mTypeface;
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            SelfDestructiveThread.ReplyCallback<TypefaceResult> replyCallback = fontCallback == null ? null : new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.2
                @Override // androidx.core.provider.SelfDestructiveThread.ReplyCallback
                public void onReply(TypefaceResult typefaceResult) {
                    if (typefaceResult == null) {
                        ResourcesCompat.FontCallback.this.callbackFailAsync(1, handler);
                        return;
                    }
                    int i5 = typefaceResult.mResult;
                    if (i5 == 0) {
                        ResourcesCompat.FontCallback.this.callbackSuccessAsync(typefaceResult.mTypeface, handler);
                    } else {
                        ResourcesCompat.FontCallback.this.callbackFailAsync(i5, handler);
                    }
                }
            };
            synchronized (sLock) {
                ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList = sPendingReplies.get(str);
                if (arrayList != null) {
                    if (replyCallback != null) {
                        arrayList.add(replyCallback);
                    }
                    return null;
                }
                if (replyCallback != null) {
                    ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList2 = new ArrayList<>();
                    arrayList2.add(replyCallback);
                    sPendingReplies.put(str, arrayList2);
                }
                sBackgroundThread.postAndReply(callable, new SelfDestructiveThread.ReplyCallback<TypefaceResult>() { // from class: androidx.core.provider.FontsContractCompat.3
                    @Override // androidx.core.provider.SelfDestructiveThread.ReplyCallback
                    public void onReply(TypefaceResult typefaceResult) {
                        synchronized (FontsContractCompat.sLock) {
                            ArrayList<SelfDestructiveThread.ReplyCallback<TypefaceResult>> arrayList3 = FontsContractCompat.sPendingReplies.get(str);
                            if (arrayList3 == null) {
                                return;
                            }
                            FontsContractCompat.sPendingReplies.remove(str);
                            for (int i5 = 0; i5 < arrayList3.size(); i5++) {
                                arrayList3.get(i5).onReply(typefaceResult);
                            }
                        }
                    }
                });
                return null;
            }
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @VisibleForTesting
    public static ProviderInfo getProvider(@NonNull PackageManager packageManager, @NonNull FontRequest fontRequest, @Nullable Resources resources) throws PackageManager.NameNotFoundException {
        String providerAuthority = fontRequest.getProviderAuthority();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
        if (resolveContentProvider != null) {
            if (resolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
                List<byte[]> convertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(resolveContentProvider.packageName, 64).signatures);
                Collections.sort(convertToByteArrayList, sByteArrayComparator);
                List<List<byte[]>> certificates = getCertificates(fontRequest, resources);
                for (int i2 = 0; i2 < certificates.size(); i2++) {
                    ArrayList arrayList = new ArrayList(certificates.get(i2));
                    Collections.sort(arrayList, sByteArrayComparator);
                    if (equalsByteArrayList(convertToByteArrayList, arrayList)) {
                        return resolveContentProvider;
                    }
                }
                return null;
            }
            throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
        }
        throw new PackageManager.NameNotFoundException(f.b.a.a.a.f("No package found for authority: ", providerAuthority));
    }

    @RequiresApi(19)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Map<Uri, ByteBuffer> prepareFontData(Context context, FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        HashMap hashMap = new HashMap();
        for (FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, TypefaceCompatUtil.mmap(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public static void requestFont(@NonNull Context context, @NonNull FontRequest fontRequest, @NonNull FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        requestFontInternal(context.getApplicationContext(), fontRequest, fontRequestCallback, handler);
    }

    public static void requestFontInternal(@NonNull final Context context, @NonNull final FontRequest fontRequest, @NonNull final FontRequestCallback fontRequestCallback, @NonNull Handler handler) {
        final Handler handler2 = new Handler();
        handler.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    FontFamilyResult fetchFonts = FontsContractCompat.fetchFonts(context, null, fontRequest);
                    if (fetchFonts.getStatusCode() != 0) {
                        int statusCode = fetchFonts.getStatusCode();
                        if (statusCode == 1) {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-2);
                                }
                            });
                            return;
                        } else if (statusCode != 2) {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        } else {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        }
                    }
                    FontInfo[] fonts = fetchFonts.getFonts();
                    if (fonts != null && fonts.length != 0) {
                        for (FontInfo fontInfo : fonts) {
                            if (fontInfo.getResultCode() != 0) {
                                final int resultCode = fontInfo.getResultCode();
                                if (resultCode < 0) {
                                    handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.6
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            fontRequestCallback.onTypefaceRequestFailed(-3);
                                        }
                                    });
                                    return;
                                } else {
                                    handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.7
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            fontRequestCallback.onTypefaceRequestFailed(resultCode);
                                        }
                                    });
                                    return;
                                }
                            }
                        }
                        final Typeface buildTypeface = FontsContractCompat.buildTypeface(context, null, fonts);
                        if (buildTypeface == null) {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRequestFailed(-3);
                                }
                            });
                            return;
                        } else {
                            handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.9
                                @Override // java.lang.Runnable
                                public void run() {
                                    fontRequestCallback.onTypefaceRetrieved(buildTypeface);
                                }
                            });
                            return;
                        }
                    }
                    handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.5
                        @Override // java.lang.Runnable
                        public void run() {
                            fontRequestCallback.onTypefaceRequestFailed(1);
                        }
                    });
                } catch (PackageManager.NameNotFoundException unused) {
                    handler2.post(new Runnable() { // from class: androidx.core.provider.FontsContractCompat.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            fontRequestCallback.onTypefaceRequestFailed(-1);
                        }
                    });
                }
            }
        });
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static void resetCache() {
        sTypefaceCache.evictAll();
    }
}
