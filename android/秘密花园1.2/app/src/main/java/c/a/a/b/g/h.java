package c.a.a.b.g;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.drawable.Drawable;
import android.media.MediaFormat;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Trace;
import android.text.Html;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.video.VideoPlayerManager;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.bumptech.glide.load.ImageHeaderParser;
import com.comeback.data.App;
import com.comeback.data.ndk.SignHelper;
import com.comeback.data.ui.cm.bean.CoverBase64;
import com.comeback.data.ui.commom.dialog.TaskAdapter;
import com.comeback.data.ui.lnkl.bean.Video;
import com.comeback.data.ui.lnkl.bean.VideoInfo;
import com.comeback.data.ui.main.bean.ConfigBean;
import com.comeback.data.ui.main.bean.InstallTask;
import com.comeback.secret.garden.R;
import com.tencent.smtt.sdk.WebSettings;
import f.d.a.i;
import f.d.a.j;
import f.d.a.o.n.k;
import f.d.a.o.p.c.v;
import f.d.a.o.p.c.x;
import f.e.a.k.a0;
import f.e.a.k.b0;
import f.e.a.k.y;
import f.e.a.k.z;
import f.i.a.a.l1.g0;
import f.i.a.a.l1.m;
import f.i.a.a.l1.p;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import h.n.a;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.IDN;
import java.net.InetAddress;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Random;
import java.util.UUID;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PlaybackStateCompatApi21.java */
@RequiresApi(21)
/* loaded from: classes.dex */
public class h {
    @Nullable
    public static f.i.a.a.l1.g a;

    public static final <T> int A(Iterable<? extends T> iterable, int i2) {
        if (iterable != null) {
            return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
        }
        h.o.c.g.f("$this$collectionSizeOrDefault");
        throw null;
    }

    public static void A0(String str, ImageView imageView) {
        t0(App.b, str, imageView, R.drawable.default_img_bg_deep, f.d.a.s.e.C());
    }

    public static final Object B(Throwable th) {
        if (th != null) {
            return new h.d(th);
        }
        h.o.c.g.f("exception");
        throw null;
    }

    public static void B0(String str, ImageView imageView) {
        t0(App.b, str, imageView, R.drawable.default_img_bg_deep, null);
    }

