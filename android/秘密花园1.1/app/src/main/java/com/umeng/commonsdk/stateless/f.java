package com.umeng.commonsdk.stateless;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.proguard.ap;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.zip.Deflater;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: UMSLUtils.java */
/* loaded from: classes.dex */
public class f {
    public static int a;
    public static final byte[] b = {10, 1, 11, 5, 4, ap.f3041m, 7, 9, 23, 3, 1, 6, 8, 12, ap.f3039k, 91};

    /* renamed from: c  reason: collision with root package name */
    public static Object f3163c = new Object();

    public static boolean a(long j2, long j3) {
        return j2 > j3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v5, types: [boolean] */
    public static boolean a(Context context, String str, String str2, byte[] bArr) {
        boolean z;
        FileOutputStream fileOutputStream;
        int i2 = 1;
        if (context == null) {
            return false;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                synchronized (f3163c) {
                    try {
                        ULog.i("walle", "[stateless] begin write envelope, thread is " + Thread.currentThread());
                        File file = new File(context.getFilesDir() + "/" + a.f3118e);
                        if (!file.isDirectory()) {
                            file.mkdir();
                        }
                        File file2 = new File(file.getPath() + "/" + str);
                        if (!file2.isDirectory()) {
                            file2.mkdir();
                        }
                        File file3 = new File(file2.getPath() + "/" + str2);
                        if (!file3.exists()) {
                            file3.createNewFile();
                        }
                        fileOutputStream = new FileOutputStream(file3);
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        fileOutputStream.write(bArr);
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream2 = fileOutputStream;
                        z = false;
                        while (true) {
                            try {
                                break;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                        throw th;
                    }
                    try {
                        StringBuilder o = f.b.a.a.a.o("[stateless] end write envelope, thread id ");
                        o.append(Thread.currentThread());
                        ULog.i("walle", o.toString());
                        return true;
                    } catch (Throwable th4) {
                        th = th4;
                        z = true;
                        while (true) {
                            break;
                            break;
                        }
                        throw th;
                    }
                }
                try {
                    break;
                    throw th;
                } catch (IOException e2) {
                    e = e2;
                    ULog.i("walle", "[stateless] write envelope, e is " + e.getMessage());
                    UMCrashManager.reportCrash(context, e);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused) {
                        }
                    }
                    StringBuilder o2 = f.b.a.a.a.o("[stateless] end write envelope, thread id ");
                    o2.append(Thread.currentThread());
                    ULog.i("walle", o2.toString());
                    i2 = z;
                    return i2;
                } catch (Throwable th5) {
                    th = th5;
                    ULog.i("walle", "[stateless] write envelope, e is " + th.getMessage());
                    UMCrashManager.reportCrash(context, th);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException unused2) {
                        }
                    }
                    StringBuilder o3 = f.b.a.a.a.o("[stateless] end write envelope, thread id ");
                    o3.append(Thread.currentThread());
                    ULog.i("walle", o3.toString());
                    i2 = z;
                    return i2;
                }
            } catch (IOException e3) {
                e = e3;
                z = false;
            } catch (Throwable th6) {
                th = th6;
                z = false;
            }
        } catch (Throwable th7) {
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
            }
            Object[] objArr = new Object[i2];
            StringBuilder o4 = f.b.a.a.a.o("[stateless] end write envelope, thread id ");
            o4.append(Thread.currentThread());
            objArr[0] = o4.toString();
            ULog.i("walle", objArr);
            throw th7;
        }
    }

    public static byte[] b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < bArr.length; i2++) {
            stringBuffer.append(String.format("%02X", Byte.valueOf(bArr[i2])));
        }
        return stringBuffer.toString().toLowerCase(Locale.US);
    }

    public static byte[] a(String str) throws IOException {
        byte[] bArr;
        synchronized (f3163c) {
            ULog.i("walle", "[stateless] begin read envelope, thread is " + Thread.currentThread());
            try {
                FileChannel channel = new RandomAccessFile(str, "r").getChannel();
                MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                PrintStream printStream = System.out;
                load.isLoaded();
                bArr = new byte[(int) channel.size()];
                if (load.remaining() > 0) {
                    load.get(bArr, 0, load.remaining());
                }
                ULog.i("walle", "[stateless] end read envelope, thread id " + Thread.currentThread());
                try {
                    channel.close();
                } catch (IOException unused) {
                }
            } catch (IOException e2) {
                ULog.i("walle", "[stateless] write envelope, e is " + e2.getMessage());
                throw e2;
            }
        }
        return bArr;
    }

    public static File a(Context context) {
        File[] listFiles;
        File[] listFiles2;
        File file = null;
        try {
            synchronized (f3163c) {
                ULog.i("walle", "get last envelope begin, thread is " + Thread.currentThread());
                if (context != null && context.getApplicationContext() != null) {
                    String str = context.getApplicationContext().getFilesDir() + "/" + a.f3118e;
                    if (!TextUtils.isEmpty(str)) {
                        File file2 = new File(str);
                        if (file2.isDirectory() && (listFiles = file2.listFiles()) != null && listFiles.length > 0) {
                            for (File file3 : listFiles) {
                                if (file3 != null && file3.isDirectory() && (listFiles2 = file3.listFiles()) != null && listFiles2.length > 0) {
                                    Arrays.sort(listFiles2, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.1
                                        @Override // java.util.Comparator
                                        /* renamed from: a */
                                        public int compare(File file4, File file5) {
                                            int i2 = ((file4.lastModified() - file5.lastModified()) > 0L ? 1 : ((file4.lastModified() - file5.lastModified()) == 0L ? 0 : -1));
                                            if (i2 > 0) {
                                                return 1;
                                            }
                                            return i2 == 0 ? 0 : -1;
                                        }
                                    });
                                    File file4 = listFiles2[0];
                                    if (file4 != null && (file == null || file.lastModified() > file4.lastModified())) {
                                        file = file4;
                                    }
                                }
                            }
                        }
                    }
                }
                ULog.i("walle", "get last envelope end, thread is " + Thread.currentThread());
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
        return file;
    }

    public static void a(Context context, String str, int i2) {
        try {
            if (str == null) {
                ULog.i("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            File file = new File(str);
            if (!file.isDirectory()) {
                ULog.i("AmapLBS", "[lbs-build] fileDir not exist, thread is " + Thread.currentThread());
                return;
            }
            synchronized (f3163c) {
                File[] listFiles = file.listFiles();
                ULog.i("AmapLBS", "[lbs-build] delete file begin " + listFiles.length + ", thread is " + Thread.currentThread());
                if (listFiles.length >= i2) {
                    ULog.i("AmapLBS", "[lbs-build] file size >= max");
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listFiles) {
                        if (file2 != null) {
                            arrayList.add(file2);
                        }
                    }
                    if (arrayList.size() >= i2) {
                        Collections.sort(arrayList, new Comparator<File>() { // from class: com.umeng.commonsdk.stateless.f.2
                            @Override // java.util.Comparator
                            /* renamed from: a */
                            public int compare(File file3, File file4) {
                                if (file3 == null || file4 == null || file3.lastModified() >= file4.lastModified()) {
                                    return (file3 == null || file4 == null || file3.lastModified() != file4.lastModified()) ? 1 : 0;
                                }
                                return -1;
                            }
                        });
                        if (ULog.DEBUG) {
                            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                                ULog.i("AmapLBS", "[lbs-build] overrun native file is " + ((File) arrayList.get(i3)).getPath());
                            }
                        }
                        for (int i4 = 0; i4 <= arrayList.size() - i2; i4++) {
                            if (arrayList.get(i4) != null) {
                                ULog.i("AmapLBS", "[lbs-build] overrun remove file is " + ((File) arrayList.get(i4)).getPath());
                                try {
                                    ((File) arrayList.get(i4)).delete();
                                    arrayList.remove(i4);
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                } else {
                    ULog.i("AmapLBS", "[lbs-build] file size < max");
                }
                ULog.i("AmapLBS", "[lbs-build] delete file end " + listFiles.length + ", thread is " + Thread.currentThread());
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static byte[] a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = null;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        a = 0;
        try {
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int deflate = deflater.deflate(bArr2);
                    a += deflate;
                    byteArrayOutputStream2.write(bArr2, 0, deflate);
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            byteArrayOutputStream2.close();
            return byteArrayOutputStream2.toByteArray();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) throws Exception {
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
        cipher.init(1, new SecretKeySpec(bArr2, "AES"), new IvParameterSpec(b));
        return cipher.doFinal(bArr);
    }
}
