package com.tencent.smtt.sdk.a;

import MTT.ThirdAppInfoNew;
import android.content.Context;
import android.text.TextUtils;
import com.tencent.smtt.sdk.QbSdk;
import com.tencent.smtt.sdk.TbsDownloadConfig;
import com.tencent.smtt.sdk.TbsDownloadUpload;
import com.tencent.smtt.sdk.TbsListener;
import com.tencent.smtt.sdk.TbsLogReport;
import com.tencent.smtt.sdk.TbsPVConfig;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.h;
import com.tencent.smtt.utils.n;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import org.json.JSONObject;
/* compiled from: HttpUtils.java */
/* loaded from: classes.dex */
public class b {
    public static byte[] a;

    static {
        try {
            a = "65dRa93L".getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|2|3|4|(13:11|(1:13)(1:46)|14|15|(1:17)(1:45)|18|(5:20|21|(1:23)(1:27)|24|(1:26))|28|30|31|(3:33|34|(1:36)(2:37|(1:39)))|40|41)|47|14|15|(0)(0)|18|(0)|28|30|31|(0)|40|41|(1:(0))) */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ef A[Catch: Exception -> 0x0179, TRY_ENTER, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:16:0x00da, B:19:0x00ef, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:30:0x0133, B:27:0x012d, B:31:0x0138, B:20:0x00f7, B:14:0x0096, B:15:0x009c), top: B:45:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f7 A[Catch: Exception -> 0x0179, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:16:0x00da, B:19:0x00ef, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:30:0x0133, B:27:0x012d, B:31:0x0138, B:20:0x00f7, B:14:0x0096, B:15:0x009c), top: B:45:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x010b A[Catch: Exception -> 0x0179, TRY_LEAVE, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:16:0x00da, B:19:0x00ef, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:30:0x0133, B:27:0x012d, B:31:0x0138, B:20:0x00f7, B:14:0x0096, B:15:0x009c), top: B:45:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0145 A[Catch: Exception -> 0x0178, TRY_LEAVE, TryCatch #1 {Exception -> 0x0178, blocks: (B:32:0x013f, B:34:0x0145, B:37:0x0151, B:38:0x0165, B:40:0x016d), top: B:48:0x013f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject c(MTT.ThirdAppInfoNew r12, android.content.Context r13) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.b.c(MTT.ThirdAppInfoNew, android.content.Context):org.json.JSONObject");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:(14:(1:73)|9|10|11|12|13|(2:14|(1:16)(1:17))|(1:19)(2:33|34)|20|21|22|23|24|25)(1:7)|9|10|11|12|13|(3:14|(0)(0)|16)|(0)(0)|20|21|22|23|24|25) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:1|2|3|(14:(1:73)|9|10|11|12|13|(2:14|(1:16)(1:17))|(1:19)(2:33|34)|20|21|22|23|24|25)(1:7)|8|9|10|11|12|13|(3:14|(0)(0)|16)|(0)(0)|20|21|22|23|24|25|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
        r0 = r4;
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
        r0 = r4;
        r4 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
        r4 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0087, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008a, code lost:
        if (r0 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0090, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0091, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0094, code lost:
        if (r1 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0096, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x009a, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x009b, code lost:
        r4.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x009e, code lost:
        r5 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c0, code lost:
        if (r0 != null) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c2, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c6, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c7, code lost:
        r5.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ca, code lost:
        if (r1 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00cc, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d0, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d1, code lost:
        r5.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d4, code lost:
        throw r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0040 A[Catch: all -> 0x0078, Exception -> 0x007c, LOOP:0: B:17:0x0039->B:19:0x0040, LOOP_END, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:16:0x0037, B:17:0x0039, B:19:0x0040, B:21:0x0047, B:22:0x0059), top: B:84:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[Catch: all -> 0x0078, Exception -> 0x007c, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:16:0x0037, B:17:0x0039, B:19:0x0040, B:21:0x0047, B:22:0x0059), top: B:84:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[Catch: all -> 0x0078, Exception -> 0x007c, TRY_LEAVE, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:16:0x0037, B:17:0x0039, B:19:0x0040, B:21:0x0047, B:22:0x0059), top: B:84:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0045 A[EDGE_INSN: B:85:0x0045->B:20:0x0045 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(java.net.HttpURLConnection r4, java.lang.String r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.b.b(java.net.HttpURLConnection, java.lang.String, boolean):java.lang.String");
    }

    public static void a(final ThirdAppInfoNew thirdAppInfoNew, final Context context) {
        new Thread("HttpUtils") { // from class: com.tencent.smtt.sdk.a.b.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                String str;
                String str2;
                String str3;
                byte[] a2;
                thirdAppInfoNew.sCpu = com.tencent.smtt.utils.b.a();
                JSONObject jSONObject = null;
                if (b.a == null) {
                    try {
                        b.a = "65dRa93L".getBytes("utf-8");
                    } catch (UnsupportedEncodingException unused) {
                        b.a = null;
                        TbsLog.e("sdkreport", "Post failed -- get POST_DATA_KEY failed!");
                    }
                }
                if (b.a == null) {
                    TbsLog.e("sdkreport", "Post failed -- POST_DATA_KEY is null!");
                    return;
                }
                String string = TbsDownloadConfig.getInstance(context).mPreferences.getString(TbsDownloadConfig.TbsConfigKey.KEY_DESkEY_TOKEN, "");
                if (TextUtils.isEmpty(string)) {
                    str = "";
                    str2 = str;
                } else {
                    str2 = string.substring(0, string.indexOf("&"));
                    str = string.substring(string.indexOf("&") + 1, string.length());
                }
                boolean z = TextUtils.isEmpty(str2) || str2.length() != 96 || TextUtils.isEmpty(str) || str.length() != 24;
                try {
                    n a3 = n.a();
                    if (z) {
                        str3 = a3.b() + h.a().b();
                    } else {
                        str3 = a3.f() + str2;
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str3).openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setUseCaches(false);
                    httpURLConnection.setConnectTimeout(20000);
                    httpURLConnection.setRequestProperty("Connection", "close");
                    try {
                        jSONObject = b.c(thirdAppInfoNew, context);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    if (jSONObject == null) {
                        TbsLog.e("sdkreport", "post -- jsonData is null!");
                        return;
                    }
                    try {
                        byte[] bytes = jSONObject.toString().getBytes("utf-8");
                        if (z) {
                            a2 = h.a().a(bytes);
                        } else {
                            a2 = h.a(bytes, str);
                        }
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(a2.length));
                        try {
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            outputStream.write(a2);
                            outputStream.flush();
                            if (httpURLConnection.getResponseCode() == 200) {
                                TbsLog.i("sdkreport", "Post successful!");
                                TbsLog.i("sdkreport", "SIGNATURE is " + jSONObject.getString("SIGNATURE"));
                                b.b(context, b.b(httpURLConnection, str, z));
                                new TbsDownloadUpload(context).clearUploadCode();
                                return;
                            }
                            TbsLog.e("sdkreport", "Post failed -- not 200 code is " + httpURLConnection.getResponseCode());
                            TbsLogReport.TbsLogInfo tbsLogInfo = TbsLogReport.getInstance(context).tbsLogInfo();
                            tbsLogInfo.setErrorCode(TbsListener.ErrorCode.PV_UPLOAD_ERROR);
                            tbsLogInfo.setFailDetail("" + httpURLConnection.getResponseCode());
                            TbsLogReport.getInstance(context).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD, tbsLogInfo);
                        } catch (Throwable th) {
                            StringBuilder o = f.b.a.a.a.o("Post failed -- exceptions:");
                            o.append(th.getMessage());
                            TbsLog.e("sdkreport", o.toString());
                            TbsLogReport.TbsLogInfo tbsLogInfo2 = TbsLogReport.getInstance(context).tbsLogInfo();
                            tbsLogInfo2.setErrorCode(TbsListener.ErrorCode.PV_UPLOAD_ERROR);
                            tbsLogInfo2.setFailDetail(th);
                            TbsLogReport.getInstance(context).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD, tbsLogInfo2);
                        }
                    } catch (Throwable unused2) {
                    }
                } catch (IOException e3) {
                    TbsLog.e("sdkreport", "Post failed -- IOException:" + e3);
                } catch (AssertionError e4) {
                    TbsLog.e("sdkreport", "Post failed -- AssertionError:" + e4);
                } catch (NoClassDefFoundError e5) {
                    TbsLog.e("sdkreport", "Post failed -- NoClassDefFoundError:" + e5);
                }
            }
        }.start();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:24:0x0075, B:26:0x00b9, B:27:0x00bb, B:29:0x00bf, B:31:0x00ca, B:33:0x00de, B:35:0x00e4, B:37:0x00e8, B:39:0x00ee, B:40:0x00f0, B:42:0x00f6, B:44:0x00fa, B:46:0x0100, B:47:0x0102, B:50:0x010f, B:52:0x0115, B:55:0x011d, B:63:0x012e, B:65:0x0138, B:66:0x0140, B:53:0x0119, B:56:0x0120, B:59:0x0126, B:62:0x012c, B:30:0x00c4), top: B:75:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:24:0x0075, B:26:0x00b9, B:27:0x00bb, B:29:0x00bf, B:31:0x00ca, B:33:0x00de, B:35:0x00e4, B:37:0x00e8, B:39:0x00ee, B:40:0x00f0, B:42:0x00f6, B:44:0x00fa, B:46:0x0100, B:47:0x0102, B:50:0x010f, B:52:0x0115, B:55:0x011d, B:63:0x012e, B:65:0x0138, B:66:0x0140, B:53:0x0119, B:56:0x0120, B:59:0x0126, B:62:0x012c, B:30:0x00c4), top: B:75:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:24:0x0075, B:26:0x00b9, B:27:0x00bb, B:29:0x00bf, B:31:0x00ca, B:33:0x00de, B:35:0x00e4, B:37:0x00e8, B:39:0x00ee, B:40:0x00f0, B:42:0x00f6, B:44:0x00fa, B:46:0x0100, B:47:0x0102, B:50:0x010f, B:52:0x0115, B:55:0x011d, B:63:0x012e, B:65:0x0138, B:66:0x0140, B:53:0x0119, B:56:0x0120, B:59:0x0126, B:62:0x012c, B:30:0x00c4), top: B:75:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f6 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:24:0x0075, B:26:0x00b9, B:27:0x00bb, B:29:0x00bf, B:31:0x00ca, B:33:0x00de, B:35:0x00e4, B:37:0x00e8, B:39:0x00ee, B:40:0x00f0, B:42:0x00f6, B:44:0x00fa, B:46:0x0100, B:47:0x0102, B:50:0x010f, B:52:0x0115, B:55:0x011d, B:63:0x012e, B:65:0x0138, B:66:0x0140, B:53:0x0119, B:56:0x0120, B:59:0x0126, B:62:0x012c, B:30:0x00c4), top: B:75:0x0075 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0138 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:24:0x0075, B:26:0x00b9, B:27:0x00bb, B:29:0x00bf, B:31:0x00ca, B:33:0x00de, B:35:0x00e4, B:37:0x00e8, B:39:0x00ee, B:40:0x00f0, B:42:0x00f6, B:44:0x00fa, B:46:0x0100, B:47:0x0102, B:50:0x010f, B:52:0x0115, B:55:0x011d, B:63:0x012e, B:65:0x0138, B:66:0x0140, B:53:0x0119, B:56:0x0120, B:59:0x0126, B:62:0x012c, B:30:0x00c4), top: B:75:0x0075 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, int r10, boolean r11, long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.b.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String, int, boolean, long, boolean):void");
    }

    public static void b(Context context, String str) {
        try {
            TbsPVConfig.releaseInstance();
            TbsPVConfig.getInstance(context).clear();
            if (TextUtils.isEmpty(str)) {
                return;
            }
            for (String str2 : str.split("\\|")) {
                try {
                    String[] split = str2.split("=");
                    if (split.length == 2) {
                        a(context, split[0], split[1]);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            TbsPVConfig.getInstance(context).commit();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static String a(Context context) {
        try {
            byte[] byteArray = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
            if (byteArray != null) {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
                messageDigest.update(byteArray);
                byte[] digest = messageDigest.digest();
                if (digest != null) {
                    StringBuilder sb = new StringBuilder("");
                    if (digest.length <= 0) {
                        return null;
                    }
                    for (int i2 = 0; i2 < digest.length; i2++) {
                        String upperCase = Integer.toHexString(digest[i2] & 255).toUpperCase();
                        if (i2 > 0) {
                            sb.append(":");
                        }
                        if (upperCase.length() < 2) {
                            sb.append(0);
                        }
                        sb.append(upperCase);
                    }
                    return sb.toString();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static void a(Context context, String str, String str2) {
        if ("reset".equals(str) && "true".equals(str2)) {
            QbSdk.reset(context);
        } else {
            TbsPVConfig.getInstance(context).putData(str, str2);
        }
    }
}
