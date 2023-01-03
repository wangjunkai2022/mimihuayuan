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
    public static final Pattern f5134c = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f5135d = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: e  reason: collision with root package name */
    public static final Pattern f5136e = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f5137f = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5138g = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5139h = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: i  reason: collision with root package name */
    public static final Pattern f5140i = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: j  reason: collision with root package name */
    public static final Pattern f5141j = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: k  reason: collision with root package name */
    public static final Pattern f5142k = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: l  reason: collision with root package name */
    public static final Pattern f5143l = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: m  reason: collision with root package name */
    public static final Pattern f5144m = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
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
        public String f5145c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.b = queue;
            this.a = bufferedReader;
        }

        public boolean a() throws IOException {
            String trim;
            if (this.f5145c != null) {
                return true;
            }
            if (!this.b.isEmpty()) {
                this.f5145c = this.b.poll();
                return true;
            }
            do {
                String readLine = this.a.readLine();
                this.f5145c = readLine;
                if (readLine == null) {
                    return false;
                }
                trim = readLine.trim();
                this.f5145c = trim;
            } while (trim.isEmpty());
            return true;
        }

        public String b() throws IOException {
            if (!a()) {
                return null;
            }
            String str = this.f5145c;
            this.f5145c = null;
            return str;
        }
    }

    public h() {
        this.a = e.f5100l;
    }

    public static Pattern b(String str) {
        return Pattern.compile(str + "=(NO|YES)");
    }

    @Nullable
    public static e.b c(String str, String str2, Map<String, String> map) throws h0 {
        String i2 = i(str, w, UMRTLog.RTLOG_ENABLE, map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String k2 = k(str, x, map);
            return new e.b(q.f5767d, "video/mp4", Base64.decode(k2.substring(k2.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new e.b(q.f5767d, "hls", f.i.a.a.m1.h0.O(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !UMRTLog.RTLOG_ENABLE.equals(i2)) {
                return null;
            }
            String k3 = k(str, x, map);
            return new e.b(q.f5768e, "video/mp4", c.a.a.b.g.h.i(q.f5768e, Base64.decode(k3.substring(k3.indexOf(44)), 0)));
        }
    }

    public static String d(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    public static int e(String str, Pattern pattern) throws h0 {
        return Integer.parseInt(k(str, pattern, Collections.emptyMap()));
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v7, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r1v36, resolved type: int */
    /* JADX DEBUG: Multi-variable search result rejected for r1v37, resolved type: int */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    public static e f(a aVar, String str) throws IOException {
        ArrayList arrayList;
        Uri uri;
        int i2;
        char c2;
        e.b bVar;
        float f2;
        int i3;
        int i4;
        String str2;
        e.b bVar2;
        String str3;
        int i5;
        HashSet hashSet;
        HashMap hashMap;
        ArrayList arrayList2;
        ArrayList arrayList3;
        boolean z2;
        int i6;
        int i7;
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
            int i8 = -1;
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
                        arrayList3 = arrayList8;
                        arrayList10.add(new f.i.a.a.z0.e(d(k(b2, u, hashMap3)), true, c3));
                    } else {
                        arrayList3 = arrayList8;
                        z2 = z4;
                    }
                } else {
                    arrayList3 = arrayList8;
                    z2 = z4;
                    if (b2.startsWith("#EXT-X-STREAM-INF")) {
                        boolean contains = z3 | b2.contains("CLOSED-CAPTIONS=NONE");
                        int e2 = e(b2, f5138g);
                        String j2 = j(b2, b, hashMap3);
                        if (j2 != null) {
                            e2 = Integer.parseInt(j2);
                        }
                        String j3 = j(b2, f5140i, hashMap3);
                        String j4 = j(b2, f5141j, hashMap3);
                        if (j4 != null) {
                            String[] split = j4.split("x");
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            if (parseInt <= 0 || parseInt2 <= 0) {
                                parseInt = -1;
                            } else {
                                i8 = parseInt2;
                            }
                            i6 = i8;
                            i7 = parseInt;
                        } else {
                            i7 = -1;
                            i6 = -1;
                        }
                        String j5 = j(b2, f5142k, hashMap3);
                        float parseFloat = j5 != null ? Float.parseFloat(j5) : -1.0f;
                        String j6 = j(b2, f5134c, hashMap3);
                        String j7 = j(b2, f5135d, hashMap3);
                        String j8 = j(b2, f5136e, hashMap3);
                        String j9 = j(b2, f5137f, hashMap3);
                        Uri e1 = c.a.a.b.g.h.e1(str4, l(aVar.b(), hashMap3));
                        arrayList4.add(new e.b(e1, b0.s(Integer.toString(arrayList4.size()), null, "application/x-mpegURL", null, j3, e2, i7, i6, parseFloat, null, 0, 0), j6, j7, j8, j9));
                        ArrayList arrayList12 = (ArrayList) hashMap2.get(e1);
                        if (arrayList12 == null) {
                            arrayList12 = new ArrayList();
                            hashMap2.put(e1, arrayList12);
                        }
                        arrayList12.add(new o.b((long) e2, j6, j7, j8, j9));
                        z4 = z2;
                        arrayList8 = arrayList3;
                        arrayList10 = arrayList10;
                        arrayList11 = arrayList11;
                        z3 = contains;
                    }
                }
                arrayList2 = arrayList11;
                z4 = z2;
                arrayList8 = arrayList3;
                arrayList10 = arrayList10;
                arrayList11 = arrayList2;
            }
            arrayList3 = arrayList8;
            arrayList2 = arrayList11;
            z2 = z4;
            z4 = z2;
            arrayList8 = arrayList3;
            arrayList10 = arrayList10;
            arrayList11 = arrayList2;
        }
        ArrayList arrayList13 = new ArrayList();
        HashSet hashSet2 = new HashSet();
        int i9 = 0;
        while (true) {
            arrayList = null;
            if (i9 >= arrayList4.size()) {
                break;
            }
            e.b bVar3 = (e.b) arrayList4.get(i9);
            if (hashSet2.add(bVar3.a)) {
                c.a.a.b.g.h.v(bVar3.b.f4011g == null);
                hashMap = hashMap2;
                hashSet = hashSet2;
                arrayList13.add(new e.b(bVar3.a, bVar3.b.e(new f.i.a.a.d1.a(new o(null, null, (List) hashMap2.get(bVar3.a)))), bVar3.f5110c, bVar3.f5111d, bVar3.f5112e, bVar3.f5113f));
            } else {
                hashMap = hashMap2;
                hashSet = hashSet2;
            }
            i9++;
            hashSet2 = hashSet;
            hashMap2 = hashMap;
        }
        int i10 = 0;
        b0 b0Var = null;
        while (i10 < arrayList9.size()) {
            String str5 = (String) arrayList9.get(i10);
            String k2 = k(str5, C, hashMap3);
            String k3 = k(str5, B, hashMap3);
            String j10 = j(str5, x, hashMap3);
            if (j10 == null) {
                uri = null;
            } else {
                uri = c.a.a.b.g.h.e1(str4, j10);
            }
            String j11 = j(str5, A, hashMap3);
            boolean h2 = h(str5, G, false);
            boolean z5 = h2;
            if (h(str5, H, false)) {
                z5 = (h2 ? 1 : 0) | true;
            }
            int i11 = z5;
            if (h(str5, F, false)) {
                boolean z6 = z5 ? 1 : 0;
                boolean z7 = z5 ? 1 : 0;
                boolean z8 = z5 ? 1 : 0;
                i11 = z6 | true;
            }
            String j12 = j(str5, D, hashMap3);
            if (TextUtils.isEmpty(j12)) {
                i2 = 0;
            } else {
                String[] l0 = f.i.a.a.m1.h0.l0(j12, ",");
                int i12 = f.i.a.a.m1.h0.q(l0, "public.accessibility.describes-video") ? 512 : 0;
                if (f.i.a.a.m1.h0.q(l0, "public.accessibility.transcribes-spoken-dialog")) {
                    i12 |= 4096;
                }
                if (f.i.a.a.m1.h0.q(l0, "public.accessibility.describes-music-and-sound")) {
                    i12 |= 1024;
                }
                i2 = f.i.a.a.m1.h0.q(l0, "public.easy-to-read") ? i12 | 8192 : i12;
            }
            String g2 = f.b.a.a.a.g(k2, ":", k3);
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
                int i13 = 0;
                while (true) {
                    if (i13 < arrayList4.size()) {
                        bVar = (e.b) arrayList4.get(i13);
                        if (!k2.equals(bVar.f5110c)) {
                            i13++;
                        }
                    } else {
                        bVar = null;
                    }
                }
                if (bVar != null) {
                    b0 b0Var2 = bVar.b;
                    String y2 = f.i.a.a.m1.h0.y(b0Var2.f4010f, 2);
                    int i14 = b0Var2.n;
                    int i15 = b0Var2.o;
                    f2 = b0Var2.p;
                    str2 = y2;
                    i4 = i14;
                    i3 = i15;
                } else {
                    str2 = null;
                    i4 = -1;
                    i3 = -1;
                    f2 = -1.0f;
                }
                String c4 = str2 != null ? r.c(str2) : null;
                int i16 = i11 == true ? 1 : 0;
                int i17 = i11 == true ? 1 : 0;
                int i18 = i11 == true ? 1 : 0;
                int i19 = i11 == true ? 1 : 0;
                b0 e3 = b0.s(g2, k3, "application/x-mpegURL", c4, str2, -1, i4, i3, f2, null, i16, i2).e(aVar2);
                if (uri != null) {
                    arrayList5.add(new e.a(uri, e3, k2, k3));
                }
            } else if (c2 == 1) {
                int i20 = 0;
                while (true) {
                    if (i20 < arrayList4.size()) {
                        bVar2 = (e.b) arrayList4.get(i20);
                        if (!k2.equals(bVar2.f5111d)) {
                            i20++;
                        }
                    } else {
                        bVar2 = null;
                    }
                }
                String y3 = bVar2 != null ? f.i.a.a.m1.h0.y(bVar2.b.f4010f, 1) : null;
                String c5 = y3 != null ? r.c(y3) : null;
                String j13 = j(str5, f5139h, hashMap3);
                b0 g3 = b0.g(g2, k3, "application/x-mpegURL", c5, y3, -1, j13 != null ? Integer.parseInt(f.i.a.a.m1.h0.m0(j13, "/")[0]) : -1, -1, null, i11, i2, j11);
                if (uri == null) {
                    b0Var = g3;
                    i10++;
                    str4 = str;
                    arrayList9 = arrayList9;
                    arrayList13 = arrayList13;
                    z3 = z3;
                } else {
                    arrayList6.add(new e.a(uri, g3.e(aVar2), k2, k3));
                }
            } else if (c2 == 2) {
                arrayList7.add(new e.a(uri, b0.o(g2, k3, "application/x-mpegURL", "text/vtt", null, -1, i11, i2, j11).e(aVar2), k2, k3));
            } else if (c2 == 3) {
                String k5 = k(str5, E, hashMap3);
                if (k5.startsWith("CC")) {
                    i5 = Integer.parseInt(k5.substring(2));
                    str3 = "application/cea-608";
                } else {
                    i5 = Integer.parseInt(k5.substring(7));
                    str3 = "application/cea-708";
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(b0.p(g2, k3, null, str3, null, -1, i11, i2, j11, i5));
            }
            b0Var = b0Var;
            i10++;
            str4 = str;
            arrayList9 = arrayList9;
            arrayList13 = arrayList13;
            z3 = z3;
        }
        return new e(str, arrayList11, arrayList13, arrayList5, arrayList6, arrayList7, arrayList8, b0Var, z3 ? Collections.emptyList() : arrayList, z4, hashMap3, arrayList10);
    }

    public static f g(e eVar, a aVar, String str) throws IOException {
        long j2;
        long j3;
        long j4;
        String str2;
        String str3;
        long j5;
        String str4;
        TreeMap treeMap;
        f.i.a.a.z0.e eVar2;
        e eVar3 = eVar;
        boolean z2 = eVar3.f5133c;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap();
        long j6 = -9223372036854775807L;
        long j7 = -9223372036854775807L;
        boolean z3 = false;
        int i2 = 0;
        String str5 = null;
        String str6 = null;
        long j8 = 0;
        f.i.a.a.z0.e eVar4 = null;
        int i3 = 0;
        long j9 = 0;
        int i4 = 1;
        boolean z4 = false;
        long j10 = 0;
        String str7 = null;
        int i5 = 0;
        long j11 = 0;
        f.i.a.a.z0.e eVar5 = null;
        f.a aVar2 = null;
        long j12 = 0;
        while (true) {
            String str8 = str6;
            String str9 = str7;
            f.a aVar3 = aVar2;
            long j13 = -1;
            boolean z5 = false;
            long j14 = 0;
            String str10 = "";
            long j15 = j10;
            boolean z6 = z4;
            int i6 = i4;
            long j16 = j9;
            int i7 = i2;
            String str11 = str5;
            long j17 = j7;
            int i8 = i3;
            long j18 = j8;
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
                    j6 = (long) (Double.parseDouble(k(b2, r, Collections.emptyMap())) * 1000000.0d);
                } else if (b2.startsWith("#EXT-X-MAP")) {
                    String k3 = k(b2, x, hashMap);
                    String j19 = j(b2, t, hashMap);
                    if (j19 != null) {
                        String[] split = j19.split("@");
                        long parseLong = Long.parseLong(split[0]);
                        if (split.length > 1) {
                            j15 = Long.parseLong(split[1]);
                        }
                        j3 = j15;
                        j2 = parseLong;
                    } else {
                        j3 = j15;
                        j2 = j13;
                    }
                    if (str11 == null || str9 != null) {
                        aVar3 = new f.a(k3, null, "", 0, -1, -9223372036854775807L, null, str11, str9, j3, j2, false);
                        j13 = -1;
                        z2 = z2;
                        z3 = z3;
                        j15 = 0;
                    } else {
                        throw new h0("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                    }
                } else {
                    if (b2.startsWith("#EXT-X-TARGETDURATION")) {
                        j4 = j6;
                        j17 = 1000000 * ((long) e(b2, f5143l));
                    } else {
                        j4 = j6;
                        if (b2.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                            j16 = Long.parseLong(k(b2, o, Collections.emptyMap()));
                            j11 = j16;
                        } else if (b2.startsWith("#EXT-X-VERSION")) {
                            i6 = e(b2, f5144m);
                        } else {
                            if (b2.startsWith("#EXT-X-DEFINE")) {
                                String j20 = j(b2, J, hashMap);
                                if (j20 != null) {
                                    String str12 = eVar3.f5107j.get(j20);
                                    if (str12 != null) {
                                        hashMap.put(j20, str12);
                                    }
                                } else {
                                    hashMap.put(k(b2, B, hashMap), k(b2, I, hashMap));
                                }
                            } else if (b2.startsWith("#EXTINF")) {
                                str10 = i(b2, q, "", hashMap);
                                j14 = (long) (Double.parseDouble(k(b2, p, Collections.emptyMap())) * 1000000.0d);
                            } else if (b2.startsWith("#EXT-X-KEY")) {
                                String k4 = k(b2, u, hashMap);
                                String i9 = i(b2, v, "identity", hashMap);
                                if ("NONE".equals(k4)) {
                                    treeMap2.clear();
                                    str2 = null;
                                } else {
                                    str2 = j(b2, y, hashMap);
                                    if (!"identity".equals(i9)) {
                                        if (str8 == null) {
                                            str8 = d(k4);
                                        }
                                        e.b c2 = c(b2, i9, hashMap);
                                        if (c2 != null) {
                                            treeMap2.put(i9, c2);
                                        }
                                    } else if ("AES-128".equals(k4)) {
                                        str11 = k(b2, x, hashMap);
                                        str9 = str2;
                                    }
                                    str9 = str2;
                                    z3 = z3;
                                    str11 = null;
                                    j6 = j4;
                                    z2 = z2;
                                }
                                str9 = str2;
                                z3 = z3;
                                str11 = null;
                                eVar5 = null;
                                j6 = j4;
                                z2 = z2;
                            } else if (b2.startsWith("#EXT-X-BYTERANGE")) {
                                String[] split2 = k(b2, s, hashMap).split("@");
                                j13 = Long.parseLong(split2[0]);
                                if (split2.length > 1) {
                                    j15 = Long.parseLong(split2[1]);
                                }
                            } else if (b2.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                i8 = Integer.parseInt(b2.substring(b2.indexOf(58) + 1));
                                z3 = true;
                                j6 = j4;
                                z2 = z2;
                            } else if (b2.equals("#EXT-X-DISCONTINUITY")) {
                                i5++;
                            } else if (b2.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                                if (j18 == 0) {
                                    j18 = q.a(f.i.a.a.m1.h0.d0(b2.substring(b2.indexOf(58) + 1))) - j12;
                                }
                            } else if (b2.equals("#EXT-X-GAP")) {
                                j6 = j4;
                                z2 = z2;
                                z3 = z3;
                                z5 = true;
                            } else if (b2.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                                j6 = j4;
                                z3 = z3;
                                z2 = true;
                            } else if (b2.equals("#EXT-X-ENDLIST")) {
                                j6 = j4;
                                z2 = z2;
                                z3 = z3;
                                z6 = true;
                            } else if (!b2.startsWith("#")) {
                                if (str11 == null) {
                                    str3 = null;
                                } else {
                                    str3 = str9 != null ? str9 : Long.toHexString(j11);
                                }
                                long j21 = j11 + 1;
                                int i10 = (j13 > -1 ? 1 : (j13 == -1 ? 0 : -1));
                                if (i10 == 0) {
                                    j15 = 0;
                                }
                                if (eVar5 != null || treeMap2.isEmpty()) {
                                    treeMap = treeMap2;
                                    str4 = str9;
                                    j5 = j21;
                                    eVar2 = eVar5;
                                } else {
                                    e.b[] bVarArr = (e.b[]) treeMap2.values().toArray(new e.b[0]);
                                    eVar2 = new f.i.a.a.z0.e(str8, true, bVarArr);
                                    if (eVar4 == null) {
                                        e.b[] bVarArr2 = new e.b[bVarArr.length];
                                        treeMap = treeMap2;
                                        int i11 = 0;
                                        while (i11 < bVarArr.length) {
                                            e.b bVar = bVarArr[i11];
                                            bVarArr2[i11] = new e.b(bVar.b, bVar.f5998c, bVar.f5999d, null, bVar.f6001f);
                                            i11++;
                                            str9 = str9;
                                            j21 = j21;
                                        }
                                        str4 = str9;
                                        j5 = j21;
                                        eVar4 = new f.i.a.a.z0.e(str8, true, bVarArr2);
                                    } else {
                                        treeMap = treeMap2;
                                        str4 = str9;
                                        j5 = j21;
                                    }
                                }
                                arrayList.add(new f.a(l(b2, hashMap), aVar3, str10, j14, i5, j12, eVar2, str11, str3, j15, j13, z5));
                                j12 += j14;
                                if (i10 != 0) {
                                    j15 += j13;
                                }
                                eVar3 = eVar;
                                str6 = str8;
                                eVar5 = eVar2;
                                aVar2 = aVar3;
                                j6 = j4;
                                treeMap2 = treeMap;
                                j11 = j5;
                                z2 = z2;
                                z3 = z3;
                                i2 = i7;
                                str5 = str11;
                                j7 = j17;
                                i3 = i8;
                                j8 = j18;
                                j9 = j16;
                                i4 = i6;
                                z4 = z6;
                                j10 = j15;
                                str7 = str4;
                            }
                            eVar3 = eVar;
                            j6 = j4;
                            treeMap2 = treeMap2;
                            str9 = str9;
                            z2 = z2;
                            z3 = z3;
                        }
                    }
                    z3 = z3;
                    j6 = j4;
                    z2 = z2;
                }
            }
            return new f(i7, str, arrayList2, j6, j18, z3, i8, j16, i6, j17, z2, z6, j18 != 0, eVar4, arrayList);
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

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0050, code lost:
        r1 = r0.readLine();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0054, code lost:
        if (r1 == null) goto L_0x00d6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0056, code lost:
        r1 = r1.trim();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005e, code lost:
        if (r1.isEmpty() == false) goto L_0x0061;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0067, code lost:
        if (r1.startsWith("#EXT-X-STREAM-INF") == false) goto L_0x007d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0069, code lost:
        r8.add(r1);
        r7 = f(new f.i.a.a.h1.u0.t.h.a(r8, r0), r7.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0083, code lost:
        if (r1.startsWith("#EXT-X-TARGETDURATION") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x008b, code lost:
        if (r1.startsWith("#EXT-X-MEDIA-SEQUENCE") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0093, code lost:
        if (r1.startsWith("#EXTINF") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x009b, code lost:
        if (r1.startsWith("#EXT-X-KEY") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00a3, code lost:
        if (r1.startsWith("#EXT-X-BYTERANGE") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00ab, code lost:
        if (r1.equals("#EXT-X-DISCONTINUITY") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00b3, code lost:
        if (r1.equals("#EXT-X-DISCONTINUITY-SEQUENCE") != false) goto L_0x00c2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00bb, code lost:
        if (r1.equals("#EXT-X-ENDLIST") == false) goto L_0x00be;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00be, code lost:
        r8.add(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00c2, code lost:
        r8.add(r1);
        r7 = g(r6.a, new f.i.a.a.h1.u0.t.h.a(r8, r0), r7.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00d5, code lost:
        return r7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00d6, code lost:
        f.i.a.a.m1.h0.l(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00e0, code lost:
        throw new f.i.a.a.h0("Failed to parse the playlist, could not identify any tags.");
     */
    @Override // f.i.a.a.l1.e0.a
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public f.i.a.a.h1.u0.t.g a(android.net.Uri r7, java.io.InputStream r8) throws java.io.IOException {
        /*
            r6 = this;
            java.io.BufferedReader r0 = new java.io.BufferedReader
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            r1.<init>(r8)
            r0.<init>(r1)
            java.util.ArrayDeque r8 = new java.util.ArrayDeque
            r8.<init>()
            int r1 = r0.read()     // Catch: all -> 0x00e9
            r2 = 239(0xef, float:3.35E-43)
            r3 = 0
            if (r1 != r2) goto L_0x002d
            int r1 = r0.read()     // Catch: all -> 0x00e9
            r2 = 187(0xbb, float:2.62E-43)
            if (r1 != r2) goto L_0x004e
            int r1 = r0.read()     // Catch: all -> 0x00e9
            r2 = 191(0xbf, float:2.68E-43)
            if (r1 == r2) goto L_0x0029
            goto L_0x004e
        L_0x0029:
            int r1 = r0.read()     // Catch: all -> 0x00e9
        L_0x002d:
            r2 = 1
            int r1 = m(r0, r2, r1)     // Catch: all -> 0x00e9
            r2 = 7
            r4 = 0
        L_0x0034:
            if (r4 >= r2) goto L_0x0046
            java.lang.String r5 = "#EXTM3U"
            char r5 = r5.charAt(r4)     // Catch: all -> 0x00e9
            if (r1 == r5) goto L_0x003f
            goto L_0x004e
        L_0x003f:
            int r1 = r0.read()     // Catch: all -> 0x00e9
            int r4 = r4 + 1
            goto L_0x0034
        L_0x0046:
            int r1 = m(r0, r3, r1)     // Catch: all -> 0x00e9
            boolean r3 = f.i.a.a.m1.h0.U(r1)     // Catch: all -> 0x00e9
        L_0x004e:
            if (r3 == 0) goto L_0x00e1
        L_0x0050:
            java.lang.String r1 = r0.readLine()     // Catch: all -> 0x00e9
            if (r1 == 0) goto L_0x00d6
            java.lang.String r1 = r1.trim()     // Catch: all -> 0x00e9
            boolean r2 = r1.isEmpty()     // Catch: all -> 0x00e9
            if (r2 == 0) goto L_0x0061
            goto L_0x0050
        L_0x0061:
            java.lang.String r2 = "#EXT-X-STREAM-INF"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 == 0) goto L_0x007d
            r8.add(r1)     // Catch: all -> 0x00e9
            f.i.a.a.h1.u0.t.h$a r1 = new f.i.a.a.h1.u0.t.h$a     // Catch: all -> 0x00e9
            r1.<init>(r8, r0)     // Catch: all -> 0x00e9
            java.lang.String r7 = r7.toString()     // Catch: all -> 0x00e9
            f.i.a.a.h1.u0.t.e r7 = f(r1, r7)     // Catch: all -> 0x00e9
        L_0x0079:
            f.i.a.a.m1.h0.l(r0)
            goto L_0x00d5
        L_0x007d:
            java.lang.String r2 = "#EXT-X-TARGETDURATION"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-MEDIA-SEQUENCE"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXTINF"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-KEY"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-BYTERANGE"
            boolean r2 = r1.startsWith(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-DISCONTINUITY"
            boolean r2 = r1.equals(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-DISCONTINUITY-SEQUENCE"
            boolean r2 = r1.equals(r2)     // Catch: all -> 0x00e9
            if (r2 != 0) goto L_0x00c2
            java.lang.String r2 = "#EXT-X-ENDLIST"
            boolean r2 = r1.equals(r2)     // Catch: all -> 0x00e9
            if (r2 == 0) goto L_0x00be
            goto L_0x00c2
        L_0x00be:
            r8.add(r1)     // Catch: all -> 0x00e9
            goto L_0x0050
        L_0x00c2:
            r8.add(r1)     // Catch: all -> 0x00e9
            f.i.a.a.h1.u0.t.e r1 = r6.a     // Catch: all -> 0x00e9
            f.i.a.a.h1.u0.t.h$a r2 = new f.i.a.a.h1.u0.t.h$a     // Catch: all -> 0x00e9
            r2.<init>(r8, r0)     // Catch: all -> 0x00e9
            java.lang.String r7 = r7.toString()     // Catch: all -> 0x00e9
            f.i.a.a.h1.u0.t.f r7 = g(r1, r2, r7)     // Catch: all -> 0x00e9
            goto L_0x0079
        L_0x00d5:
            return r7
        L_0x00d6:
            f.i.a.a.m1.h0.l(r0)
            f.i.a.a.h0 r7 = new f.i.a.a.h0
            java.lang.String r8 = "Failed to parse the playlist, could not identify any tags."
            r7.<init>(r8)
            throw r7
        L_0x00e1:
            f.i.a.a.h1.q0 r8 = new f.i.a.a.h1.q0     // Catch: all -> 0x00e9
            java.lang.String r1 = "Input does not start with the #EXTM3U header."
            r8.<init>(r1, r7)     // Catch: all -> 0x00e9
            throw r8     // Catch: all -> 0x00e9
        L_0x00e9:
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
