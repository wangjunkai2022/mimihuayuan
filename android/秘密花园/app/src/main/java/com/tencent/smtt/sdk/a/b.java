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
import f.b.a.a.a;
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

    /* JADX WARNING: Can't wrap try/catch for region: R(17:2|45|3|4|(12:11|(1:13)(1:14)|16|17|(1:19)(1:20)|21|(5:23|24|(1:26)(1:27)|28|(1:30))|31|47|32|(3:34|35|(1:37)(2:38|(1:40)))|41)|15|16|17|(0)(0)|21|(0)|31|47|32|(0)|41|(1:(0))) */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00ef A[Catch: Exception -> 0x0179, TRY_ENTER, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:14:0x0096, B:15:0x009c, B:16:0x00da, B:19:0x00ef, B:20:0x00f7, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:27:0x012d, B:30:0x0133, B:31:0x0138), top: B:45:0x0006 }] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00f7 A[Catch: Exception -> 0x0179, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:14:0x0096, B:15:0x009c, B:16:0x00da, B:19:0x00ef, B:20:0x00f7, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:27:0x012d, B:30:0x0133, B:31:0x0138), top: B:45:0x0006 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x010b A[Catch: Exception -> 0x0179, TRY_LEAVE, TryCatch #0 {Exception -> 0x0179, blocks: (B:3:0x0006, B:6:0x0079, B:8:0x0081, B:11:0x008c, B:13:0x0090, B:14:0x0096, B:15:0x009c, B:16:0x00da, B:19:0x00ef, B:20:0x00f7, B:21:0x0107, B:23:0x010b, B:26:0x0121, B:27:0x012d, B:30:0x0133, B:31:0x0138), top: B:45:0x0006 }] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0145 A[Catch: Exception -> 0x0178, TRY_LEAVE, TryCatch #1 {Exception -> 0x0178, blocks: (B:32:0x013f, B:34:0x0145, B:37:0x0151, B:38:0x0165, B:40:0x016d), top: B:47:0x013f }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static org.json.JSONObject c(MTT.ThirdAppInfoNew r12, android.content.Context r13) {
        /*
        // Method dump skipped, instructions count: 384
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.b.c(MTT.ThirdAppInfoNew, android.content.Context):org.json.JSONObject");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(14:(14:(1:12)|60|13|14|76|15|(2:16|(1:18)(1:77))|(1:20)(2:21|22)|72|23|66|26|48|49)(1:7)|60|13|14|76|15|(3:16|(0)(0)|18)|(0)(0)|72|23|66|26|48|49) */
    /* JADX WARNING: Can't wrap try/catch for region: R(19:2|75|3|(14:(1:12)|60|13|14|76|15|(2:16|(1:18)(1:77))|(1:20)(2:21|22)|72|23|66|26|48|49)(1:7)|8|60|13|14|76|15|(3:16|(0)(0)|18)|(0)(0)|72|23|66|26|48|49|(1:(0))) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x006b, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x006c, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0073, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0074, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0078, code lost:
        r4 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0079, code lost:
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x007c, code lost:
        r4 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x007d, code lost:
        r0 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0080, code lost:
        r4 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0087, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x008a, code lost:
        if (r0 != null) goto L_0x008c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x008c, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0090, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0091, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0094, code lost:
        if (r1 != null) goto L_0x0096;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0096, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x009a, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x009b, code lost:
        r4.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x009e, code lost:
        r5 = "";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00c0, code lost:
        if (r0 != null) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00c2, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00c6, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x00c7, code lost:
        r5.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x00ca, code lost:
        if (r1 != null) goto L_0x00cc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00cc, code lost:
        r1.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x00d0, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:58:0x00d1, code lost:
        r5.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00d4, code lost:
        throw r4;
     */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0040 A[Catch: Exception -> 0x007c, all -> 0x0078, LOOP:0: B:16:0x0039->B:18:0x0040, LOOP_END, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:15:0x0037, B:16:0x0039, B:18:0x0040, B:20:0x0047, B:21:0x0059), top: B:76:0x0037 }] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0047 A[Catch: Exception -> 0x007c, all -> 0x0078, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:15:0x0037, B:16:0x0039, B:18:0x0040, B:20:0x0047, B:21:0x0059), top: B:76:0x0037 }] */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0059 A[Catch: Exception -> 0x007c, all -> 0x0078, TRY_LEAVE, TryCatch #11 {Exception -> 0x007c, all -> 0x0078, blocks: (B:15:0x0037, B:16:0x0039, B:18:0x0040, B:20:0x0047, B:21:0x0059), top: B:76:0x0037 }] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0045 A[EDGE_INSN: B:77:0x0045->B:19:0x0045 ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String b(java.net.HttpURLConnection r4, java.lang.String r5, boolean r6) {
        /*
        // Method dump skipped, instructions count: 213
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
                byte[] bArr;
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
                if (!TextUtils.isEmpty(string)) {
                    str = string.substring(0, string.indexOf("&"));
                    str2 = string.substring(string.indexOf("&") + 1, string.length());
                } else {
                    str2 = "";
                    str = str2;
                }
                boolean z = TextUtils.isEmpty(str) || str.length() != 96 || TextUtils.isEmpty(str2) || str2.length() != 24;
                try {
                    n a2 = n.a();
                    if (z) {
                        str3 = a2.b() + h.a().b();
                    } else {
                        str3 = a2.f() + str;
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
                            bArr = h.a().a(bytes);
                        } else {
                            bArr = h.a(bytes, str2);
                        }
                        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bArr.length));
                        try {
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            outputStream.write(bArr);
                            outputStream.flush();
                            if (httpURLConnection.getResponseCode() == 200) {
                                TbsLog.i("sdkreport", "Post successful!");
                                TbsLog.i("sdkreport", "SIGNATURE is " + jSONObject.getString("SIGNATURE"));
                                b.b(context, b.b(httpURLConnection, str2, z));
                                new TbsDownloadUpload(context).clearUploadCode();
                                return;
                            }
                            TbsLog.e("sdkreport", "Post failed -- not 200 code is " + httpURLConnection.getResponseCode());
                            TbsLogReport.TbsLogInfo tbsLogInfo = TbsLogReport.getInstance(context).tbsLogInfo();
                            tbsLogInfo.setErrorCode(TbsListener.ErrorCode.PV_UPLOAD_ERROR);
                            tbsLogInfo.setFailDetail("" + httpURLConnection.getResponseCode());
                            TbsLogReport.getInstance(context).eventReport(TbsLogReport.EventType.TYPE_DOWNLOAD, tbsLogInfo);
                        } catch (Throwable th) {
                            StringBuilder o = a.o("Post failed -- exceptions:");
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

    /* JADX WARNING: Removed duplicated region for block: B:24:0x00b9 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:22:0x0075, B:24:0x00b9, B:25:0x00bb, B:27:0x00bf, B:28:0x00c4, B:29:0x00ca, B:31:0x00de, B:33:0x00e4, B:35:0x00e8, B:37:0x00ee, B:38:0x00f0, B:40:0x00f6, B:42:0x00fa, B:44:0x0100, B:45:0x0102, B:48:0x010f, B:50:0x0115, B:51:0x0119, B:53:0x011d, B:54:0x0120, B:57:0x0126, B:60:0x012c, B:61:0x012e, B:63:0x0138, B:64:0x0140), top: B:72:0x0075 }] */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x00bf A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:22:0x0075, B:24:0x00b9, B:25:0x00bb, B:27:0x00bf, B:28:0x00c4, B:29:0x00ca, B:31:0x00de, B:33:0x00e4, B:35:0x00e8, B:37:0x00ee, B:38:0x00f0, B:40:0x00f6, B:42:0x00fa, B:44:0x0100, B:45:0x0102, B:48:0x010f, B:50:0x0115, B:51:0x0119, B:53:0x011d, B:54:0x0120, B:57:0x0126, B:60:0x012c, B:61:0x012e, B:63:0x0138, B:64:0x0140), top: B:72:0x0075 }] */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00c4 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:22:0x0075, B:24:0x00b9, B:25:0x00bb, B:27:0x00bf, B:28:0x00c4, B:29:0x00ca, B:31:0x00de, B:33:0x00e4, B:35:0x00e8, B:37:0x00ee, B:38:0x00f0, B:40:0x00f6, B:42:0x00fa, B:44:0x0100, B:45:0x0102, B:48:0x010f, B:50:0x0115, B:51:0x0119, B:53:0x011d, B:54:0x0120, B:57:0x0126, B:60:0x012c, B:61:0x012e, B:63:0x0138, B:64:0x0140), top: B:72:0x0075 }] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00f6 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:22:0x0075, B:24:0x00b9, B:25:0x00bb, B:27:0x00bf, B:28:0x00c4, B:29:0x00ca, B:31:0x00de, B:33:0x00e4, B:35:0x00e8, B:37:0x00ee, B:38:0x00f0, B:40:0x00f6, B:42:0x00fa, B:44:0x0100, B:45:0x0102, B:48:0x010f, B:50:0x0115, B:51:0x0119, B:53:0x011d, B:54:0x0120, B:57:0x0126, B:60:0x012c, B:61:0x012e, B:63:0x0138, B:64:0x0140), top: B:72:0x0075 }] */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0123  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0138 A[Catch: all -> 0x0148, TryCatch #2 {all -> 0x0148, blocks: (B:22:0x0075, B:24:0x00b9, B:25:0x00bb, B:27:0x00bf, B:28:0x00c4, B:29:0x00ca, B:31:0x00de, B:33:0x00e4, B:35:0x00e8, B:37:0x00ee, B:38:0x00f0, B:40:0x00f6, B:42:0x00fa, B:44:0x0100, B:45:0x0102, B:48:0x010f, B:50:0x0115, B:51:0x0119, B:53:0x011d, B:54:0x0120, B:57:0x0126, B:60:0x012c, B:61:0x012e, B:63:0x0138, B:64:0x0140), top: B:72:0x0075 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, int r10, boolean r11, long r12, boolean r14) {
        /*
        // Method dump skipped, instructions count: 333
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.b.a(android.content.Context, java.lang.String, java.lang.String, java.lang.String, int, boolean, long, boolean):void");
    }

    public static void b(Context context, String str) {
        try {
            TbsPVConfig.releaseInstance();
            TbsPVConfig.getInstance(context).clear();
            if (!TextUtils.isEmpty(str)) {
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
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public static String a(Context context) {
        try {
            byte[] byteArray = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures[0].toByteArray();
            if (byteArray != null) {
                MessageDigest instance = MessageDigest.getInstance("SHA-1");
                instance.update(byteArray);
                byte[] digest = instance.digest();
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
        if (!"reset".equals(str) || !"true".equals(str2)) {
            TbsPVConfig.getInstance(context).putData(str, str2);
        } else {
            QbSdk.reset(context);
        }
    }
}