    public static IvParameterSpec C(String str) {
        byte[] bArr;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        stringBuffer.append(str);
        while (stringBuffer.length() < 16) {
            stringBuffer.append(f.e.a.e.a("Bw=="));
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bArr = stringBuffer.toString().getBytes(f.e.a.e.a("YjYlSVM="));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        return new IvParameterSpec(bArr);
    }

    public static void C0(String str, ImageView imageView, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.s.e B = i2 != 0 ? f.d.a.s.e.B(new x(i2)) : null;
        i q = f.d.a.c.d(App.b).o(new f.e.a.j.l.h.g.a(str)).q(R.drawable.default_img_bg);
        if (B != null) {
            q.a(B);
        }
        q.G(imageView);
    }

    public static SecretKeySpec D(String str) {
        byte[] bArr;
        if (str == null) {
            str = "";
        }
        StringBuffer stringBuffer = new StringBuffer(16);
        stringBuffer.append(str);
        while (stringBuffer.length() < 16) {
            stringBuffer.append(f.e.a.e.a("Bw=="));
        }
        if (stringBuffer.length() > 16) {
            stringBuffer.setLength(16);
        }
        try {
            bArr = stringBuffer.toString().getBytes(f.e.a.e.a("YjYlSVM="));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            bArr = null;
        }
        return new SecretKeySpec(bArr, f.e.a.e.a("dicw"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [f.e.a.j.n.p.f.a] */
    public static void D0(String str, ImageView imageView, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.s.e B = i2 != 0 ? f.d.a.s.e.B(new x(i2)) : null;
        boolean endsWith = str.endsWith(f.e.a.e.a("GQEGBg=="));
        j d2 = f.d.a.c.d(App.b);
        if (endsWith) {
            str = new f.e.a.j.n.p.f.a(str);
        }
        i q = d2.o(str).q(R.mipmap.km);
        if (B != null) {
            q.a(B);
        }
        q.G(imageView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ec, code lost:
        if (r8 != 4) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] E(java.lang.String r16, int r17) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.E(java.lang.String, int):byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [f.e.a.j.t.e.e.e] */
    public static void E0(String str, ImageView imageView) {
        f.d.a.s.e C = f.d.a.s.e.C();
        boolean z = str.contains(f.e.a.e.a("GRECAg5dTUsH")) || str.contains(f.e.a.e.a("GQcNB0UHQUc="));
        j d2 = f.d.a.c.d(App.b);
        if (z) {
            str = new f.e.a.j.t.e.e.e(str);
        }
        d2.o(str).q(R.mipmap.km).a(C).f(z ? k.b : k.a).G(imageView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ec, code lost:
        if (r6 != 4) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] F(byte[] r15) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 293
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.F(byte[]):byte[]");
    }

    public static void F0(String str, ImageView imageView, int i2) {
        f.d.a.c.d(App.b).o(new f.e.a.j.t.e.e.e(str)).q(R.drawable.default_img_bg_deep).a(f.d.a.s.e.B(new x(i2))).f(k.b).G(imageView);
    }

    public static String G(String str, String str2) {
        try {
            return b(new IvParameterSpec(a(str).getBytes(StandardCharsets.UTF_8)), new SecretKeySpec(f.e.a.e.a("BANTAg9HCwBDVFJXGQsHCg8DAQdbRgsKElRWAx1fAgo=").getBytes(StandardCharsets.UTF_8), f.e.a.e.a("dicw")), str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void G0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.u.e.f.a(str)).q(R.drawable.default_img_bg).G(imageView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d1, code lost:
        return null;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.net.InetAddress H(java.lang.String r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.H(java.lang.String, int, int):java.net.InetAddress");
    }

    public static void H0(m mVar, f.i.a.a.h1.t0.k.i iVar, f.i.a.a.h1.s0.e eVar, f.i.a.a.h1.t0.k.h hVar) throws IOException, InterruptedException {
        p pVar = new p(hVar.b(iVar.b), hVar.a, hVar.b, iVar.h());
        g0 g0Var = new g0(mVar);
        p c2 = pVar.c(0L);
        try {
            f.i.a.a.b1.d dVar = new f.i.a.a.b1.d(g0Var, c2.f5679d, g0Var.b(c2));
            eVar.b(null, -9223372036854775807L, -9223372036854775807L);
            f.i.a.a.b1.g gVar = eVar.a;
            int i2 = 0;
            while (i2 == 0) {
                i2 = gVar.c(dVar, f.i.a.a.h1.s0.k.f4976l);
            }
            v(i2 != 1);
        } finally {
            h0.k(g0Var);
        }
    }

    public static String I(byte[] bArr, byte[] bArr2, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, f.e.a.e.a("dicw"));
            IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
            cipher.init(2, secretKeySpec, ivParameterSpec);
            return new String(cipher.doFinal(Base64.decode(str, 2)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void I0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.h0.m.f.a(str)).q(R.drawable.default_img_bg).f(k.a).p(Integer.MIN_VALUE, Integer.MIN_VALUE).i(f.d.a.o.b.PREFER_RGB_565).G(imageView);
    }

    public static String J(String str, String str2) {
        try {
            return b(new IvParameterSpec(a(str).getBytes(StandardCharsets.UTF_8)), new SecretKeySpec(SignHelper.getFl2(App.b).getBytes(StandardCharsets.UTF_8), f.e.a.e.a("dicw")), str2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void J0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.f0.j.g.a(str)).q(R.drawable.default_img_bg).G(imageView);
    }

    public static InputStream K(byte[] bArr, InputStream inputStream, String str) throws Exception {
        try {
            Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSygxehwjLXc0TzoCD1MLDQM="));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr2, 0, 1024);
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            cipher.init(2, new SecretKeySpec(bArr, f.e.a.e.a("dicw")), new IvParameterSpec(U(str)));
            byte[] doFinal = cipher.doFinal(byteArray);
            if (doFinal != null) {
                return new ByteArrayInputStream(doFinal);
            }
            return new ByteArrayInputStream(byteArray);
        } catch (Exception e2) {
            e2.getMessage();
            f.e.a.k.f.a();
            f.e.a.e.a("aD08");
            f.e.a.e.a("3+/qgtjW0JrfjpPEncXljpPTi9DO");
            return inputStream;
        }
    }

    public static void K0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.h0.m.f.a(str)).q(R.drawable.default_img_bg_deep2).G(imageView);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(3:21|22|(1:24)(7:25|(1:27)|28|4|5|6|(1:8)(4:10|11|12|13)))|3|4|5|6|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
        r7.printStackTrace();
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0065 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String L(java.lang.String r7) {
        /*
            r0 = 0
            r1 = 0
            r2 = 2
            if (r7 == 0) goto L31
            int r3 = r7.length()     // Catch: java.lang.Exception -> L2f
            if (r3 >= r2) goto Lc
            goto L31
        Lc:
            java.lang.String r7 = r7.toLowerCase()     // Catch: java.lang.Exception -> L2f
            int r3 = r7.length()     // Catch: java.lang.Exception -> L2f
            int r3 = r3 / r2
            byte[] r4 = new byte[r3]     // Catch: java.lang.Exception -> L2f
        L17:
            if (r0 >= r3) goto L38
            int r5 = r0 * 2
            int r6 = r5 + 2
            java.lang.String r5 = r7.substring(r5, r6)     // Catch: java.lang.Exception -> L2f
            r6 = 16
            int r5 = java.lang.Integer.parseInt(r5, r6)     // Catch: java.lang.Exception -> L2f
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r5 = (byte) r5     // Catch: java.lang.Exception -> L2f
            r4[r0] = r5     // Catch: java.lang.Exception -> L2f
            int r0 = r0 + 1
            goto L17
        L2f:
            r7 = move-exception
            goto L34
        L31:
            byte[] r4 = new byte[r0]     // Catch: java.lang.Exception -> L2f
            goto L38
        L34:
            r7.printStackTrace()
            r4 = r1
        L38:
            java.lang.String r7 = "RAoGXRhCWlxAXgZRHAIQXw=="
            java.lang.String r7 = f.e.a.e.a(r7)
            java.lang.String r0 = "D1EIF1wFD1YbFQxUSAEPWQ=="
            java.lang.String r0 = f.e.a.e.a(r0)
            javax.crypto.spec.SecretKeySpec r7 = D(r7)     // Catch: java.lang.Exception -> L5e
            java.lang.String r3 = "dicwSygxehwjLXc0TToCD1MLDQM="
            java.lang.String r3 = f.e.a.e.a(r3)     // Catch: java.lang.Exception -> L5e
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)     // Catch: java.lang.Exception -> L5e
            javax.crypto.spec.IvParameterSpec r0 = C(r0)     // Catch: java.lang.Exception -> L5e
            r3.init(r2, r7, r0)     // Catch: java.lang.Exception -> L5e
            byte[] r7 = r3.doFinal(r4)     // Catch: java.lang.Exception -> L5e
            goto L63
        L5e:
            r7 = move-exception
            r7.printStackTrace()
            r7 = r1
        L63:
            if (r7 != 0) goto L66
            return r1
        L66:
            java.lang.String r0 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L73
            java.lang.String r2 = "YjYlSVM="
            java.lang.String r2 = f.e.a.e.a(r2)     // Catch: java.io.UnsupportedEncodingException -> L73
            r0.<init>(r7, r2)     // Catch: java.io.UnsupportedEncodingException -> L73
            r1 = r0
            goto L77
        L73:
            r7 = move-exception
            r7.printStackTrace()
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.L(java.lang.String):java.lang.String");
    }

    public static void L0(String str, ImageView imageView, int i2) {
        t0(App.b, str, imageView, R.drawable.default_img_bg, f.d.a.s.e.B(new x(i2)));
    }

    public static int M(float f2) {
        return (int) ((f2 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static void M0(String str, ImageView imageView, int i2) {
        t0(App.b, str, imageView, R.drawable.default_img_bg_deep, i2 != 0 ? f.d.a.s.e.B(new x(i2)) : null);
    }

    public static void N() {
        if (h0.a >= 18) {
            Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v5, types: [f.e.a.j.l0.h.e.b] */
    public static void N0(String str, ImageView imageView, int i2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.s.e B = i2 != 0 ? f.d.a.s.e.B(new x(i2)) : null;
        boolean contains = str.contains(f.e.a.e.a("GRECAg5dTUsH"));
        j d2 = f.d.a.c.d(App.b);
        if (contains) {
            str = new f.e.a.j.l0.h.e.b(str);
        }
        i q = d2.o(str).q(R.drawable.default_img_bg);
        if (B != null) {
            q.a(B);
        }
        q.G(imageView);
    }

    public static final boolean O(char c2, char c3, boolean z) {
        if (c2 == c3) {
            return true;
        }
        if (z) {
            return Character.toUpperCase(c2) == Character.toUpperCase(c3) || Character.toLowerCase(c2) == Character.toLowerCase(c3);
        }
        return false;
    }

    public static String O0(long j2) {
        return new SimpleDateFormat(f.e.a.e.a("ThsaHUQ+dBwXAg==")).format(Long.valueOf(j2));
    }

    public static void P(Object[] objArr, Object obj, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = objArr.length;
        }
        if (objArr != null) {
            Arrays.fill(objArr, i2, i3, (Object) null);
        } else {
            h.o.c.g.f("$this$fill");
            throw null;
        }
    }

    public static final <T, R> h.r.c<R> P0(h.r.c<? extends T> cVar, h.o.b.b<? super T, ? extends R> bVar) {
        return new h.r.e(cVar, bVar);
    }

    public static Uri Q(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        return (lastPathSegment == null || !h0.p0(lastPathSegment).matches("manifest(\\(.+\\))?")) ? Uri.withAppendedPath(uri, "Manifest") : uri;
    }

    public static void Q0(MediaFormat mediaFormat, String str, int i2) {
        if (i2 != -1) {
            mediaFormat.setInteger(str, i2);
        }
    }

    public static int R(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static String R0(String str) {
        try {
            String bigInteger = new BigInteger(1, MessageDigest.getInstance(f.e.a.e.a("WgZW")).digest(str.getBytes())).toString(16);
            for (int i2 = 0; i2 < 32 - bigInteger.length(); i2++) {
                bigInteger = f.e.a.e.a("Bw==") + bigInteger;
            }
            return bigInteger;
        } catch (NoSuchAlgorithmException unused) {
            throw new RuntimeException(f.e.a.e.a("0dDCgvf60YzqgozNFQ5WjJn1hdf+nIWy"));
        }
    }

    public static String S(Context context) {
        Exception e2;
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e3) {
            e2 = e3;
            str = "";
        }
        if (str != null) {
            try {
            } catch (Exception e4) {
                e2 = e4;
                e2.printStackTrace();
                return str;
            }
            if (str.length() > 0) {
                return str;
            }
        }
        return "";
    }

    public static final int S0(int i2, int i3) {
        int i4 = i2 % i3;
        return i4 >= 0 ? i4 : i4 + i3;
    }

    @Nullable
    public static String T(XmlPullParser xmlPullParser, String str) {
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i2 = 0; i2 < attributeCount; i2++) {
            if (xmlPullParser.getAttributeName(i2).equals(str)) {
                return xmlPullParser.getAttributeValue(i2);
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> List<T> T0(List<? extends T> list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? list : s0(list.get(0));
        }
        return h.k.i.a;
    }

    public static byte[] U(String str) {
        if ((str == null ? str : str.toLowerCase(Locale.US)).startsWith(f.e.a.e.a("Bxo="))) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    public static f.e.a.h.h.a U0(String str) throws IOException {
        String readLine;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        String url = httpURLConnection.getURL().toString();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
        boolean z = true;
        String substring = url.substring(0, url.lastIndexOf(f.e.a.e.a("GA==")) + 1);
        f.e.a.h.h.a aVar = new f.e.a.h.h.a();
        aVar.a = substring;
        while (true) {
            float f2 = 0.0f;
            while (true) {
                readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (readLine.startsWith(f.e.a.e.a("FA=="))) {
                        if (readLine.startsWith(f.e.a.e.a("FCc7MCI9fwk="))) {
                            String substring2 = readLine.substring(8);
                            if (substring2.endsWith(f.e.a.e.a("Gw=="))) {
                                substring2 = substring2.substring(0, substring2.length() - (z ? 1 : 0));
                            }
                            readLine = substring2;
                            f2 = Float.parseFloat(readLine);
                        }
                        if (readLine.startsWith(f.e.a.e.a("FCc7MEYrFHg2Pw=="))) {
                            String replace = readLine.replace(f.e.a.e.a("FCc7MEYrFHg2Pw4qPT4rJHNfIiE4XggBS0o="), "");
                            int i2 = 5;
                            if (replace.contains(f.e.a.e.a("Gw=="))) {
                                String[] split = replace.split(f.e.a.e.a("Gw=="));
                                int length = split.length;
                                int i3 = 0;
                                while (i3 < length) {
                                    String str2 = split[i3];
                                    if (str2.startsWith(f.e.a.e.a("YjAqWQ=="))) {
                                        String substring3 = str2.substring(i2, str2.length() - (z ? 1 : 0));
                                        if (substring3.startsWith(f.e.a.e.a("XxYXFA=="))) {
                                            aVar.f3881d = substring3;
                                        } else if (substring3.contains(f.e.a.e.a("GA=="))) {
                                            aVar.f3881d = url.substring(0, url.indexOf(f.e.a.e.a("GA=="), 9)) + substring3;
                                        } else {
                                            aVar.f3881d = f.b.a.a.a.f(substring, substring3);
                                        }
                                    }
                                    if (str2.startsWith(f.e.a.e.a("fjRe"))) {
                                        aVar.f3882e = str2.substring(3);
                                    }
                                    i3++;
                                    z = true;
                                    i2 = 5;
                                }
                            } else {
                                String substring4 = replace.substring(5, replace.length() - 1);
                                if (substring4.startsWith(f.e.a.e.a("XxYXFA=="))) {
                                    aVar.f3881d = substring4;
                                } else if (substring4.contains(f.e.a.e.a("GA=="))) {
                                    aVar.f3881d = url.substring(0, url.indexOf(f.e.a.e.a("GA=="), 9)) + substring4;
                                } else {
                                    aVar.f3881d = f.b.a.a.a.f(substring, substring4);
                                }
                                aVar.f3882e = "";
                                z = true;
                            }
                            aVar.f3880c = z;
                        }
                        z = true;
                    } else if (readLine.endsWith(f.e.a.e.a("WlEWXA=="))) {
                        if (readLine.contains(f.e.a.e.a("GA=="))) {
                            return U0(url.substring(0, url.indexOf(f.e.a.e.a("GA=="), 9) + 1) + readLine);
                        }
                        return U0(substring + readLine);
                    } else {
                        z = true;
                        z = true;
                        if (!TextUtils.isEmpty(readLine.trim())) {
                            break;
                        }
                    }
                } else {
                    bufferedReader.close();
                    return aVar;
                }
            }
            aVar.a(new f.e.a.h.h.b(readLine, f2));
        }
    }

    public static final <T> Class<T> V(h.q.b<T> bVar) {
        if (bVar != null) {
            Class<T> cls = (Class<T>) ((h.o.c.c) bVar).a();
            if (cls.isPrimitive()) {
                String name = cls.getName();
                switch (name.hashCode()) {
                    case -1325958191:
                        return name.equals("double") ? Double.class : cls;
                    case 104431:
                        return name.equals("int") ? Integer.class : cls;
                    case 3039496:
                        return name.equals("byte") ? Byte.class : cls;
                    case 3052374:
                        return name.equals("char") ? Character.class : cls;
                    case 3327612:
                        return name.equals("long") ? Long.class : cls;
                    case 3625364:
                        return name.equals("void") ? Void.class : cls;
                    case 64711720:
                        return name.equals("boolean") ? Boolean.class : cls;
                    case 97526364:
                        return name.equals("float") ? Float.class : cls;
                    case 109413500:
                        return name.equals("short") ? Short.class : cls;
                    default:
                        return cls;
                }
            }
            return cls;
        }
        h.o.c.g.f("$this$javaObjectType");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0226, code lost:
        if (r10.contains(f.e.a.e.a("GRYQ")) == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0232, code lost:
        if (r10.contains(f.e.a.e.a("GA==")) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0234, code lost:
        r7 = r10.substring(r10.lastIndexOf(f.e.a.e.a("GA==")) + 1);
        r12 = new java.lang.StringBuilder();
        r12.append(f.e.a.e.a("QwcOFA=="));
        r12.append(java.io.File.separator);
        r12.append(r19);
        r7 = f.b.a.a.a.l(r12, java.io.File.separator, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x025d, code lost:
        r7 = new java.lang.StringBuilder();
        r7.append(f.e.a.e.a("QwcOFA=="));
        r7.append(java.io.File.separator);
        r7.append(r19);
        r7 = f.b.a.a.a.l(r7, java.io.File.separator, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0281, code lost:
        if (r7.contains(f.e.a.e.a("CA==")) == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0283, code lost:
        r7 = r7.substring(0, r7.indexOf(f.e.a.e.a("CA==")));
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0290, code lost:
        r4.write(r7);
        r4.write(java.lang.System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0160 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f.e.a.h.h.a V0(java.lang.String r17, java.lang.String r18, java.lang.String r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 693
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.V0(java.lang.String, java.lang.String, java.lang.String):f.e.a.h.h.a");
    }

    public static int W(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull f.d.a.o.n.b0.b bVar) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new v(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                int b = list.get(i2).b(inputStream, bVar);
                if (b != -1) {
                    return b;
                }
                inputStream.reset();
            } finally {
                inputStream.reset();
            }
        }
        return -1;
    }

    public static VideoInfo W0(String str) {
        VideoInfo videoInfo = new VideoInfo();
        k.a.e.h hVar = j.b.u(str).I(f.e.a.e.a("RwMEAQgcVw==")).get(0);
        k.a.g.c J = hVar.J(f.e.a.e.a("Xg8E"));
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<k.a.e.h> it = J.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().b(f.e.a.e.a("RBAA")));
        }
        videoInfo.setImgs(arrayList);
        String O = hVar.O();
        videoInfo.setTorrentUrl(O.substring(O.indexOf(f.e.a.e.a("XxYXFA==")), O.indexOf(f.e.a.e.a("Qw0RFg4dTQ==")) + 7));
        return videoInfo;
    }

    @NonNull
    public static ImageHeaderParser.ImageType X(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull f.d.a.o.n.b0.b bVar) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new v(inputStream, bVar);
        }
        inputStream.mark(5242880);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            try {
                ImageHeaderParser.ImageType c2 = list.get(i2).c(inputStream);
                if (c2 != ImageHeaderParser.ImageType.UNKNOWN) {
                    return c2;
                }
                inputStream.reset();
            } finally {
                inputStream.reset();
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static ArrayList<Video> X0(String str) {
        ArrayList<Video> arrayList = new ArrayList<>();
        Iterator<k.a.e.h> it = j.b.u(str).J(f.e.a.e.a("Wws=")).iterator();
        while (it.hasNext()) {
            k.a.e.h next = it.next();
            Video video = new Video();
            video.setUrl(next.J(f.e.a.e.a("Vg==")).get(0).b(f.e.a.e.a("XxAGAg==")));
            video.setName(next.J(f.e.a.e.a("Xg8E")).get(0).b(f.e.a.e.a("QwsXCA4=")));
            video.setImg(next.J(f.e.a.e.a("Xg8E")).get(0).b(f.e.a.e.a("RBAA")));
            video.setDate(next.I(f.e.a.e.a("QBI8EAIeXA==")).get(0).O());
            arrayList.add(video);
        }
        return arrayList;
    }

    public static int[] Y(String str) {
        int i2;
        int[] iArr = new int[4];
        if (TextUtils.isEmpty(str)) {
            iArr[0] = -1;
            return iArr;
        }
        int length = str.length();
        int indexOf = str.indexOf(35);
        if (indexOf != -1) {
            length = indexOf;
        }
        int indexOf2 = str.indexOf(63);
        if (indexOf2 == -1 || indexOf2 > length) {
            indexOf2 = length;
        }
        int indexOf3 = str.indexOf(47);
        if (indexOf3 == -1 || indexOf3 > indexOf2) {
            indexOf3 = indexOf2;
        }
        int indexOf4 = str.indexOf(58);
        if (indexOf4 > indexOf3) {
            indexOf4 = -1;
        }
        int i3 = indexOf4 + 2;
        if (i3 < indexOf2 && str.charAt(indexOf4 + 1) == '/' && str.charAt(i3) == '/') {
            i2 = str.indexOf(47, indexOf4 + 3);
            if (i2 == -1 || i2 > indexOf2) {
                i2 = indexOf2;
            }
        } else {
            i2 = indexOf4 + 1;
        }
        iArr[0] = indexOf4;
        iArr[1] = i2;
        iArr[2] = indexOf2;
        iArr[3] = length;
        return iArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.UUID Y0(byte[] r9) {
        /*
            f.i.a.a.m1.u r0 = new f.i.a.a.m1.u
            r0.<init>(r9)
            int r9 = r0.f5776c
            r1 = 32
            r2 = 0
            if (r9 >= r1) goto Le
        Lc:
            r9 = r2
            goto L6a
        Le:
            r9 = 0
            r0.A(r9)
            int r1 = r0.d()
            int r3 = r0.a()
            int r3 = r3 + 4
            if (r1 == r3) goto L1f
            goto Lc
        L1f:
            int r1 = r0.d()
            int r3 = f.i.a.a.b1.u.a.i0
            if (r1 == r3) goto L28
            goto Lc
        L28:
            int r1 = r0.d()
            int r1 = r1 >> 24
            r1 = r1 & 255(0xff, float:3.57E-43)
            r3 = 1
            if (r1 <= r3) goto L34
            goto Lc
        L34:
            java.util.UUID r4 = new java.util.UUID
            long r5 = r0.j()
            long r7 = r0.j()
            r4.<init>(r5, r7)
            if (r1 != r3) goto L4c
            int r3 = r0.s()
            int r3 = r3 * 16
            r0.B(r3)
        L4c:
            int r3 = r0.s()
            int r5 = r0.a()
            if (r3 == r5) goto L57
            goto Lc
        L57:
            byte[] r5 = new byte[r3]
            byte[] r6 = r0.a
            int r7 = r0.b
            java.lang.System.arraycopy(r6, r7, r5, r9, r3)
            int r9 = r0.b
            int r9 = r9 + r3
            r0.b = r9
            f.i.a.a.b1.u.h r9 = new f.i.a.a.b1.u.h
            r9.<init>(r4, r1, r5)
        L6a:
            if (r9 != 0) goto L6d
            return r2
        L6d:
            java.util.UUID r9 = r9.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.Y0(byte[]):java.util.UUID");
    }

    public static String Z() {
        System.getProperty(f.e.a.e.a("XxYXFEUSXlYdEg=="));
        String str = null;
        try {
            str = WebSettings.getDefaultUserAgent(App.b);
            if (str == null) {
                str = System.getProperty(f.e.a.e.a("XxYXFEUSXlYdEg=="));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        f.e.a.e.a("aD08Ow==");
        f.e.a.k.f.b();
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f.i.a.a.b1.y.b Z0(f.i.a.a.b1.d r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r0 = r19
            r1 = 0
            if (r0 == 0) goto Ld2
            f.i.a.a.m1.u r2 = new f.i.a.a.m1.u
            r3 = 16
            r2.<init>(r3)
            f.i.a.a.b1.y.c r4 = f.i.a.a.b1.y.c.a(r0, r2)
            int r4 = r4.a
            int r5 = f.i.a.a.w0.f0.a
            if (r4 == r5) goto L17
            return r1
        L17:
            byte[] r4 = r2.a
            r5 = 0
            r6 = 4
            r0.d(r4, r5, r6, r5)
            r2.A(r5)
            int r4 = r2.d()
            int r7 = f.i.a.a.w0.f0.b
            if (r4 == r7) goto L2a
            return r1
        L2a:
            f.i.a.a.b1.y.c r4 = f.i.a.a.b1.y.c.a(r0, r2)
        L2e:
            int r7 = r4.a
            int r8 = f.i.a.a.w0.f0.f5932c
            if (r7 == r8) goto L3f
            long r7 = r4.b
            int r4 = (int) r7
            r0.a(r4, r5)
            f.i.a.a.b1.y.c r4 = f.i.a.a.b1.y.c.a(r0, r2)
            goto L2e
        L3f:
            long r7 = r4.b
            r9 = 16
            r11 = 1
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 < 0) goto L4a
            r7 = 1
            goto L4b
        L4a:
            r7 = 0
        L4b:
            v(r7)
            byte[] r7 = r2.a
            r0.d(r7, r5, r3, r5)
            r2.A(r5)
            int r7 = r2.i()
            int r13 = r2.i()
            int r14 = r2.h()
            int r15 = r2.h()
            int r8 = r2.i()
            int r2 = r2.i()
            int r9 = r13 * r2
            int r9 = r9 / 8
            if (r8 != r9) goto Lb3
            if (r7 == r11) goto L98
            r9 = 3
            if (r7 == r9) goto L91
            r6 = 65534(0xfffe, float:9.1833E-41)
            if (r7 == r6) goto L98
            r6 = 6
            if (r7 == r6) goto L8c
            r6 = 7
            if (r7 == r6) goto L87
            r18 = 0
            goto L9e
        L87:
            r6 = 268435456(0x10000000, float:2.5243549E-29)
            r18 = 268435456(0x10000000, float:2.5243549E-29)
            goto L9e
        L8c:
            r6 = 536870912(0x20000000, float:1.0842022E-19)
            r18 = 536870912(0x20000000, float:1.0842022E-19)
            goto L9e
        L91:
            r7 = 32
            if (r2 != r7) goto L96
            goto L9c
        L96:
            r6 = 0
            goto L9c
        L98:
            int r6 = f.i.a.a.m1.h0.G(r2)
        L9c:
            r18 = r6
        L9e:
            if (r18 != 0) goto La1
            return r1
        La1:
            long r6 = r4.b
            int r1 = (int) r6
            int r1 = r1 - r3
            r0.a(r1, r5)
            f.i.a.a.b1.y.b r0 = new f.i.a.a.b1.y.b
            r12 = r0
            r16 = r8
            r17 = r2
            r12.<init>(r13, r14, r15, r16, r17, r18)
            return r0
        Lb3:
            f.i.a.a.h0 r0 = new f.i.a.a.h0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected block alignment: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r2 = "; got: "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        Ld2:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.Z0(f.i.a.a.b1.d):f.i.a.a.b1.y.b");
    }

    public static String a(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(f.e.a.e.a("eiZW"));
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = f.e.a.e.a("Bw==") + hexString;
                }
                sb.append(hexString);
            }
            str2 = sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            str2 = "";
        }
        return str2.substring(8, 24);
    }

    public static int a0(SQLiteDatabase sQLiteDatabase, int i2, String str) throws f.i.a.a.x0.a {
        try {
            if (p1(sQLiteDatabase, "ExoPlayerVersions")) {
                Cursor query = sQLiteDatabase.query("ExoPlayerVersions", new String[]{"version"}, "feature = ? AND instance_uid = ?", new String[]{Integer.toString(i2), str}, null, null, null);
                if (query.getCount() == 0) {
                    query.close();
                    return -1;
                }
                query.moveToNext();
                int i3 = query.getInt(0);
                query.close();
                return i3;
            }
            return -1;
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public static String a1() {
        String[] strArr = {f.e.a.e.a("Bw=="), f.e.a.e.a("Bg=="), f.e.a.e.a("BQ=="), f.e.a.e.a("BA=="), f.e.a.e.a("Aw=="), f.e.a.e.a("Ag=="), f.e.a.e.a("AQ=="), f.e.a.e.a("AA=="), f.e.a.e.a("Dw=="), f.e.a.e.a("Dg=="), f.e.a.e.a("dg=="), f.e.a.e.a("dQ=="), f.e.a.e.a("dA=="), f.e.a.e.a("cw=="), f.e.a.e.a("cg=="), f.e.a.e.a("cQ==")};
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        int i2 = 32;
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                sb.append(strArr[random.nextInt(16)]);
                i2 = i3;
            } else {
                return sb.toString();
            }
        }
    }

    public static String b(IvParameterSpec ivParameterSpec, SecretKeySpec secretKeySpec, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        Cipher cipher = Cipher.getInstance(f.e.a.e.a("dicwSygxehwjLXc0TToCD1MLDQM="));
        cipher.init(2, secretKeySpec, ivParameterSpec);
        return new String(cipher.doFinal(Base64.decode(str, 2)));
    }

    public static void b0(View view, float f2, long j2) {
        int left = view.getLeft();
        int top = view.getTop();
        int width = view.getWidth();
        int height = view.getHeight();
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, (view.getRight() + left) / 2, (view.getBottom() + top) / 2, ((int) Math.sqrt((height * height) + (width * width))) + 1, f2);
        createCircularReveal.setDuration(j2);
        createCircularReveal.addListener(new f.e.a.k.k(view));
        createCircularReveal.start();
    }

    public static long b1(u uVar, int i2, int i3) {
        byte[] bArr;
        uVar.A(i2);
        if (uVar.a() < 5) {
            return -9223372036854775807L;
        }
        int d2 = uVar.d();
        if ((8388608 & d2) == 0 && ((2096896 & d2) >> 8) == i3) {
            if (((d2 & 32) != 0) && uVar.p() >= 7 && uVar.a() >= 7) {
                if ((uVar.p() & 16) == 16) {
                    System.arraycopy(uVar.a, uVar.b, new byte[6], 0, 6);
                    uVar.b += 6;
                    return ((bArr[0] & 255) << 25) | ((bArr[1] & 255) << 17) | ((bArr[2] & 255) << 9) | ((bArr[3] & 255) << 1) | ((bArr[4] & 255) >> 7);
                }
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    public static void c(FileWriter fileWriter, String str) throws IOException {
        fileWriter.write(f.e.a.e.a("FCc7MCZAbA=="));
        fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        fileWriter.write(f.e.a.e.a("FCc7MEYrFGU2NGcuNyRZWA=="));
        fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        fileWriter.write(f.e.a.e.a("FCc7MEYrFGcyNHMiLC42OXY2KislSQgE"));
        fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        fileWriter.write(f.e.a.e.a("FCc7MEYrFH42In0mVTkmOmInLScuSQk="));
        fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        for (int i2 = 0; i2 < 1000; i2++) {
            String a2 = f.e.a.e.a("WgcHDQosCR0HFQ==");
            String replace = str.replace(a2, f.e.a.e.a("WgcHDQos") + i2 + f.e.a.e.a("GRYQ"));
            fileWriter.write(f.e.a.e.a("FCc7MCI9fwlCUBpRQFlP"));
            fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
            fileWriter.write(replace);
            fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        }
        fileWriter.write(f.e.a.e.a("FCc7MEYrFHY9InguKz4="));
        fileWriter.write(System.getProperty(f.e.a.e.a("WwsNAUUAXEMSFFUTFxg=")));
        fileWriter.close();
    }

    @SuppressLint({"WrongConstant"})
    public static void c0(Activity activity) {
        View peekDecorView = activity.getWindow().peekDecorView();
        if (peekDecorView != null) {
            ((InputMethodManager) activity.getSystemService(f.e.a.e.a("XgwTER8sVFYHDlsD"))).hideSoftInputFromWindow(peekDecorView.getWindowToken(), 0);
        }
    }

    public static String c1(StringBuilder sb, int i2, int i3) {
        int i4;
        int i5;
        if (i2 >= i3) {
            return sb.toString();
        }
        if (sb.charAt(i2) == '/') {
            i2++;
        }
        int i6 = i2;
        int i7 = i6;
        while (i6 <= i3) {
            if (i6 == i3) {
                i4 = i6;
            } else if (sb.charAt(i6) == '/') {
                i4 = i6 + 1;
            } else {
                i6++;
            }
            int i8 = i7 + 1;
            if (i6 == i8 && sb.charAt(i7) == '.') {
                sb.delete(i7, i4);
                i3 -= i4 - i7;
            } else {
                if (i6 == i7 + 2 && sb.charAt(i7) == '.' && sb.charAt(i8) == '.') {
                    i5 = sb.lastIndexOf("/", i7 - 2) + 1;
                    int i9 = i5 > i2 ? i5 : i2;
                    sb.delete(i9, i4);
                    i3 -= i4 - i9;
                } else {
                    i5 = i6 + 1;
                }
                i7 = i5;
            }
            i6 = i7;
        }
        return sb.toString();
    }

    public static final <T> boolean d(Collection<? super T> collection, Iterable<? extends T> iterable) {
        if (collection == null) {
            h.o.c.g.f("$this$addAll");
            throw null;
        } else if (iterable != null) {
            if (iterable instanceof Collection) {
                return collection.addAll((Collection) iterable);
            }
            boolean z = false;
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                if (collection.add((T) it.next())) {
                    z = true;
                }
            }
            return z;
        } else {
            h.o.c.g.f("elements");
            throw null;
        }
    }

    public static final String d0() {
        return f.e.a.e.a("BFtIVQE9bgQeUnYrOjghEQAaJxwjMgQO");
    }

    public static String d1(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int[] Y = Y(str2);
        if (Y[0] != -1) {
            sb.append(str2);
            c1(sb, Y[1], Y[2]);
            return sb.toString();
        }
        int[] Y2 = Y(str);
        if (Y[3] == 0) {
            sb.append((CharSequence) str, 0, Y2[3]);
            sb.append(str2);
            return sb.toString();
        } else if (Y[2] == 0) {
            sb.append((CharSequence) str, 0, Y2[2]);
            sb.append(str2);
            return sb.toString();
        } else if (Y[1] != 0) {
            int i2 = Y2[0] + 1;
            sb.append((CharSequence) str, 0, i2);
            sb.append(str2);
            return c1(sb, Y[1] + i2, i2 + Y[2]);
        } else if (str2.charAt(Y[1]) == '/') {
            sb.append((CharSequence) str, 0, Y2[1]);
            sb.append(str2);
            return c1(sb, Y2[1], Y2[1] + Y[2]);
        } else if (Y2[0] + 2 < Y2[1] && Y2[1] == Y2[2]) {
            sb.append((CharSequence) str, 0, Y2[1]);
            sb.append('/');
            sb.append(str2);
            return c1(sb, Y2[1], Y2[1] + Y[2] + 1);
        } else {
            int lastIndexOf = str.lastIndexOf(47, Y2[2] - 1);
            int i3 = lastIndexOf == -1 ? Y2[1] : lastIndexOf + 1;
            sb.append((CharSequence) str, 0, i3);
            sb.append(str2);
            return c1(sb, Y2[1], i3 + Y[2]);
        }
    }

    public static final void e(int i2, String str, Throwable th) {
        int min;
        int i3 = i2 != 5 ? 3 : 5;
        if (th != null) {
            StringBuilder r = f.b.a.a.a.r(str, com.umeng.commonsdk.internal.utils.g.a);
            r.append(Log.getStackTraceString(th));
            str = r.toString();
        }
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            int i5 = h.s.d.i(str, '\n', i4, false, 4);
            if (i5 == -1) {
                i5 = length;
            }
            while (true) {
                min = Math.min(i5, i4 + 4000);
                String substring = str.substring(i4, min);
                h.o.c.g.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                Log.println(i3, "OkHttp", substring);
                if (min >= i5) {
                    break;
                }
                i4 = min;
            }
            i4 = min + 1;
        }
    }

    public static final String e0() {
        return f.e.a.e.a("WQ8iFCUEX1VKJQFRQQYNMkcbWh4CRA94NCEBAg4mBTkcD0hWDD5QSzgcW1o=");
    }

    public static Uri e1(String str, String str2) {
        return Uri.parse(d1(str, str2));
    }

    public static final <T> void f(Appendable appendable, T t, h.o.b.b<? super T, ? extends CharSequence> bVar) {
        if (bVar != null) {
            appendable.append(bVar.d(t));
            return;
        }
        if (t != null ? t instanceof CharSequence : true) {
            appendable.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendable.append(((Character) t).charValue());
        } else {
            appendable.append(String.valueOf(t));
        }
    }

    public static int f0(int i2) {
        int i3 = 0;
        while (i2 > 0) {
            i3++;
            i2 >>>= 1;
        }
        return i3;
    }

    public static String f1(int i2) {
        Object obj;
        Object obj2;
        Object obj3;
        int i3 = i2 % 60;
        int i4 = i2 / 60;
        int i5 = i4 % 60;
        int i6 = i4 / 60;
        StringBuilder sb = new StringBuilder();
        if (i6 != 0) {
            if (i6 > 9) {
                obj3 = Integer.valueOf(i6);
            } else {
                obj3 = f.e.a.e.a("Bw==") + i6;
            }
            sb.append(obj3);
            sb.append(f.e.a.e.a("DQ=="));
        }
        if (i5 != 0) {
            if (i5 > 9) {
                obj2 = Integer.valueOf(i5);
            } else {
                obj2 = f.e.a.e.a("Bw==") + i5;
            }
            sb.append(obj2);
            sb.append(f.e.a.e.a("DQ=="));
        } else {
            sb.append(f.e.a.e.a("B1JZ"));
        }
        if (i3 > 9) {
            obj = Integer.valueOf(i3);
        } else {
            obj = f.e.a.e.a("Bw==") + i3;
        }
        sb.append(obj);
        return sb.toString();
    }

    public static void g(String str) {
        if (h0.a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static String g0(int i2) {
        return new SimpleDateFormat(f.e.a.e.a("ThsaHUQ+dBwXAg==")).format(Long.valueOf(i2 * 1000));
    }

    public static void g1(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            mediaFormat.setByteBuffer(f.b.a.a.a.J("csd-", i2), ByteBuffer.wrap(list.get(i2)));
        }
    }

    public static ExoUserPlayer h(Activity activity, VideoPlayerView videoPlayerView) {
        i1(activity, videoPlayerView);
        return new VideoPlayerManager.Builder(1, videoPlayerView).setDataSource(new f.e.a.l.b(activity)).setPlayerGestureOnTouch(true).addOnWindowListener(new b0()).addVideoInfoListener(new a0()).setOnCoverMapImage(new f.e.a.k.v()).create();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0024, code lost:
        if (r2 != null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> h.m.a<T> h0(h.m.a<? super T> r2) {
        /*
            r0 = 0
            if (r2 == 0) goto L2b
            boolean r1 = r2 instanceof h.m.e.a.c
            if (r1 != 0) goto L8
            goto L9
        L8:
            r0 = r2
        L9:
            h.m.e.a.c r0 = (h.m.e.a.c) r0
            if (r0 == 0) goto L2a
            h.m.a<java.lang.Object> r2 = r0.b
            if (r2 == 0) goto L12
            goto L2a
        L12:
            h.m.c r2 = r0.getContext()
            h.m.b$a r1 = h.m.b.a
            h.m.c$a r2 = r2.c(r1)
            h.m.b r2 = (h.m.b) r2
            if (r2 == 0) goto L27
            h.m.a r2 = r2.b(r0)
            if (r2 == 0) goto L27
            goto L28
        L27:
            r2 = r0
        L28:
            r0.b = r2
        L2a:
            return r2
        L2b:
            java.lang.String r2 = "$this$intercepted"
            h.o.c.g.f(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.h0(h.m.a):h.m.a");
    }

    public static void h1(VideoPlayerView videoPlayerView, String str) {
        View findViewById = videoPlayerView.getPlaybackControlView().findViewById(R.id.tv_collect);
        if (findViewById != null) {
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new z(videoPlayerView, str));
        }
    }

    public static byte[] i(UUID uuid, @Nullable byte[] bArr) {
        return j(uuid, null, bArr);
    }

    public static boolean i0(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static void i1(Activity activity, VideoPlayerView videoPlayerView) {
        View findViewById = videoPlayerView.getPlaybackControlView().findViewById(R.id.tv_rotation);
        if (findViewById != null) {
            findViewById.setOnClickListener(new y(activity, videoPlayerView));
        }
    }

    public static byte[] j(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(f.i.a.a.b1.u.a.i0);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static boolean j0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return (xmlPullParser.getEventType() == 3) && xmlPullParser.getName().equals(str);
    }

    public static void j1(TextView textView, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            textView.setText(Html.fromHtml(str, 0));
        } else {
            textView.setText(Html.fromHtml(str));
        }
    }

    public static String k(List<String> list) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i2 = calendar.get(6);
        int i3 = calendar.get(1);
        int i4 = i2 / 7;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            for (String str : list) {
                StringBuilder o = f.b.a.a.a.o(str);
                o.append(f.e.a.e.a("RA=="));
                o.append(String.valueOf(i3));
                int i5 = i4 * 2;
                o.append(i5);
                arrayList.add(o.toString());
                arrayList.add(str + f.e.a.e.a("RA==") + String.valueOf(i3) + (i5 + 1));
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(f.e.a.e.a("XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFEA=="));
            sb.append(String.valueOf(i3));
            int i6 = i4 * 2;
            sb.append(i6);
            arrayList.add(sb.toString());
            arrayList.add(f.e.a.e.a("XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFEA==") + String.valueOf(i3) + (i6 + 1));
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f.e.a.e.a("3+LigeTL36/Jg7zhnNDIjJHthuzCm4Scl92CiMTmh9O6h8bZjOeR187G0u7rjOv61OLhbg=="));
        int i7 = 0;
        while (i7 < arrayList.size()) {
            stringBuffer.append(f.e.a.e.a("09rojNbO3K/Dg6nn"));
            int i8 = i7 + 1;
            stringBuffer.append(i8);
            stringBuffer.append(f.e.a.e.a("DQ=="));
            stringBuffer.append((String) arrayList.get(i7));
            stringBuffer.append(com.umeng.commonsdk.internal.utils.g.a);
            i7 = i8;
        }
        return stringBuffer.toString();
    }

    public static boolean k0(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static void k1(TextView textView, String str) {
        textView.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        textView.setText(str);
    }

    public static ArrayList<String> l() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i2 = calendar.get(6);
        int i3 = calendar.get(1);
        ArrayList<String> arrayList = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        sb.append(f.e.a.e.a("XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFBw=="));
        sb.append(String.valueOf(i3));
        int i4 = (i2 / 7) * 2;
        sb.append(i4);
        arrayList.add(sb.toString());
        arrayList.add(f.e.a.e.a("XxYXFBhJFhwLH05RQVxaRVsDDR4EBlAdEAlZSAtFBw==") + String.valueOf(i3) + (i4 + 1));
        return arrayList;
    }

    public static boolean l0(Context context) {
        if (context != null) {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(f.e.a.e.a("VA0NCg4QTVoFD0Ae"));
            for (Network network : connectivityManager.getAllNetworks()) {
                if (connectivityManager.getNetworkInfo(network).getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void l1(SQLiteDatabase sQLiteDatabase, int i2, String str, int i3) throws f.i.a.a.x0.a {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ExoPlayerVersions (feature INTEGER NOT NULL,instance_uid TEXT NOT NULL,version INTEGER NOT NULL,PRIMARY KEY (feature, instance_uid))");
            ContentValues contentValues = new ContentValues();
            contentValues.put("feature", Integer.valueOf(i2));
            contentValues.put("instance_uid", str);
            contentValues.put("version", Integer.valueOf(i3));
            sQLiteDatabase.replaceOrThrow("ExoPlayerVersions", null, contentValues);
        } catch (SQLException e2) {
            throw new f.i.a.a.x0.a(e2);
        }
    }

    public static void m(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean m0() {
        return f.e.a.e.a("ZAcAFg4HflIBAlEJ").equals(f.e.a.e.a("ZAcbEQMGWw=="));
    }

    public static void m1(View view, float f2, long j2) {
        int left = view.getLeft();
        int top = view.getTop();
        int width = view.getWidth();
        int height = view.getHeight();
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, (view.getRight() + left) / 2, (view.getBottom() + top) / 2, f2, ((int) Math.sqrt((height * height) + (width * width))) + 1);
        view.setVisibility(0);
        createCircularReveal.setDuration(j2);
        createCircularReveal.start();
    }

    public static void n(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static boolean n0(XmlPullParser xmlPullParser) throws XmlPullParserException {
        return xmlPullParser.getEventType() == 2;
    }

    public static void n1(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Toast.makeText(App.b, str, 0).show();
    }

    public static void o(boolean z, @NonNull String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static boolean o0(XmlPullParser xmlPullParser, String str) throws XmlPullParserException {
        return n0(xmlPullParser) && xmlPullParser.getName().equals(str);
    }

    public static final char o1(char[] cArr) {
        int length = cArr.length;
        if (length != 0) {
            if (length == 1) {
                return cArr[0];
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static void p(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static boolean p0(int i2, int i3) {
        return i2 != Integer.MIN_VALUE && i3 != Integer.MIN_VALUE && i2 <= 512 && i3 <= 384;
    }

    @VisibleForTesting
    public static boolean p1(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    public static int q(int i2, int i3, int i4) {
        if (i2 < i3 || i2 >= i4) {
            throw new IndexOutOfBoundsException();
        }
        return i2;
    }

    public static final boolean q0(char c2) {
        return Character.isWhitespace(c2) || Character.isSpaceChar(c2);
    }

    public static final void q1() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static boolean r(String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = App.b.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static String r0(h.r.c cVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i2, CharSequence charSequence4, h.o.b.b bVar, int i3) {
        if ((i3 & 1) != 0) {
            charSequence = ", ";
        }
        String str = (i3 & 2) != 0 ? "" : null;
        String str2 = (i3 & 4) == 0 ? null : "";
        if ((i3 & 8) != 0) {
            i2 = -1;
        }
        String str3 = (i3 & 16) != 0 ? "..." : null;
        int i4 = i3 & 32;
        if (cVar == null) {
            h.o.c.g.f("$this$joinToString");
            throw null;
        } else if (charSequence == null) {
            h.o.c.g.f("separator");
            throw null;
        } else if (str == null) {
            h.o.c.g.f("prefix");
            throw null;
        } else if (str2 == null) {
            h.o.c.g.f("postfix");
            throw null;
        } else if (str3 != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            int i5 = 0;
            for (Object obj : cVar) {
                i5++;
                if (i5 > 1) {
                    sb.append(charSequence);
                }
                if (i2 >= 0 && i5 > i2) {
                    break;
                }
                f(sb, obj, null);
            }
            if (i2 >= 0 && i5 > i2) {
                sb.append((CharSequence) str3);
            }
            sb.append((CharSequence) str2);
            String sb2 = sb.toString();
            h.o.c.g.b(sb2, "joinTo(StringBuilder(), …ed, transform).toString()");
            return sb2;
        } else {
            h.o.c.g.f("truncated");
            throw null;
        }
    }

    public static final String r1(String str) {
        InetAddress H;
        int i2 = 0;
        int i3 = -1;
        if (h.s.d.b(str, ":", false, 2)) {
            if (h.s.d.w(str, "[", false, 2) && h.s.d.c(str, "]", false, 2)) {
                H = H(str, 1, str.length() - 1);
            } else {
                H = H(str, 0, str.length());
            }
            if (H != null) {
                byte[] address = H.getAddress();
                if (address.length == 16) {
                    h.o.c.g.b(address, "address");
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < address.length) {
                        int i6 = i4;
                        while (i6 < 16 && address[i6] == 0 && address[i6 + 1] == 0) {
                            i6 += 2;
                        }
                        int i7 = i6 - i4;
                        if (i7 > i5 && i7 >= 4) {
                            i3 = i4;
                            i5 = i7;
                        }
                        i4 = i6 + 2;
                    }
                    j.g gVar = new j.g();
                    while (i2 < address.length) {
                        if (i2 == i3) {
                            gVar.Q(58);
                            i2 += i5;
                            if (i2 == 16) {
                                gVar.Q(58);
                            }
                        } else {
                            if (i2 > 0) {
                                gVar.Q(58);
                            }
                            gVar.k((i.m0.b.a(address[i2], 255) << 8) | (255 & address[i2 + 1]));
                            i2 += 2;
                        }
                    }
                    return gVar.I();
                } else if (address.length == 4) {
                    return H.getHostAddress();
                } else {
                    throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
                }
            }
            return null;
        }
        try {
            String ascii = IDN.toASCII(str);
            h.o.c.g.b(ascii, "IDN.toASCII(host)");
            Locale locale = Locale.US;
            h.o.c.g.b(locale, "Locale.US");
            String lowerCase = ascii.toLowerCase(locale);
            h.o.c.g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (lowerCase.length() == 0) {
                return null;
            }
            int length = lowerCase.length();
            for (int i8 = 0; i8 < length; i8++) {
                char charAt = lowerCase.charAt(i8);
                if (charAt > 31 && charAt < 127 && h.s.d.i(" #%/:?@[\\]", charAt, 0, false, 6) == -1) {
                }
                i2 = 1;
                break;
            }
            if (i2 != 0) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NonNull
    public static <T> T s(@Nullable T t, @NonNull String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static final <T> List<T> s0(T t) {
        List<T> singletonList = Collections.singletonList(t);
        h.o.c.g.b(singletonList, "java.util.Collections.singletonList(element)");
        return singletonList;
    }

    public static final <T> List<T> s1(T[] tArr) {
        return new ArrayList(new h.k.a(tArr, false));
    }

    @EnsuresNonNull({"#1"})
    public static <T> T t(@Nullable T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    @SuppressLint({"CheckResult"})
    public static void t0(Context context, String str, ImageView imageView, @DrawableRes int i2, f.d.a.s.a aVar) {
        i<Drawable> p = f.d.a.c.d(context).p(str);
        if (i2 != 0) {
            p.q(i2);
        }
        if (aVar != null) {
            p.a(aVar);
        }
        p.G(imageView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004a, code lost:
        r3 = new f.i.a.a.e1.u[0];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void t1(java.io.File r23, @androidx.annotation.Nullable f.i.a.a.e1.j r24, f.i.a.a.e1.k r25, boolean r26, boolean r27) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 255
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.b.g.h.t1(java.io.File, f.i.a.a.e1.j, f.i.a.a.e1.k, boolean, boolean):void");
    }

    public static <T> T u(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public static void u0(String str, ImageView imageView) {
        t0(App.b, str, imageView, R.drawable.default_img_bg, null);
    }

    public static boolean u1(int i2, u uVar, boolean z) throws f.i.a.a.h0 {
        if (uVar.a() < 7) {
            if (z) {
                return false;
            }
            StringBuilder o = f.b.a.a.a.o("too short header: ");
            o.append(uVar.a());
            throw new f.i.a.a.h0(o.toString());
        } else if (uVar.p() != i2) {
            if (z) {
                return false;
            }
            StringBuilder o2 = f.b.a.a.a.o("expected header type ");
            o2.append(Integer.toHexString(i2));
            throw new f.i.a.a.h0(o2.toString());
        } else if (uVar.p() == 118 && uVar.p() == 111 && uVar.p() == 114 && uVar.p() == 98 && uVar.p() == 105 && uVar.p() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new f.i.a.a.h0("expected characters 'vorbis'");
        }
    }

    public static void v(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    public static void v0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.b.g.e.a(str)).q(R.drawable.default_img_bg).G(imageView);
    }

    public static void w(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void w0(CoverBase64 coverBase64, ImageView imageView) {
        if (coverBase64 == null || TextUtils.isEmpty(coverBase64.getUrl())) {
            return;
        }
        i q = f.d.a.c.d(App.b).o(new f.e.a.i.b.a.a(coverBase64.getUrl())).q(R.drawable.default_img_bg);
        q.q(R.drawable.default_img_bg_deep);
        q.G(imageView);
    }

    public static boolean x(Context context, String str) {
        ConfigBean configBean = App.f104e;
        if (configBean == null || configBean.getTasks() == null || App.f104e.getTasks().size() == 0) {
            return true;
        }
        List<InstallTask> tasks = App.f104e.getTasks();
        Iterator<InstallTask> it = tasks.iterator();
        while (it.hasNext()) {
            if (r(it.next().getPackageName())) {
                it.remove();
            }
        }
        if (tasks.size() != 0) {
            View inflate = View.inflate(context, R.layout.dialog_download_task, null);
            AlertDialog create = new AlertDialog.Builder(context).setView(inflate).setCancelable(false).create();
            TextView textView = (TextView) inflate.findViewById(R.id.tv_confirm);
            TextView textView2 = (TextView) inflate.findViewById(R.id.tv_message);
            TextView textView3 = (TextView) inflate.findViewById(R.id.tv_cancel);
            RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_list);
            if (!TextUtils.isEmpty(str)) {
                textView2.setText(str);
            }
            textView3.setOnClickListener(new f.e.a.j.f.a.a(create));
            textView.setOnClickListener(new f.e.a.j.f.a.b(create));
            recyclerView.setLayoutManager(new LinearLayoutManager(context));
            TaskAdapter taskAdapter = new TaskAdapter(context);
            recyclerView.setAdapter(taskAdapter);
            taskAdapter.b(tasks, taskAdapter.b.size());
            create.show();
            return false;
        }
        return true;
    }

    public static void x0(String str, ImageView imageView) {
        f.d.a.c.d(App.b).p(str).q(R.drawable.default_img_bg_deep).f(k.a).p(Integer.MIN_VALUE, Integer.MIN_VALUE).i(f.d.a.o.b.PREFER_RGB_565).G(imageView);
    }

    public static void y(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    y(file2);
                }
                file.delete();
            }
        }
    }

    public static void y0(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f.d.a.c.d(App.b).o(new f.e.a.j.j.m.f.a(str)).q(R.drawable.default_img_bg).G(imageView);
    }

    public static final void z(Closeable closeable, Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            if (h.n.b.a != null) {
                Method method = a.C0102a.a;
                if (method != null) {
                    method.invoke(th, th2);
                    return;
                }
                return;
            }
            throw null;
        }
    }

    public static void z0(String str, ImageView imageView) {
        t0(App.b, str, imageView, R.drawable.default_img_bg, f.d.a.s.e.C());
    }
}
