package f.i.a.a.h1.u0.t;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.umeng.commonsdk.debug.UMRTLog;
import f.i.a.a.b0;
import f.i.a.a.h0;
import f.i.a.a.h1.u0.o;
import f.i.a.a.h1.u0.t.e;
import f.i.a.a.h1.u0.t.f;
import f.i.a.a.l1.e0;
import f.i.a.a.m1.r;
import f.i.a.a.q;
import f.i.a.a.z0.e;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: HlsPlaylistParser.java */
/* loaded from: classes.dex */
public final class h implements e0.a<g> {
    public final e a;
    public static final Pattern b = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f5209c = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f5210d = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: e  reason: collision with root package name */
    public static final Pattern f5211e = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f5212f = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5213g = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5214h = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: i  reason: collision with root package name */
    public static final Pattern f5215i = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: j  reason: collision with root package name */
    public static final Pattern f5216j = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: k  reason: collision with root package name */
    public static final Pattern f5217k = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: l  reason: collision with root package name */
    public static final Pattern f5218l = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f5219m = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final Pattern n = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final Pattern o = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern p = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern q = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final Pattern r = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern s = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern t = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern u = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final Pattern v = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final Pattern w = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    public static final Pattern x = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern y = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern z = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern A = Pattern.compile("LANGUAGE=\"(.+?)\"");
    public static final Pattern B = Pattern.compile("NAME=\"(.+?)\"");
    public static final Pattern C = Pattern.compile("GROUP-ID=\"(.+?)\"");
    public static final Pattern D = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    public static final Pattern E = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern F = b("AUTOSELECT");
    public static final Pattern G = b("DEFAULT");
    public static final Pattern H = b("FORCED");
    public static final Pattern I = Pattern.compile("VALUE=\"(.+?)\"");
    public static final Pattern J = Pattern.compile("IMPORT=\"(.+?)\"");
    public static final Pattern K = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* compiled from: HlsPlaylistParser.java */
    /* loaded from: classes.dex */
    public static class a {
        public final BufferedReader a;
        public final Queue<String> b;

        /* renamed from: c  reason: collision with root package name */
        public String f5220c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.b = queue;
            this.a = bufferedReader;
        }

        public boolean a() throws IOException {
            String trim;
            if (this.f5220c != null) {
                return true;
            }
            if (!this.b.isEmpty()) {
                this.f5220c = this.b.poll();
                return true;
            }
            do {
                String readLine = this.a.readLine();
                this.f5220c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f5220c = trim;
            } while (trim.isEmpty());
            return true;
        }

