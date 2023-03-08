package f.i.a.a.h1.v0.e;

import android.net.Uri;
import android.util.Base64;
import android.util.Pair;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.b1.u.k;
import f.i.a.a.h0;
import f.i.a.a.h1.v0.e.a;
import f.i.a.a.l1.e0;
import f.i.a.a.m1.i;
import f.i.a.a.z0.e;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: SsManifestParser.java */
/* loaded from: classes.dex */
public class b implements e0.a<f.i.a.a.h1.v0.e.a> {
    public final XmlPullParserFactory a;

    /* compiled from: SsManifestParser.java */
    /* loaded from: classes.dex */
    public static abstract class a {
        public final String a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final a f5256c;

        /* renamed from: d  reason: collision with root package name */
        public final List<Pair<String, Object>> f5257d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f5256c = aVar;
            this.a = str;
            this.b = str2;
        }

        public void a(Object obj) {
        }

        public abstract Object b();

        public final Object c(String str) {
            for (int i2 = 0; i2 < this.f5257d.size(); i2++) {
                Pair<String, Object> pair = this.f5257d.get(i2);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f5256c;
            if (aVar == null) {
                return null;
            }
            return aVar.c(str);
        }

        public boolean d(String str) {
            return false;
        }

        public final Object e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            boolean z = false;
            int i2 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                a aVar = null;
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.b.equals(name)) {
                        k(xmlPullParser);
                        z = true;
                    } else if (z) {
                        if (i2 > 0) {
                            i2++;
                        } else if (d(name)) {
                            k(xmlPullParser);
                        } else {
                            String str = this.a;
                            if ("QualityLevel".equals(name)) {
                                aVar = new d(this, str);
                            } else if ("Protection".equals(name)) {
                                aVar = new c(this, str);
                            } else if ("StreamIndex".equals(name)) {
                                aVar = new f(this, str);
                            }
                            if (aVar == null) {
                                i2 = 1;
                            } else {
                                a(aVar.e(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z && i2 == 0) {
                        l(xmlPullParser);
                    }
                } else if (!z) {
                    continue;
                } else if (i2 > 0) {
                    i2--;
                } else {
                    String name2 = xmlPullParser.getName();
                    f(xmlPullParser);
                    if (!d(name2)) {
                        return b();
                    }
                }
                xmlPullParser.next();
            }
        }

        public void f(XmlPullParser xmlPullParser) {
        }

        public final int g(XmlPullParser xmlPullParser, String str, int i2) throws h0 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new h0(e2);
                }
            }
            return i2;
        }

        public final long h(XmlPullParser xmlPullParser, String str, long j2) throws h0 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new h0(e2);
                }
            }
            return j2;
        }

        public final int i(XmlPullParser xmlPullParser, String str) throws h0 {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new h0(e2);
                }
            }
            throw new C0078b(str);
        }

        public final String j(XmlPullParser xmlPullParser, String str) throws C0078b {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new C0078b(str);
        }

        public abstract void k(XmlPullParser xmlPullParser) throws h0;

        public void l(XmlPullParser xmlPullParser) {
        }
    }

    /* compiled from: SsManifestParser.java */
    /* renamed from: f.i.a.a.h1.v0.e.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0078b extends h0 {
        public C0078b(String str) {
            super(f.b.a.a.a.f("Missing required field: ", str));
        }
    }

    /* compiled from: SsManifestParser.java */
    /* loaded from: classes.dex */
    public static class c extends a {

        /* renamed from: e  reason: collision with root package name */
        public boolean f5258e;

        /* renamed from: f  reason: collision with root package name */
        public UUID f5259f;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f5260g;

        public c(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        public static void m(byte[] bArr, int i2, int i3) {
            byte b = bArr[i2];
            bArr[i2] = bArr[i3];
            bArr[i3] = b;
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public Object b() {
            UUID uuid = this.f5259f;
            byte[] i2 = h.i(uuid, this.f5260g);
            byte[] bArr = this.f5260g;
            k[] kVarArr = new k[1];
            StringBuilder sb = new StringBuilder();
            for (int i3 = 0; i3 < bArr.length; i3 += 2) {
                sb.append((char) bArr[i3]);
            }
            String sb2 = sb.toString();
            byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
            m(decode, 0, 3);
            byte b = decode[1];
            decode[1] = decode[2];
            decode[2] = b;
            byte b2 = decode[4];
            decode[4] = decode[5];
            decode[5] = b2;
            byte b3 = decode[6];
            decode[6] = decode[7];
            decode[7] = b3;
            kVarArr[0] = new k(true, null, 8, decode, 0, 0, null);
            return new a.C0077a(uuid, i2, kVarArr);
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public boolean d(String str) {
            return "ProtectionHeader".equals(str);
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void f(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f5258e = false;
            }
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void k(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f5258e = true;
                String attributeValue = xmlPullParser.getAttributeValue(null, "SystemID");
                if (attributeValue.charAt(0) == '{' && attributeValue.charAt(attributeValue.length() - 1) == '}') {
                    attributeValue = attributeValue.substring(1, attributeValue.length() - 1);
                }
                this.f5259f = UUID.fromString(attributeValue);
            }
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void l(XmlPullParser xmlPullParser) {
            if (this.f5258e) {
                this.f5260g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }
    }

    /* compiled from: SsManifestParser.java */
    /* loaded from: classes.dex */
    public static class d extends a {

        /* renamed from: e  reason: collision with root package name */
        public b0 f5261e;

        public d(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x003a, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static java.util.List<byte[]> m(java.lang.String r9) {
            /*
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                boolean r1 = android.text.TextUtils.isEmpty(r9)
                if (r1 != 0) goto L7d
                byte[] r9 = f.i.a.a.m1.h0.x(r9)
                r1 = 0
                boolean r2 = f.i.a.a.m1.i.c(r9, r1)
                if (r2 != 0) goto L18
                r1 = 0
                goto L74
            L18:
                java.util.ArrayList r2 = new java.util.ArrayList
                r2.<init>()
                r3 = 0
            L1e:
                java.lang.Integer r4 = java.lang.Integer.valueOf(r3)
                r2.add(r4)
                byte[] r4 = f.i.a.a.m1.i.a
                int r5 = r4.length
                int r3 = r3 + r5
                int r5 = r9.length
                int r4 = r4.length
                int r5 = r5 - r4
            L2c:
                r4 = -1
                if (r3 > r5) goto L39
                boolean r6 = f.i.a.a.m1.i.c(r9, r3)
                if (r6 == 0) goto L36
                goto L3a
            L36:
                int r3 = r3 + 1
                goto L2c
            L39:
                r3 = -1
            L3a:
                if (r3 != r4) goto L1e
                int r3 = r2.size()
                byte[][] r3 = new byte[r3]
                r5 = 0
            L43:
                int r6 = r2.size()
                if (r5 >= r6) goto L73
                java.lang.Object r6 = r2.get(r5)
                java.lang.Integer r6 = (java.lang.Integer) r6
                int r6 = r6.intValue()
                int r7 = r2.size()
                int r7 = r7 + r4
                if (r5 >= r7) goto L67
                int r7 = r5 + 1
                java.lang.Object r7 = r2.get(r7)
                java.lang.Integer r7 = (java.lang.Integer) r7
                int r7 = r7.intValue()
                goto L68
            L67:
                int r7 = r9.length
            L68:
                int r7 = r7 - r6
                byte[] r8 = new byte[r7]
                java.lang.System.arraycopy(r9, r6, r8, r1, r7)
                r3[r5] = r8
                int r5 = r5 + 1
                goto L43
            L73:
                r1 = r3
            L74:
                if (r1 != 0) goto L7a
                r0.add(r9)
                goto L7d
            L7a:
                java.util.Collections.addAll(r0, r1)
            L7d:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.v0.e.b.d.m(java.lang.String):java.util.List");
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public Object b() {
            return this.f5261e;
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void k(XmlPullParser xmlPullParser) throws h0 {
            String str;
            int intValue = ((Integer) c("Type")).intValue();
            String attributeValue = xmlPullParser.getAttributeValue(null, "Index");
            String str2 = (String) c("Name");
            int i2 = i(xmlPullParser, "Bitrate");
            String j2 = j(xmlPullParser, "FourCC");
            if (j2.equalsIgnoreCase("H264") || j2.equalsIgnoreCase("X264") || j2.equalsIgnoreCase("AVC1") || j2.equalsIgnoreCase("DAVC")) {
                str = "video/avc";
            } else if (j2.equalsIgnoreCase("AAC") || j2.equalsIgnoreCase("AACL") || j2.equalsIgnoreCase("AACH") || j2.equalsIgnoreCase("AACP")) {
                str = "audio/mp4a-latm";
            } else if (j2.equalsIgnoreCase("TTML") || j2.equalsIgnoreCase("DFXP")) {
                str = "application/ttml+xml";
            } else if (j2.equalsIgnoreCase("ac-3") || j2.equalsIgnoreCase("dac3")) {
                str = "audio/ac3";
            } else if (j2.equalsIgnoreCase("ec-3") || j2.equalsIgnoreCase("dec3")) {
                str = "audio/eac3";
            } else if (j2.equalsIgnoreCase("dtsc")) {
                str = "audio/vnd.dts";
            } else if (j2.equalsIgnoreCase("dtsh") || j2.equalsIgnoreCase("dtsl")) {
                str = "audio/vnd.dts.hd";
            } else if (j2.equalsIgnoreCase("dtse")) {
                str = "audio/vnd.dts.hd;profile=lbr";
            } else {
                str = j2.equalsIgnoreCase("opus") ? "audio/opus" : null;
            }
            if (intValue == 2) {
                this.f5261e = b0.s(attributeValue, str2, "video/mp4", str, null, i2, i(xmlPullParser, "MaxWidth"), i(xmlPullParser, "MaxHeight"), -1.0f, m(xmlPullParser.getAttributeValue(null, "CodecPrivateData")), 0, 0);
                return;
            }
            char c2 = 65535;
            int i3 = 0;
            if (intValue != 1) {
                if (intValue == 3) {
                    String str3 = (String) c("Subtype");
                    int hashCode = str3.hashCode();
                    if (hashCode != 2061026) {
                        if (hashCode == 2094737 && str3.equals("DESC")) {
                            c2 = 1;
                        }
                    } else if (str3.equals("CAPT")) {
                        c2 = 0;
                    }
                    this.f5261e = b0.o(attributeValue, str2, "application/mp4", str, null, i2, 0, c2 != 0 ? c2 != 1 ? 0 : 1024 : 64, (String) c("Language"));
                    return;
                }
                this.f5261e = b0.k(attributeValue, str2, "application/mp4", str, null, i2, 0, 0, null);
                return;
            }
            if (str == null) {
                str = "audio/mp4a-latm";
            }
            int i4 = i(xmlPullParser, "Channels");
            int i5 = i(xmlPullParser, "SamplingRate");
            List<byte[]> m2 = m(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
            if (((ArrayList) m2).isEmpty() && "audio/mp4a-latm".equals(str)) {
                int i6 = 0;
                int i7 = -1;
                while (true) {
                    int[] iArr = i.b;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    if (i5 == iArr[i6]) {
                        i7 = i6;
                    }
                    i6++;
                }
                int i8 = -1;
                while (true) {
                    int[] iArr2 = i.f5747c;
                    if (i3 >= iArr2.length) {
                        break;
                    }
                    if (i4 == iArr2[i3]) {
                        i8 = i3;
                    }
                    i3++;
                }
                if (i5 != -1 && i8 != -1) {
                    m2 = Collections.singletonList(i.a(2, i7, i8));
                } else {
                    throw new IllegalArgumentException("Invalid sample rate or number of channels: " + i5 + ", " + i4);
                }
            }
            this.f5261e = b0.g(attributeValue, str2, "audio/mp4", str, null, i2, i4, i5, m2, 0, 0, (String) c("Language"));
        }
    }

    /* compiled from: SsManifestParser.java */
    /* loaded from: classes.dex */
    public static class e extends a {

        /* renamed from: e  reason: collision with root package name */
        public final List<a.b> f5262e;

        /* renamed from: f  reason: collision with root package name */
        public int f5263f;

        /* renamed from: g  reason: collision with root package name */
        public int f5264g;

        /* renamed from: h  reason: collision with root package name */
        public long f5265h;

        /* renamed from: i  reason: collision with root package name */
        public long f5266i;

        /* renamed from: j  reason: collision with root package name */
        public long f5267j;

        /* renamed from: k  reason: collision with root package name */
        public int f5268k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f5269l;

        /* renamed from: m  reason: collision with root package name */
        public a.C0077a f5270m;

        public e(a aVar, String str) {
            super(null, str, "SmoothStreamingMedia");
            this.f5268k = -1;
            this.f5270m = null;
            this.f5262e = new LinkedList();
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void a(Object obj) {
            if (obj instanceof a.b) {
                this.f5262e.add((a.b) obj);
            } else if (obj instanceof a.C0077a) {
                h.v(this.f5270m == null);
                this.f5270m = (a.C0077a) obj;
            }
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public Object b() {
            int size = this.f5262e.size();
            a.b[] bVarArr = new a.b[size];
            this.f5262e.toArray(bVarArr);
            a.C0077a c0077a = this.f5270m;
            if (c0077a != null) {
                f.i.a.a.z0.e eVar = new f.i.a.a.z0.e(null, true, new e.b(c0077a.a, "video/mp4", c0077a.b));
                for (int i2 = 0; i2 < size; i2++) {
                    a.b bVar = bVarArr[i2];
                    int i3 = bVar.a;
                    if (i3 == 2 || i3 == 1) {
                        b0[] b0VarArr = bVar.f5252j;
                        for (int i4 = 0; i4 < b0VarArr.length; i4++) {
                            b0VarArr[i4] = b0VarArr[i4].a(eVar);
                        }
                    }
                }
            }
            return new f.i.a.a.h1.v0.e.a(this.f5263f, this.f5264g, this.f5265h, this.f5266i, this.f5267j, this.f5268k, this.f5269l, this.f5270m, bVarArr);
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void k(XmlPullParser xmlPullParser) throws h0 {
            this.f5263f = i(xmlPullParser, "MajorVersion");
            this.f5264g = i(xmlPullParser, "MinorVersion");
            this.f5265h = h(xmlPullParser, "TimeScale", 10000000L);
            String attributeValue = xmlPullParser.getAttributeValue(null, "Duration");
            if (attributeValue != null) {
                try {
                    this.f5266i = Long.parseLong(attributeValue);
                    this.f5267j = h(xmlPullParser, "DVRWindowLength", 0L);
                    this.f5268k = g(xmlPullParser, "LookaheadCount", -1);
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "IsLive");
                    this.f5269l = attributeValue2 != null ? Boolean.parseBoolean(attributeValue2) : false;
                    this.f5257d.add(Pair.create("TimeScale", Long.valueOf(this.f5265h)));
                    return;
                } catch (NumberFormatException e2) {
                    throw new h0(e2);
                }
            }
            throw new C0078b("Duration");
        }
    }

    /* compiled from: SsManifestParser.java */
    /* loaded from: classes.dex */
    public static class f extends a {

        /* renamed from: e  reason: collision with root package name */
        public final String f5271e;

        /* renamed from: f  reason: collision with root package name */
        public final List<b0> f5272f;

        /* renamed from: g  reason: collision with root package name */
        public int f5273g;

        /* renamed from: h  reason: collision with root package name */
        public String f5274h;

        /* renamed from: i  reason: collision with root package name */
        public long f5275i;

        /* renamed from: j  reason: collision with root package name */
        public String f5276j;

        /* renamed from: k  reason: collision with root package name */
        public String f5277k;

        /* renamed from: l  reason: collision with root package name */
        public int f5278l;

        /* renamed from: m  reason: collision with root package name */
        public int f5279m;
        public int n;
        public int o;
        public String p;
        public ArrayList<Long> q;
        public long r;

        public f(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f5271e = str;
            this.f5272f = new LinkedList();
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void a(Object obj) {
            if (obj instanceof b0) {
                this.f5272f.add((b0) obj);
            }
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public Object b() {
            b0[] b0VarArr = new b0[this.f5272f.size()];
            this.f5272f.toArray(b0VarArr);
            String str = this.f5271e;
            String str2 = this.f5277k;
            int i2 = this.f5273g;
            String str3 = this.f5274h;
            long j2 = this.f5275i;
            String str4 = this.f5276j;
            int i3 = this.f5278l;
            int i4 = this.f5279m;
            int i5 = this.n;
            int i6 = this.o;
            String str5 = this.p;
            ArrayList<Long> arrayList = this.q;
            return new a.b(str, str2, i2, str3, j2, str4, i3, i4, i5, i6, str5, b0VarArr, arrayList, f.i.a.a.m1.h0.i0(arrayList, 1000000L, j2), f.i.a.a.m1.h0.h0(this.r, 1000000L, j2));
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public boolean d(String str) {
            return "c".equals(str);
        }

        @Override // f.i.a.a.h1.v0.e.b.a
        public void k(XmlPullParser xmlPullParser) throws h0 {
            int i2 = 1;
            if ("c".equals(xmlPullParser.getName())) {
                int size = this.q.size();
                long h2 = h(xmlPullParser, com.umeng.commonsdk.proguard.e.ar, -9223372036854775807L);
                if (h2 == -9223372036854775807L) {
                    if (size == 0) {
                        h2 = 0;
                    } else if (this.r != -1) {
                        h2 = this.r + this.q.get(size - 1).longValue();
                    } else {
                        throw new h0("Unable to infer start time");
                    }
                }
                this.q.add(Long.valueOf(h2));
                this.r = h(xmlPullParser, com.umeng.commonsdk.proguard.e.am, -9223372036854775807L);
                long h3 = h(xmlPullParser, "r", 1L);
                if (h3 > 1 && this.r == -9223372036854775807L) {
                    throw new h0("Repeated chunk with unspecified duration");
                }
                while (true) {
                    long j2 = i2;
                    if (j2 >= h3) {
                        return;
                    }
                    this.q.add(Long.valueOf((this.r * j2) + h2));
                    i2++;
                }
            } else {
                String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
                if (attributeValue != null) {
                    if (!"audio".equalsIgnoreCase(attributeValue)) {
                        if ("video".equalsIgnoreCase(attributeValue)) {
                            i2 = 2;
                        } else if (!"text".equalsIgnoreCase(attributeValue)) {
                            throw new h0(f.b.a.a.a.g("Invalid key value[", attributeValue, "]"));
                        } else {
                            i2 = 3;
                        }
                    }
                    this.f5273g = i2;
                    this.f5257d.add(Pair.create("Type", Integer.valueOf(i2)));
                    if (this.f5273g == 3) {
                        this.f5274h = j(xmlPullParser, "Subtype");
                    } else {
                        this.f5274h = xmlPullParser.getAttributeValue(null, "Subtype");
                    }
                    this.f5257d.add(Pair.create("Subtype", this.f5274h));
                    this.f5276j = xmlPullParser.getAttributeValue(null, "Name");
                    this.f5277k = j(xmlPullParser, "Url");
                    this.f5278l = g(xmlPullParser, "MaxWidth", -1);
                    this.f5279m = g(xmlPullParser, "MaxHeight", -1);
                    this.n = g(xmlPullParser, "DisplayWidth", -1);
                    this.o = g(xmlPullParser, "DisplayHeight", -1);
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "Language");
                    this.p = attributeValue2;
                    this.f5257d.add(Pair.create("Language", attributeValue2));
                    long g2 = g(xmlPullParser, "TimeScale", -1);
                    this.f5275i = g2;
                    if (g2 == -1) {
                        this.f5275i = ((Long) c("TimeScale")).longValue();
                    }
                    this.q = new ArrayList<>();
                    return;
                }
                throw new C0078b("Type");
            }
        }
    }

    public b() {
        try {
            this.a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    @Override // f.i.a.a.l1.e0.a
    public f.i.a.a.h1.v0.e.a a(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.a.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (f.i.a.a.h1.v0.e.a) new e(null, uri.toString()).e(newPullParser);
        } catch (XmlPullParserException e2) {
            throw new h0(e2);
        }
    }
}
