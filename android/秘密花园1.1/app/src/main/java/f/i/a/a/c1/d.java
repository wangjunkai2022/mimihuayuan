package f.i.a.a.c1;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MediaCodecUtil.java */
@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class d {

    /* renamed from: c  reason: collision with root package name */
    public static final SparseIntArray f4533c;

    /* renamed from: d  reason: collision with root package name */
    public static final SparseIntArray f4534d;

    /* renamed from: e  reason: collision with root package name */
    public static final Map<String, Integer> f4535e;

    /* renamed from: f  reason: collision with root package name */
    public static final Map<String, Integer> f4536f;

    /* renamed from: g  reason: collision with root package name */
    public static final Map<String, Integer> f4537g;

    /* renamed from: h  reason: collision with root package name */
    public static final SparseIntArray f4538h;
    public static final Pattern a = Pattern.compile("^\\D?(\\d+)$");
    public static final HashMap<b, List<f.i.a.a.c1.a>> b = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    public static int f4539i = -1;

    /* compiled from: MediaCodecUtil.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final String a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f4540c;

        public b(String str, boolean z, boolean z2) {
            this.a = str;
            this.b = z;
            this.f4540c = z2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.a, bVar.a) && this.b == bVar.b && this.f4540c == bVar.f4540c;
        }

        public int hashCode() {
            String str = this.a;
            return (((((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.b ? 1231 : 1237)) * 31) + (this.f4540c ? 1231 : 1237);
        }
    }

    /* compiled from: MediaCodecUtil.java */
    /* loaded from: classes.dex */
    public static class c extends Exception {
        public c(Throwable th, a aVar) {
            super("Failed to query underlying media codecs", th);
        }
    }

    /* compiled from: MediaCodecUtil.java */
    /* renamed from: f.i.a.a.c1.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0066d {
        MediaCodecInfo a(int i2);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int c();

        boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean e();
    }

    /* compiled from: MediaCodecUtil.java */
    /* loaded from: classes.dex */
    public static final class e implements InterfaceC0066d {
        public e(a aVar) {
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public MediaCodecInfo a(int i2) {
            return MediaCodecList.getCodecInfoAt(i2);
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public int c() {
            return MediaCodecList.getCodecCount();
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && "video/avc".equals(str2);
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean e() {
            return false;
        }
    }

    /* compiled from: MediaCodecUtil.java */
    @TargetApi(21)
    /* loaded from: classes.dex */
    public static final class f implements InterfaceC0066d {
        public final int a;
        public MediaCodecInfo[] b;

        public f(boolean z, boolean z2) {
            this.a = (z || z2) ? 1 : 0;
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public MediaCodecInfo a(int i2) {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
            return this.b[i2];
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public int c() {
            if (this.b == null) {
                this.b = new MediaCodecList(this.a).getCodecInfos();
            }
            return this.b.length;
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean d(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // f.i.a.a.c1.d.InterfaceC0066d
        public boolean e() {
            return true;
        }
    }

    /* compiled from: MediaCodecUtil.java */
    /* loaded from: classes.dex */
    public static final class g implements Comparator<f.i.a.a.c1.a> {
        public g(a aVar) {
        }

        @Override // java.util.Comparator
        public int compare(f.i.a.a.c1.a aVar, f.i.a.a.c1.a aVar2) {
            return (aVar.a.startsWith("OMX.google") ? -1 : 0) - (aVar2.a.startsWith("OMX.google") ? -1 : 0);
        }
    }

    /* compiled from: MediaCodecUtil.java */
    /* loaded from: classes.dex */
    public static final class h implements Comparator<f.i.a.a.c1.a> {
        public h(a aVar) {
        }

        public static int a(f.i.a.a.c1.a aVar) {
            String str = aVar.a;
            if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
                return -1;
            }
            return (h0.a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : 1;
        }

        @Override // java.util.Comparator
        public int compare(f.i.a.a.c1.a aVar, f.i.a.a.c1.a aVar2) {
            return a(aVar) - a(aVar2);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f4533c = sparseIntArray;
        sparseIntArray.put(66, 1);
        f4533c.put(77, 2);
        f4533c.put(88, 4);
        f4533c.put(100, 8);
        f4533c.put(110, 16);
        f4533c.put(122, 32);
        f4533c.put(244, 64);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        f4534d = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        f4534d.put(11, 4);
        f4534d.put(12, 8);
        f4534d.put(13, 16);
        f4534d.put(20, 32);
        f4534d.put(21, 64);
        f4534d.put(22, 128);
        f4534d.put(30, 256);
        f4534d.put(31, 512);
        f4534d.put(32, 1024);
        f4534d.put(40, 2048);
        f4534d.put(41, 4096);
        f4534d.put(42, 8192);
        f4534d.put(50, 16384);
        f4534d.put(51, 32768);
        f4534d.put(52, 65536);
        HashMap hashMap = new HashMap();
        f4535e = hashMap;
        hashMap.put("L30", 1);
        f4535e.put("L60", 4);
        f4535e.put("L63", 16);
        f4535e.put("L90", 64);
        f4535e.put("L93", 256);
        f4535e.put("L120", 1024);
        f4535e.put("L123", 4096);
        f4535e.put("L150", 16384);
        f4535e.put("L153", 65536);
        f4535e.put("L156", 262144);
        f4535e.put("L180", 1048576);
        f4535e.put("L183", 4194304);
        f4535e.put("L186", 16777216);
        f4535e.put("H30", 2);
        f4535e.put("H60", 8);
        f4535e.put("H63", 32);
        f4535e.put("H90", 128);
        f4535e.put("H93", 512);
        f4535e.put("H120", 2048);
        f4535e.put("H123", 8192);
        f4535e.put("H150", 32768);
        f4535e.put("H153", 131072);
        f4535e.put("H156", 524288);
        f4535e.put("H180", 2097152);
        f4535e.put("H183", 8388608);
        f4535e.put("H186", 33554432);
        HashMap hashMap2 = new HashMap();
        f4536f = hashMap2;
        hashMap2.put("00", 1);
        f4536f.put("01", 2);
        f4536f.put("02", 4);
        f4536f.put("03", 8);
        f4536f.put("04", 16);
        f4536f.put("05", 32);
        f4536f.put("06", 64);
        f4536f.put("07", 128);
        f4536f.put("08", 256);
        f4536f.put("09", 512);
        HashMap hashMap3 = new HashMap();
        f4537g = hashMap3;
        hashMap3.put("01", 1);
        f4537g.put("02", 2);
        f4537g.put("03", 4);
        f4537g.put("04", 8);
        f4537g.put("05", 16);
        f4537g.put("06", 32);
        f4537g.put("07", 64);
        f4537g.put("08", 128);
        f4537g.put("09", 256);
        SparseIntArray sparseIntArray3 = new SparseIntArray();
        f4538h = sparseIntArray3;
        sparseIntArray3.put(1, 1);
        f4538h.put(2, 2);
        f4538h.put(3, 3);
        f4538h.put(4, 4);
        f4538h.put(5, 5);
        f4538h.put(6, 6);
        f4538h.put(17, 17);
        f4538h.put(20, 20);
        f4538h.put(23, 23);
        f4538h.put(29, 29);
        f4538h.put(39, 39);
        f4538h.put(42, 42);
    }

    public static void a(String str, List<f.i.a.a.c1.a> list) {
        if ("audio/raw".equals(str)) {
            Collections.sort(list, new h(null));
        } else if (h0.a >= 21 || list.size() <= 1) {
        } else {
            String str2 = list.get(0).a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                Collections.sort(list, new g(null));
            }
        }
    }

    @Nullable
    public static String b(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        String[] supportedTypes;
        if (!mediaCodecInfo.isEncoder() && (z || !str.endsWith(".secure")) && ((h0.a >= 21 || !("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) && (!(h0.a < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && ("a70".equals(h0.b) || ("Xiaomi".equals(h0.f5662c) && h0.b.startsWith("HM")))) && (!(h0.a == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(h0.b) || "protou".equals(h0.b) || "ville".equals(h0.b) || "villeplus".equals(h0.b) || "villec2".equals(h0.b) || h0.b.startsWith("gee") || "C6602".equals(h0.b) || "C6603".equals(h0.b) || "C6606".equals(h0.b) || "C6616".equals(h0.b) || "L36h".equals(h0.b) || "SO-02E".equals(h0.b))) && (!(h0.a == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(h0.b) || "C1505".equals(h0.b) || "C1604".equals(h0.b) || "C1605".equals(h0.b))) && ((h0.a >= 24 || !(("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(h0.f5662c) && (h0.b.startsWith("zeroflte") || h0.b.startsWith("zerolte") || h0.b.startsWith("zenlte") || "SC-05G".equals(h0.b) || "marinelteatt".equals(h0.b) || "404SC".equals(h0.b) || "SC-04G".equals(h0.b) || "SCV31".equals(h0.b)))) && !((h0.a <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(h0.f5662c) && (h0.b.startsWith("d2") || h0.b.startsWith("serrano") || h0.b.startsWith("jflte") || h0.b.startsWith("santos") || h0.b.startsWith("t0"))) || ((h0.a <= 19 && h0.b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) || ("audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)))))))))) {
            for (String str3 : mediaCodecInfo.getSupportedTypes()) {
                if (str3.equalsIgnoreCase(str2)) {
                    return str3;
                }
            }
            if (str2.equals("video/dolby-vision")) {
                if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                    return "video/hevcdv";
                }
                if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                    return "video/dv_hevc";
                }
            } else if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
                return "audio/x-lg-alac";
            } else {
                if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
                    return "audio/x-lg-flac";
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static Pair<Integer, Integer> c(@Nullable String str) {
        char c2;
        int parseInt;
        int parseInt2;
        int i2;
        int i3;
        int i4;
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        String str2 = split[0];
        int i5 = 1;
        switch (str2.hashCode()) {
            case 3006243:
                if (str2.equals("avc1")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3006244:
                if (str2.equals("avc2")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 3095771:
                if (str2.equals("dvh1")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3095823:
                if (str2.equals("dvhe")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 3199032:
                if (str2.equals("hev1")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3214780:
                if (str2.equals("hvc1")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3356560:
                if (str2.equals("mp4a")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                if (split.length >= 2) {
                    try {
                        if (split[1].length() == 6) {
                            parseInt = Integer.parseInt(split[1].substring(0, 2), 16);
                            parseInt2 = Integer.parseInt(split[1].substring(4), 16);
                        } else if (split.length < 3) {
                            return null;
                        } else {
                            parseInt = Integer.parseInt(split[1]);
                            parseInt2 = Integer.parseInt(split[2]);
                        }
                        i2 = f4533c.get(parseInt, -1);
                        if (i2 == -1 || (i3 = f4534d.get(parseInt2, -1)) == -1) {
                            return null;
                        }
                    } catch (NumberFormatException unused) {
                        return null;
                    }
                }
                return new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3));
            case 2:
            case 3:
                if (split.length < 4) {
                    return null;
                }
                Matcher matcher = a.matcher(split[1]);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    if (!UMRTLog.RTLOG_ENABLE.equals(group)) {
                        if (!"2".equals(group)) {
                            return null;
                        }
                        i5 = 2;
                    }
                    Integer num = f4535e.get(split[3]);
                    if (num == null) {
                        return null;
                    }
                    return new Pair<>(Integer.valueOf(i5), num);
                }
                return null;
            case 4:
            case 5:
                if (split.length < 3) {
                    return null;
                }
                Matcher matcher2 = a.matcher(split[1]);
                if (matcher2.matches()) {
                    Integer num2 = f4536f.get(matcher2.group(1));
                    if (num2 == null) {
                        return null;
                    }
                    Integer num3 = f4537g.get(split[2]);
                    if (num3 == null) {
                        return null;
                    }
                    return new Pair<>(num2, num3);
                }
                return null;
            case 6:
                if (split.length == 3) {
                    try {
                        if (!"audio/mp4a-latm".equals(r.d(Integer.parseInt(split[1], 16)))) {
                            return null;
                        }
                        i4 = f4538h.get(Integer.parseInt(split[2]), -1);
                        if (i4 == -1) {
                            return null;
                        }
                    } catch (NumberFormatException unused2) {
                        return null;
                    }
                }
                return new Pair<>(Integer.valueOf(i4), 0);
            default:
                return null;
        }
    }

    @Nullable
    public static f.i.a.a.c1.a d(String str, boolean z, boolean z2) throws c {
        List<f.i.a.a.c1.a> e2 = e(str, z, z2);
        if (e2.isEmpty()) {
            return null;
        }
        return e2.get(0);
    }

    public static synchronized List<f.i.a.a.c1.a> e(String str, boolean z, boolean z2) throws c {
        synchronized (d.class) {
            b bVar = new b(str, z, z2);
            List<f.i.a.a.c1.a> list = b.get(bVar);
            if (list != null) {
                return list;
            }
            ArrayList<f.i.a.a.c1.a> f2 = f(bVar, h0.a >= 21 ? new f(z, z2) : new e(null));
            if (z && f2.isEmpty() && 21 <= h0.a && h0.a <= 23) {
                f2 = f(bVar, new e(null));
                if (!f2.isEmpty()) {
                    String str2 = f2.get(0).a;
                }
            }
            a(str, f2);
            List<f.i.a.a.c1.a> unmodifiableList = Collections.unmodifiableList(f2);
            b.put(bVar, unmodifiableList);
            return unmodifiableList;
        }
    }

    public static ArrayList<f.i.a.a.c1.a> f(b bVar, InterfaceC0066d interfaceC0066d) throws c {
        try {
            ArrayList<f.i.a.a.c1.a> arrayList = new ArrayList<>();
            String str = bVar.a;
            int c2 = interfaceC0066d.c();
            boolean e2 = interfaceC0066d.e();
            for (int i2 = 0; i2 < c2; i2++) {
                MediaCodecInfo a2 = interfaceC0066d.a(i2);
                String name = a2.getName();
                String b2 = b(a2, name, e2, str);
                if (b2 != null) {
                    try {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = a2.getCapabilitiesForType(b2);
                        boolean d2 = interfaceC0066d.d("tunneled-playback", b2, capabilitiesForType);
                        boolean b3 = interfaceC0066d.b("tunneled-playback", b2, capabilitiesForType);
                        if ((bVar.f4540c || !b3) && (!bVar.f4540c || d2)) {
                            boolean d3 = interfaceC0066d.d("secure-playback", b2, capabilitiesForType);
                            boolean b4 = interfaceC0066d.b("secure-playback", b2, capabilitiesForType);
                            if ((bVar.b || !b4) && (!bVar.b || d3)) {
                                boolean z = h0.a <= 22 && ("ODROID-XU3".equals(h0.f5663d) || "Nexus 10".equals(h0.f5663d)) && ("OMX.Exynos.AVC.Decoder".equals(name) || "OMX.Exynos.AVC.Decoder.secure".equals(name));
                                if ((e2 && bVar.b == d3) || !(e2 || bVar.b)) {
                                    arrayList.add(f.i.a.a.c1.a.f(name, str, b2, capabilitiesForType, z, false));
                                } else if (!e2 && d3) {
                                    arrayList.add(f.i.a.a.c1.a.f(name + ".secure", str, b2, capabilitiesForType, z, true));
                                    return arrayList;
                                }
                            }
                        }
                    } catch (Exception e3) {
                        if (h0.a > 23 || arrayList.isEmpty()) {
                            throw e3;
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e4) {
            throw new c(e4, null);
        }
    }

    public static int g() throws c {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        int i2;
        if (f4539i == -1) {
            int i3 = 0;
            f.i.a.a.c1.a d2 = d("video/avc", false, false);
            if (d2 != null) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = d2.f4522d;
                if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                    codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
                }
                int length = codecProfileLevelArr.length;
                int i4 = 0;
                while (i3 < length) {
                    int i5 = codecProfileLevelArr[i3].level;
                    if (i5 == 1 || i5 == 2) {
                        i2 = 25344;
                    } else {
                        switch (i5) {
                            case 8:
                            case 16:
                            case 32:
                                i2 = 101376;
                                continue;
                            case 64:
                                i2 = 202752;
                                continue;
                            case 128:
                            case 256:
                                i2 = 414720;
                                continue;
                            case 512:
                                i2 = 921600;
                                continue;
                            case 1024:
                                i2 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i2 = 2097152;
                                continue;
                            case 8192:
                                i2 = 2228224;
                                continue;
                            case 16384:
                                i2 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                i2 = 9437184;
                                continue;
                            default:
                                i2 = -1;
                                continue;
                        }
                    }
                    i4 = Math.max(i2, i4);
                    i3++;
                }
                i3 = Math.max(i4, h0.a >= 21 ? 345600 : 172800);
            }
            f4539i = i3;
        }
        return f4539i;
    }
}