        public String b() throws IOException {
            if (a()) {
                String str = this.f5220c;
                this.f5220c = null;
                return str;
            }
            return null;
        }
    }

    public h() {
        this.a = e.f5175l;
    }

    public static Pattern b(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    @Nullable
    public static e.b c(String str, String str2, Map<String, String> map) throws h0 {
        String i2 = i(str, w, UMRTLog.RTLOG_ENABLE, map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String k2 = k(str, x, map);
            return new e.b(q.f5842d, "video/mp4", Base64.decode(k2.substring(k2.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new e.b(q.f5842d, "hls", f.i.a.a.m1.h0.O(str));
        } else {
            if ("com.microsoft.playready".equals(str2) && UMRTLog.RTLOG_ENABLE.equals(i2)) {
                String k3 = k(str, x, map);
                return new e.b(q.f5843e, "video/mp4", c.a.a.b.g.h.i(q.f5843e, Base64.decode(k3.substring(k3.indexOf(44)), 0)));
            }
            return null;
        }
    }

    public static String d(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    public static int e(String str, Pattern pattern) throws h0 {
        return Integer.parseInt(k(str, pattern, Collections.emptyMap()));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    public static e f(a aVar, String str) throws IOException {
        ArrayList arrayList;
        int i2;
        char c2;
        e.b bVar;
        String str2;
        int i3;
        int i4;
        float f2;
        e.b bVar2;
        int parseInt;
        String str3;
        HashMap hashMap;
        HashSet hashSet;
        ArrayList arrayList2;
        ArrayList arrayList3;
        boolean z2;
        int i5;
        int i6;
        String str4 = str;
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        ArrayList arrayList7 = new ArrayList();
        ArrayList arrayList8 = new ArrayList();
        ArrayList arrayList9 = new ArrayList();
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            int i7 = -1;
            if (!aVar.a()) {
                break;
            }
            String b2 = aVar.b();
            if (b2.startsWith("#EXT")) {
                arrayList11.add(b2);
            }
            if (b2.startsWith("#EXT-X-DEFINE")) {
                hashMap3.put(k(b2, B, hashMap3), k(b2, I, hashMap3));
            } else if (b2.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                z4 = true;
            } else if (b2.startsWith("#EXT-X-MEDIA")) {
                arrayList9.add(b2);
            } else {
                if (b2.startsWith("#EXT-X-SESSION-KEY")) {
                    e.b c3 = c(b2, i(b2, v, "identity", hashMap3), hashMap3);
                    if (c3 != null) {
                        z2 = z4;
                        arrayList2 = arrayList8;
                        arrayList10.add(new f.i.a.a.z0.e(d(k(b2, u, hashMap3)), true, c3));
                    } else {
                        arrayList2 = arrayList8;
                        z2 = z4;
                    }
                } else {
                    arrayList2 = arrayList8;
                    z2 = z4;
                    if (b2.startsWith("#EXT-X-STREAM-INF")) {
                        boolean contains = z3 | b2.contains("CLOSED-CAPTIONS=NONE");
                        int e2 = e(b2, f5213g);
                        String j2 = j(b2, b, hashMap3);
                        if (j2 != null) {
                            e2 = Integer.parseInt(j2);
                        }
                        String j3 = j(b2, f5215i, hashMap3);
                        String j4 = j(b2, f5216j, hashMap3);
                        if (j4 != null) {
                            String[] split = j4.split("x");
                            int parseInt2 = Integer.parseInt(split[0]);
                            int parseInt3 = Integer.parseInt(split[1]);
                            if (parseInt2 <= 0 || parseInt3 <= 0) {
                                parseInt2 = -1;
                            } else {
                                i7 = parseInt3;
                            }
                            i6 = i7;
                            i5 = parseInt2;
                        } else {
                            i5 = -1;
                            i6 = -1;
                        }
                        String j5 = j(b2, f5217k, hashMap3);
                        float parseFloat = j5 != null ? Float.parseFloat(j5) : -1.0f;
                        String j6 = j(b2, f5209c, hashMap3);
                        String j7 = j(b2, f5210d, hashMap3);
                        String j8 = j(b2, f5211e, hashMap3);
                        String j9 = j(b2, f5212f, hashMap3);
                        Uri e1 = c.a.a.b.g.h.e1(str4, l(aVar.b(), hashMap3));
                        ArrayList arrayList12 = arrayList10;
                        arrayList4.add(new e.b(e1, b0.s(Integer.toString(arrayList4.size()), null, "application/x-mpegURL", null, j3, e2, i5, i6, parseFloat, null, 0, 0), j6, j7, j8, j9));
                        ArrayList arrayList13 = (ArrayList) hashMap2.get(e1);
                        if (arrayList13 == null) {
                            arrayList13 = new ArrayList();
                            hashMap2.put(e1, arrayList13);
                        }
                        arrayList13.add(new o.b(e2, j6, j7, j8, j9));
                        z4 = z2;
                        arrayList8 = arrayList2;
                        arrayList10 = arrayList12;
                        arrayList11 = arrayList11;
                        z3 = contains;
                    }
                }
                arrayList3 = arrayList11;
                z4 = z2;
                arrayList8 = arrayList2;
                arrayList10 = arrayList10;
                arrayList11 = arrayList3;
            }
            arrayList2 = arrayList8;
            arrayList3 = arrayList11;
            z2 = z4;
            z4 = z2;
            arrayList8 = arrayList2;
            arrayList10 = arrayList10;
            arrayList11 = arrayList3;
        }
        ArrayList arrayList14 = arrayList8;
        ArrayList arrayList15 = arrayList11;
        boolean z5 = z4;
        ArrayList arrayList16 = arrayList10;
        ArrayList arrayList17 = new ArrayList();
        HashSet hashSet2 = new HashSet();
        int i8 = 0;
        while (true) {
            arrayList = null;
            if (i8 >= arrayList4.size()) {
                break;
            }
            e.b bVar3 = (e.b) arrayList4.get(i8);
            if (hashSet2.add(bVar3.a)) {
                c.a.a.b.g.h.v(bVar3.b.f4086g == null);
                hashMap = hashMap2;
                hashSet = hashSet2;
                arrayList17.add(new e.b(bVar3.a, bVar3.b.e(new f.i.a.a.d1.a(new o(null, null, (List) hashMap2.get(bVar3.a)))), bVar3.f5185c, bVar3.f5186d, bVar3.f5187e, bVar3.f5188f));
            } else {
                hashMap = hashMap2;
                hashSet = hashSet2;
            }
            i8++;
            hashSet2 = hashSet;
            hashMap2 = hashMap;
        }
        int i9 = 0;
        b0 b0Var = null;
        while (i9 < arrayList9.size()) {
            String str5 = (String) arrayList9.get(i9);
            String k2 = k(str5, C, hashMap3);
            String k3 = k(str5, B, hashMap3);
            String j10 = j(str5, x, hashMap3);
            Uri e12 = j10 == null ? null : c.a.a.b.g.h.e1(str4, j10);
            String j11 = j(str5, A, hashMap3);
            ArrayList arrayList18 = arrayList9;
            boolean h2 = h(str5, G, false);
            b0 b0Var2 = b0Var;
            if (h(str5, H, false)) {
                h2 |= true;
            }
            if (h(str5, F, false)) {
                h2 |= true;
            }
            boolean z6 = h2;
            String j12 = j(str5, D, hashMap3);
            if (TextUtils.isEmpty(j12)) {
                i2 = 0;
            } else {
                String[] l0 = f.i.a.a.m1.h0.l0(j12, ",");
                int i10 = f.i.a.a.m1.h0.q(l0, "public.accessibility.describes-video") ? 512 : 0;
                if (f.i.a.a.m1.h0.q(l0, "public.accessibility.transcribes-spoken-dialog")) {
                    i10 |= 4096;
                }
                if (f.i.a.a.m1.h0.q(l0, "public.accessibility.describes-music-and-sound")) {
                    i10 |= 1024;
                }
                i2 = f.i.a.a.m1.h0.q(l0, "public.easy-to-read") ? i10 | 8192 : i10;
            }
            String g2 = f.b.a.a.a.g(k2, ":", k3);
            ArrayList arrayList19 = arrayList17;
            boolean z7 = z3;
            f.i.a.a.d1.a aVar2 = new f.i.a.a.d1.a(new o(k2, k3, Collections.emptyList()));
            String k4 = k(str5, z, hashMap3);
            switch (k4.hashCode()) {
                case -959297733:
                    if (k4.equals("SUBTITLES")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -333210994:
                    if (k4.equals("CLOSED-CAPTIONS")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 62628790:
                    if (k4.equals("AUDIO")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 81665115:
                    if (k4.equals("VIDEO")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                int i11 = 0;
                while (true) {
                    if (i11 < arrayList4.size()) {
                        bVar = (e.b) arrayList4.get(i11);
                        if (!k2.equals(bVar.f5185c)) {
                            i11++;
                        }
                    } else {
                        bVar = null;
                    }
                }
                if (bVar != null) {
                    b0 b0Var3 = bVar.b;
                    String y2 = f.i.a.a.m1.h0.y(b0Var3.f4085f, 2);
                    int i12 = b0Var3.n;
                    int i13 = b0Var3.o;
                    f2 = b0Var3.p;
                    str2 = y2;
                    i3 = i12;
                    i4 = i13;
                } else {
                    str2 = null;
                    i3 = -1;
                    i4 = -1;
                    f2 = -1.0f;
                }
                b0 e3 = b0.s(g2, k3, "application/x-mpegURL", str2 != null ? r.c(str2) : null, str2, -1, i3, i4, f2, null, z6 ? 1 : 0, i2).e(aVar2);
                if (e12 != null) {
                    arrayList5.add(new e.a(e12, e3, k2, k3));
                }
            } else if (c2 == 1) {
                int i14 = 0;
                while (true) {
                    if (i14 < arrayList4.size()) {
                        bVar2 = (e.b) arrayList4.get(i14);
                        if (!k2.equals(bVar2.f5186d)) {
                            i14++;
                        }
                    } else {
                        bVar2 = null;
                    }
                }
                String y3 = bVar2 != null ? f.i.a.a.m1.h0.y(bVar2.b.f4085f, 1) : null;
                String c4 = y3 != null ? r.c(y3) : null;
                String j13 = j(str5, f5214h, hashMap3);
                b0 g3 = b0.g(g2, k3, "application/x-mpegURL", c4, y3, -1, j13 != null ? Integer.parseInt(f.i.a.a.m1.h0.m0(j13, "/")[0]) : -1, -1, null, z6 ? 1 : 0, i2, j11);
                if (e12 == null) {
                    b0Var = g3;
                    i9++;
                    str4 = str;
                    arrayList9 = arrayList18;
                    arrayList17 = arrayList19;
                    z3 = z7;
                } else {
                    arrayList6.add(new e.a(e12, g3.e(aVar2), k2, k3));
                }
            } else if (c2 == 2) {
                arrayList7.add(new e.a(e12, b0.o(g2, k3, "application/x-mpegURL", "text/vtt", null, -1, z6 ? 1 : 0, i2, j11).e(aVar2), k2, k3));
            } else if (c2 == 3) {
                String k5 = k(str5, E, hashMap3);
                if (k5.startsWith("CC")) {
                    parseInt = Integer.parseInt(k5.substring(2));
                    str3 = "application/cea-608";
                } else {
                    parseInt = Integer.parseInt(k5.substring(7));
                    str3 = "application/cea-708";
                }
                int i15 = parseInt;
                String str6 = str3;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(b0.p(g2, k3, null, str6, null, -1, z6 ? 1 : 0, i2, j11, i15));
            }
            b0Var = b0Var2;
            i9++;
            str4 = str;
            arrayList9 = arrayList18;
            arrayList17 = arrayList19;
            z3 = z7;
        }
        return new e(str, arrayList15, arrayList17, arrayList5, arrayList6, arrayList7, arrayList14, b0Var, z3 ? Collections.emptyList() : arrayList, z5, hashMap3, arrayList16);
    }

    public static f g(e eVar, a aVar, String str) throws IOException {
        long j2;
        long j3;
        long j4;
        String j5;
        String hexString;
        TreeMap treeMap;
        String str2;
        long j6;
        f.i.a.a.z0.e eVar2;
        e eVar3 = eVar;
        boolean z2 = eVar3.f5208c;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap();
        long j7 = -9223372036854775807L;
        long j8 = -9223372036854775807L;
        boolean z3 = false;
        int i2 = 0;
        String str3 = null;
        String str4 = null;
        long j9 = 0;
        f.i.a.a.z0.e eVar4 = null;
        int i3 = 0;
        long j10 = 0;
        int i4 = 1;
        boolean z4 = false;
        long j11 = 0;
        String str5 = null;
        int i5 = 0;
        long j12 = 0;
        f.i.a.a.z0.e eVar5 = null;
        f.a aVar2 = null;
        long j13 = 0;
        while (true) {
            String str6 = str4;
            String str7 = str5;
            f.a aVar3 = aVar2;
            long j14 = -1;
            boolean z5 = false;
            long j15 = 0;
            String str8 = "";
            long j16 = j11;
            boolean z6 = z4;
            int i6 = i4;
            long j17 = j10;
            long j18 = j8;
            int i7 = i2;
            String str9 = str3;
            long j19 = j18;
            int i8 = i3;
            long j20 = j9;
            while (aVar.a()) {
                String b2 = aVar.b();
                if (b2.startsWith("#EXT")) {
                    arrayList2.add(b2);
                }
                if (b2.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                    String k2 = k(b2, n, hashMap);
                    if ("VOD".equals(k2)) {
                        i7 = 1;
                    } else if ("EVENT".equals(k2)) {
                        i7 = 2;
                    }
                } else if (b2.startsWith("#EXT-X-START")) {
                    j7 = (long) (Double.parseDouble(k(b2, r, Collections.emptyMap())) * 1000000.0d);
                } else {
                    boolean z7 = z2;
                    if (b2.startsWith("#EXT-X-MAP")) {
                        String k3 = k(b2, x, hashMap);
                        boolean z8 = z3;
                        String j21 = j(b2, t, hashMap);
                        if (j21 != null) {
                            String[] split = j21.split("@");
                            long parseLong = Long.parseLong(split[0]);
                            if (split.length > 1) {
                                j16 = Long.parseLong(split[1]);
                            }
                            j2 = j16;
                            j3 = parseLong;
                        } else {
                            j2 = j16;
                            j3 = j14;
                        }
                        if (str9 != null && str7 == null) {
                            throw new h0("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                        }
                        aVar3 = new f.a(k3, null, "", 0L, -1, -9223372036854775807L, null, str9, str7, j2, j3, false);
                        j14 = -1;
                        z2 = z7;
                        z3 = z8;
                        j16 = 0;
                    } else {
                        boolean z9 = z3;
                        if (b2.startsWith("#EXT-X-TARGETDURATION")) {
                            j4 = j7;
                            j19 = 1000000 * e(b2, f5218l);
                        } else {
                            j4 = j7;
                            if (b2.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                                j17 = Long.parseLong(k(b2, o, Collections.emptyMap()));
                                j12 = j17;
                            } else if (b2.startsWith("#EXT-X-VERSION")) {
                                i6 = e(b2, f5219m);
                            } else {
                                if (b2.startsWith("#EXT-X-DEFINE")) {
                                    String j22 = j(b2, J, hashMap);
                                    if (j22 != null) {
                                        String str10 = eVar3.f5182j.get(j22);
                                        if (str10 != null) {
                                            hashMap.put(j22, str10);
                                        }
                                    } else {
                                        hashMap.put(k(b2, B, hashMap), k(b2, I, hashMap));
                                    }
                                } else if (b2.startsWith("#EXTINF")) {
                                    str8 = i(b2, q, "", hashMap);
                                    j15 = (long) (Double.parseDouble(k(b2, p, Collections.emptyMap())) * 1000000.0d);
                                } else if (b2.startsWith("#EXT-X-KEY")) {
                                    String k4 = k(b2, u, hashMap);
                                    String i9 = i(b2, v, "identity", hashMap);
                                    if ("NONE".equals(k4)) {
                                        treeMap2.clear();
                                        j5 = null;
                                    } else {
                                        j5 = j(b2, y, hashMap);
                                        if ("identity".equals(i9)) {
                                            if ("AES-128".equals(k4)) {
                                                str9 = k(b2, x, hashMap);
                                                str7 = j5;
                                            }
                                        } else {
                                            if (str6 == null) {
                                                str6 = d(k4);
                                            }
                                            e.b c2 = c(b2, i9, hashMap);
                                            if (c2 != null) {
                                                treeMap2.put(i9, c2);
                                            }
                                        }
                                        str7 = j5;
                                        z3 = z9;
                                        str9 = null;
                                        j7 = j4;
                                        z2 = z7;
                                    }
                                    str7 = j5;
                                    z3 = z9;
                                    str9 = null;
                                    eVar5 = null;
                                    j7 = j4;
                                    z2 = z7;
                                } else if (b2.startsWith("#EXT-X-BYTERANGE")) {
                                    String[] split2 = k(b2, s, hashMap).split("@");
                                    j14 = Long.parseLong(split2[0]);
                                    if (split2.length > 1) {
                                        j16 = Long.parseLong(split2[1]);
                                    }
                                } else if (b2.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                    i8 = Integer.parseInt(b2.substring(b2.indexOf(58) + 1));
                                    z3 = true;
                                    j7 = j4;
                                    z2 = z7;
                                } else if (b2.equals("#EXT-X-DISCONTINUITY")) {
                                    i5++;
                                } else if (b2.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                    if (j20 == 0) {
                                        j20 = q.a(f.i.a.a.m1.h0.d0(b2.substring(b2.indexOf(58) + 1))) - j13;
                                    }
                                } else if (b2.equals("#EXT-X-GAP")) {
                                    j7 = j4;
                                    z2 = z7;
                                    z3 = z9;
                                    z5 = true;
                                } else if (b2.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                    j7 = j4;
                                    z3 = z9;
                                    z2 = true;
                                } else if (b2.equals("#EXT-X-ENDLIST")) {
                                    j7 = j4;
                                    z2 = z7;
                                    z3 = z9;
                                    z6 = true;
                                } else if (!b2.startsWith("#")) {
                                    if (str9 == null) {
                                        hexString = null;
                                    } else {
                                        hexString = str7 != null ? str7 : Long.toHexString(j12);
                                    }
                                    long j23 = j12 + 1;
                                    int i10 = (j14 > (-1L) ? 1 : (j14 == (-1L) ? 0 : -1));
                                    if (i10 == 0) {
                                        j16 = 0;
                                    }
                                    if (eVar5 != null || treeMap2.isEmpty()) {
                                        treeMap = treeMap2;
                                        str2 = str7;
                                        j6 = j23;
                                        eVar2 = eVar5;
                                    } else {
                                        e.b[] bVarArr = (e.b[]) treeMap2.values().toArray(new e.b[0]);
                                        eVar2 = new f.i.a.a.z0.e(str6, true, bVarArr);
                                        if (eVar4 == null) {
                                            e.b[] bVarArr2 = new e.b[bVarArr.length];
                                            treeMap = treeMap2;
                                            int i11 = 0;
                                            while (i11 < bVarArr.length) {
                                                e.b bVar = bVarArr[i11];
                                                bVarArr2[i11] = new e.b(bVar.b, bVar.f6073c, bVar.f6074d, null, bVar.f6076f);
                                                i11++;
                                                str7 = str7;
                                                j23 = j23;
                                            }
                                            str2 = str7;
                                            j6 = j23;
                                            eVar4 = new f.i.a.a.z0.e(str6, true, bVarArr2);
                                        } else {
                                            treeMap = treeMap2;
                                            str2 = str7;
                                            j6 = j23;
                                        }
                                    }
                                    arrayList.add(new f.a(l(b2, hashMap), aVar3, str8, j15, i5, j13, eVar2, str9, hexString, j16, j14, z5));
                                    j13 += j15;
                                    if (i10 != 0) {
                                        j16 += j14;
                                    }
                                    eVar3 = eVar;
                                    str4 = str6;
                                    eVar5 = eVar2;
                                    aVar2 = aVar3;
                                    j7 = j4;
                                    treeMap2 = treeMap;
                                    j12 = j6;
                                    z2 = z7;
                                    z3 = z9;
                                    long j24 = j19;
                                    i2 = i7;
                                    str3 = str9;
                                    j8 = j24;
                                    long j25 = j20;
                                    i3 = i8;
                                    j9 = j25;
                                    j10 = j17;
                                    i4 = i6;
                                    z4 = z6;
                                    j11 = j16;
                                    str5 = str2;
                                }
                                eVar3 = eVar;
                                j7 = j4;
                                treeMap2 = treeMap2;
                                str7 = str7;
                                z2 = z7;
                                z3 = z9;
                            }
                        }
                        z3 = z9;
                        j7 = j4;
                        z2 = z7;
                    }
                }
            }
            return new f(i7, str, arrayList2, j7, j20, z3, i8, j17, i6, j19, z2, z6, j20 != 0, eVar4, arrayList);
        }
    }

    public static boolean h(String str, Pattern pattern, boolean z2) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z2;
    }

    public static String i(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : l(str2, map);
    }

    @Nullable
    public static String j(String str, Pattern pattern, Map<String, String> map) {
        return i(str, pattern, null, map);
    }

    public static String k(String str, Pattern pattern, Map<String, String> map) throws h0 {
        String j2 = j(str, pattern, map);
        if (j2 != null) {
            return j2;
        }
        StringBuilder o2 = f.b.a.a.a.o("Couldn't match ");
        o2.append(pattern.pattern());
        o2.append(" in ");
        o2.append(str);
        throw new h0(o2.toString());
    }

    public static String l(String str, Map<String, String> map) {
        Matcher matcher = K.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static int m(BufferedReader bufferedReader, boolean z2, int i2) throws IOException {
        while (i2 != -1 && Character.isWhitespace(i2) && (z2 || !f.i.a.a.m1.h0.U(i2))) {
            i2 = bufferedReader.read();
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
        r1 = r0.readLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r1 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        r1 = r1.trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
        if (r1.isEmpty() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0067, code lost:
        if (r1.startsWith("#EXT-X-STREAM-INF") == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
        r8.add(r1);
        r7 = f(new f.i.a.a.h1.u0.t.h.a(r8, r0), r7.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0083, code lost:
        if (r1.startsWith("#EXT-X-TARGETDURATION") != false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008b, code lost:
        if (r1.startsWith("#EXT-X-MEDIA-SEQUENCE") != false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0093, code lost:
        if (r1.startsWith("#EXTINF") != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009b, code lost:
        if (r1.startsWith("#EXT-X-KEY") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a3, code lost:
        if (r1.startsWith("#EXT-X-BYTERANGE") != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ab, code lost:
        if (r1.equals("#EXT-X-DISCONTINUITY") != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b3, code lost:
        if (r1.equals("#EXT-X-DISCONTINUITY-SEQUENCE") != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bb, code lost:
        if (r1.equals("#EXT-X-ENDLIST") == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00be, code lost:
        r8.add(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c2, code lost:
        r8.add(r1);
        r7 = g(r6.a, new f.i.a.a.h1.u0.t.h.a(r8, r0), r7.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d6, code lost:
        f.i.a.a.m1.h0.l(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e0, code lost:
        throw new f.i.a.a.h0("Failed to parse the playlist, could not identify any tags.");
     */
    @Override // f.i.a.a.l1.e0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public f.i.a.a.h1.u0.t.g a(android.net.Uri r7, java.io.InputStream r8) throws java.io.IOException {
        /*
            r6 = this;
            java.io.BufferedReader r0 = new java.io.BufferedReader
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            r1.<init>(r8)
            r0.<init>(r1)
            java.util.ArrayDeque r8 = new java.util.ArrayDeque
            r8.<init>()
            int r1 = r0.read()     // Catch: java.lang.Throwable -> Le9
            r2 = 239(0xef, float:3.35E-43)
            r3 = 0
            if (r1 != r2) goto L2d
            int r1 = r0.read()     // Catch: java.lang.Throwable -> Le9
            r2 = 187(0xbb, float:2.62E-43)
            if (r1 != r2) goto L4e
            int r1 = r0.read()     // Catch: java.lang.Throwable -> Le9
            r2 = 191(0xbf, float:2.68E-43)
            if (r1 == r2) goto L29
            goto L4e
        L29:
            int r1 = r0.read()     // Catch: java.lang.Throwable -> Le9
        L2d:
            r2 = 1
            int r1 = m(r0, r2, r1)     // Catch: java.lang.Throwable -> Le9
            r2 = 7
            r4 = 0
        L34:
            if (r4 >= r2) goto L46
            java.lang.String r5 = "#EXTM3U"
            char r5 = r5.charAt(r4)     // Catch: java.lang.Throwable -> Le9
            if (r1 == r5) goto L3f
            goto L4e
        L3f:
            int r1 = r0.read()     // Catch: java.lang.Throwable -> Le9
            int r4 = r4 + 1
            goto L34
        L46:
            int r1 = m(r0, r3, r1)     // Catch: java.lang.Throwable -> Le9
            boolean r3 = f.i.a.a.m1.h0.U(r1)     // Catch: java.lang.Throwable -> Le9
        L4e:
            if (r3 == 0) goto Le1
        L50:
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> Le9
            if (r1 == 0) goto Ld6
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> Le9
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> Le9
            if (r2 == 0) goto L61
            goto L50
        L61:
            java.lang.String r2 = "#EXT-X-STREAM-INF"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 == 0) goto L7d
            r8.add(r1)     // Catch: java.lang.Throwable -> Le9
            f.i.a.a.h1.u0.t.h$a r1 = new f.i.a.a.h1.u0.t.h$a     // Catch: java.lang.Throwable -> Le9
            r1.<init>(r8, r0)     // Catch: java.lang.Throwable -> Le9
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Le9
            f.i.a.a.h1.u0.t.e r7 = f(r1, r7)     // Catch: java.lang.Throwable -> Le9
        L79:
            f.i.a.a.m1.h0.l(r0)
            goto Ld5
        L7d:
            java.lang.String r2 = "#EXT-X-TARGETDURATION"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-MEDIA-SEQUENCE"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXTINF"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-KEY"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-BYTERANGE"
            boolean r2 = r1.startsWith(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-DISCONTINUITY"
            boolean r2 = r1.equals(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-DISCONTINUITY-SEQUENCE"
            boolean r2 = r1.equals(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 != 0) goto Lc2
            java.lang.String r2 = "#EXT-X-ENDLIST"
            boolean r2 = r1.equals(r2)     // Catch: java.lang.Throwable -> Le9
            if (r2 == 0) goto Lbe
            goto Lc2
        Lbe:
            r8.add(r1)     // Catch: java.lang.Throwable -> Le9
            goto L50
        Lc2:
            r8.add(r1)     // Catch: java.lang.Throwable -> Le9
            f.i.a.a.h1.u0.t.e r1 = r6.a     // Catch: java.lang.Throwable -> Le9
            f.i.a.a.h1.u0.t.h$a r2 = new f.i.a.a.h1.u0.t.h$a     // Catch: java.lang.Throwable -> Le9
            r2.<init>(r8, r0)     // Catch: java.lang.Throwable -> Le9
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Le9
            f.i.a.a.h1.u0.t.f r7 = g(r1, r2, r7)     // Catch: java.lang.Throwable -> Le9
            goto L79
        Ld5:
            return r7
        Ld6:
            f.i.a.a.m1.h0.l(r0)
            f.i.a.a.h0 r7 = new f.i.a.a.h0
            java.lang.String r8 = "Failed to parse the playlist, could not identify any tags."
            r7.<init>(r8)
            throw r7
        Le1:
            f.i.a.a.h1.q0 r8 = new f.i.a.a.h1.q0     // Catch: java.lang.Throwable -> Le9
            java.lang.String r1 = "Input does not start with the #EXTM3U header."
            r8.<init>(r1, r7)     // Catch: java.lang.Throwable -> Le9
            throw r8     // Catch: java.lang.Throwable -> Le9
        Le9:
            r7 = move-exception
            f.i.a.a.m1.h0.l(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.u0.t.h.a(android.net.Uri, java.io.InputStream):java.lang.Object");
    }

    public h(e eVar) {
        this.a = eVar;
    }
}
