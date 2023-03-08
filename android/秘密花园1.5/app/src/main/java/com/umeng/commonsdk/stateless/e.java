package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* compiled from: UMSLNetWorkSenderHelper.java */
/* loaded from: classes.dex */
public class e {
    public String a = "10.0.0.172";
    public int b = 80;

    /* renamed from: c  reason: collision with root package name */
    public Context f3237c;

    public e(Context context) {
        this.f3237c = context;
    }

    private void a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f3237c, "sl_domain_p", "");
        if (TextUtils.isEmpty(imprintProperty)) {
            return;
        }
        a.f3195g = DataHelper.assembleStatelessURL(imprintProperty);
    }

    private void b() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f3237c, "sl_domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f3237c, "oversea_sl_domain_p", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            a.f3194f = DataHelper.assembleStatelessURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            a.f3196h = DataHelper.assembleStatelessURL(imprintProperty2);
        }
        a.f3195g = a.f3196h;
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.b.startsWith("460") || com.umeng.commonsdk.statistics.b.b.startsWith("461")) {
            a.f3195g = a.f3194f;
        }
    }

    private boolean c() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        Context context = this.f3237c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f3237c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f3237c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.f3237c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f3237c, th);
        }
        return false;
    }

    public boolean a(byte[] bArr, String str) {
        HttpsURLConnection httpsURLConnection;
        InputStream inputStream;
        boolean z = false;
        if (bArr != null && str != null) {
            if (SdkVersion.SDK_TYPE == 0) {
                a();
            } else {
                a.f3194f = a.f3196h;
                b();
            }
            OutputStream outputStream = null;
            try {
                try {
                    if (c()) {
                        httpsURLConnection = (HttpsURLConnection) new URL(a.f3195g + "/" + str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.a, this.b)));
                    } else {
                        httpsURLConnection = (HttpsURLConnection) new URL(a.f3195g + "/" + str).openConnection();
                    }
                    try {
                        httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        SSLContext sSLContext = SSLContext.getInstance("TLS");
                        sSLContext.init(null, null, new SecureRandom());
                        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                        httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                        httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                        httpsURLConnection.setConnectTimeout(30000);
                        httpsURLConnection.setReadTimeout(30000);
                        httpsURLConnection.setRequestMethod("POST");
                        httpsURLConnection.setDoOutput(true);
                        httpsURLConnection.setDoInput(true);
                        httpsURLConnection.setUseCaches(false);
                        outputStream = httpsURLConnection.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.flush();
                        httpsURLConnection.connect();
                        if (httpsURLConnection.getResponseCode() == 200) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send stateless message success : " + a.f3195g + "/" + str);
                            z = true;
                        }
                        try {
                            outputStream.close();
                        } catch (Exception unused) {
                        }
                        inputStream = httpsURLConnection.getInputStream();
                    } catch (SSLHandshakeException e2) {
                        e = e2;
                        MLog.e("SSLHandshakeException, Failed to send message.", e);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        if (httpsURLConnection != null) {
                            inputStream = httpsURLConnection.getInputStream();
                            inputStream.close();
                            httpsURLConnection.disconnect();
                        }
                        return z;
                    } catch (Throwable th) {
                        th = th;
                        MLog.e("Exception,Failed to send message.", th);
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        if (httpsURLConnection != null) {
                            inputStream = httpsURLConnection.getInputStream();
                            inputStream.close();
                            httpsURLConnection.disconnect();
                        }
                        return z;
                    }
                } catch (SSLHandshakeException e3) {
                    e = e3;
                    httpsURLConnection = null;
                } catch (Throwable th2) {
                    th = th2;
                    httpsURLConnection = null;
                }
                inputStream.close();
                httpsURLConnection.disconnect();
                return z;
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused4) {
                    }
                }
                if (httpsURLConnection != null) {
                    try {
                        httpsURLConnection.getInputStream().close();
                    } catch (IOException unused5) {
                    }
                    httpsURLConnection.disconnect();
                }
                throw th3;
            }
        }
        ULog.i("walle", "[stateless] sendMessage, envelopeByte == null || path == null ");
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b7, code lost:
        if (r10 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b(byte[] r9, java.lang.String r10) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto Lc9
            if (r10 != 0) goto L7
            goto Lc9
        L7:
            r1 = 0
            boolean r2 = r8.c()     // Catch: java.lang.Throwable -> La9
            java.lang.String r3 = "/"
            if (r2 == 0) goto L40
            java.net.Proxy r2 = new java.net.Proxy     // Catch: java.lang.Throwable -> La9
            java.net.Proxy$Type r4 = java.net.Proxy.Type.HTTP     // Catch: java.lang.Throwable -> La9
            java.net.InetSocketAddress r5 = new java.net.InetSocketAddress     // Catch: java.lang.Throwable -> La9
            java.lang.String r6 = r8.a     // Catch: java.lang.Throwable -> La9
            int r7 = r8.b     // Catch: java.lang.Throwable -> La9
            r5.<init>(r6, r7)     // Catch: java.lang.Throwable -> La9
            r2.<init>(r4, r5)     // Catch: java.lang.Throwable -> La9
            java.net.URL r4 = new java.net.URL     // Catch: java.lang.Throwable -> La9
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La9
            r5.<init>()     // Catch: java.lang.Throwable -> La9
            java.lang.String r6 = com.umeng.commonsdk.stateless.a.f3195g     // Catch: java.lang.Throwable -> La9
            r5.append(r6)     // Catch: java.lang.Throwable -> La9
            r5.append(r3)     // Catch: java.lang.Throwable -> La9
            r5.append(r10)     // Catch: java.lang.Throwable -> La9
            java.lang.String r10 = r5.toString()     // Catch: java.lang.Throwable -> La9
            r4.<init>(r10)     // Catch: java.lang.Throwable -> La9
            java.net.URLConnection r10 = r4.openConnection(r2)     // Catch: java.lang.Throwable -> La9
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: java.lang.Throwable -> La9
            goto L5f
        L40:
            java.net.URL r2 = new java.net.URL     // Catch: java.lang.Throwable -> La9
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La9
            r4.<init>()     // Catch: java.lang.Throwable -> La9
            java.lang.String r5 = com.umeng.commonsdk.stateless.a.f3195g     // Catch: java.lang.Throwable -> La9
            r4.append(r5)     // Catch: java.lang.Throwable -> La9
            r4.append(r3)     // Catch: java.lang.Throwable -> La9
            r4.append(r10)     // Catch: java.lang.Throwable -> La9
            java.lang.String r10 = r4.toString()     // Catch: java.lang.Throwable -> La9
            r2.<init>(r10)     // Catch: java.lang.Throwable -> La9
            java.net.URLConnection r10 = r2.openConnection()     // Catch: java.lang.Throwable -> La9
            java.net.HttpURLConnection r10 = (java.net.HttpURLConnection) r10     // Catch: java.lang.Throwable -> La9
        L5f:
            java.lang.String r2 = "X-Umeng-UTC"
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> La7
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> La7
            r10.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La7
            java.lang.String r2 = "Msg-Type"
            java.lang.String r3 = "envelope/json"
            r10.setRequestProperty(r2, r3)     // Catch: java.lang.Throwable -> La7
            r2 = 30000(0x7530, float:4.2039E-41)
            r10.setConnectTimeout(r2)     // Catch: java.lang.Throwable -> La7
            r10.setReadTimeout(r2)     // Catch: java.lang.Throwable -> La7
            java.lang.String r2 = "POST"
            r10.setRequestMethod(r2)     // Catch: java.lang.Throwable -> La7
            r2 = 1
            r10.setDoOutput(r2)     // Catch: java.lang.Throwable -> La7
            r10.setDoInput(r2)     // Catch: java.lang.Throwable -> La7
            r10.setUseCaches(r0)     // Catch: java.lang.Throwable -> La7
            java.io.OutputStream r1 = r10.getOutputStream()     // Catch: java.lang.Throwable -> La7
            r1.write(r9)     // Catch: java.lang.Throwable -> La7
            r1.flush()     // Catch: java.lang.Throwable -> La7
            r10.connect()     // Catch: java.lang.Throwable -> La7
            int r9 = r10.getResponseCode()     // Catch: java.lang.Throwable -> La7
            r3 = 200(0xc8, float:2.8E-43)
            if (r9 != r3) goto La0
            r0 = 1
        La0:
            r1.close()     // Catch: java.lang.Exception -> La3
        La3:
            r10.disconnect()
            goto Lba
        La7:
            r9 = move-exception
            goto Lab
        La9:
            r9 = move-exception
            r10 = r1
        Lab:
            android.content.Context r2 = r8.f3237c     // Catch: java.lang.Throwable -> Lbb
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r2, r9)     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto Lb7
            r1.close()     // Catch: java.lang.Exception -> Lb6
            goto Lb7
        Lb6:
        Lb7:
            if (r10 == 0) goto Lba
            goto La3
        Lba:
            return r0
        Lbb:
            r9 = move-exception
            if (r1 == 0) goto Lc3
            r1.close()     // Catch: java.lang.Exception -> Lc2
            goto Lc3
        Lc2:
        Lc3:
            if (r10 == 0) goto Lc8
            r10.disconnect()
        Lc8:
            throw r9
        Lc9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.e.b(byte[], java.lang.String):boolean");
    }
}
