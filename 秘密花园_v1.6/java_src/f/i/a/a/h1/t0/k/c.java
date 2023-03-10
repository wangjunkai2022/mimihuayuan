package f.i.a.a.h1.t0.k;

import android.net.Uri;
import android.text.TextUtils;
import f.i.a.a.b0;
import f.i.a.a.h1.t0.k.j;
import f.i.a.a.l1.e0;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.r;
import f.i.a.a.z0.e;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: DashManifestParser.java */
/* loaded from: classes.dex */
public class c extends DefaultHandler implements e0.a<b> {
    public static final Pattern b = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f5050c = Pattern.compile("CC([1-4])=.*");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f5051d = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");
    public final XmlPullParserFactory a;

    /* compiled from: DashManifestParser.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final b0 a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final j f5052c;

        /* renamed from: d  reason: collision with root package name */
        public final String f5053d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList<e.b> f5054e;

        /* renamed from: f  reason: collision with root package name */
        public final ArrayList<d> f5055f;

        /* renamed from: g  reason: collision with root package name */
        public final long f5056g;

        public a(b0 b0Var, String str, j jVar, String str2, ArrayList<e.b> arrayList, ArrayList<d> arrayList2, long j2) {
            this.a = b0Var;
            this.b = str;
            this.f5052c = jVar;
            this.f5053d = str2;
            this.f5054e = arrayList;
            this.f5055f = arrayList2;
            this.f5056g = j2;
        }
    }

    public c() {
        try {
            this.a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public static int b(int i2, int i3) {
        if (i2 == -1) {
            return i3;
        }
        if (i3 == -1) {
            return i2;
        }
        c.a.a.b.g.h.v(i2 == i3);
        return i2;
    }

    public static void c(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        if (c.a.a.b.g.h.n0(xmlPullParser)) {
            int i2 = 1;
            while (i2 != 0) {
                xmlPullParser.next();
                if (c.a.a.b.g.h.n0(xmlPullParser)) {
                    i2++;
                } else {
                    if (xmlPullParser.getEventType() == 3) {
                        i2--;
                    }
                }
            }
        }
    }

    public static boolean d(String str) {
        return r.i(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/cea-708".equals(str) || "application/cea-608".equals(str);
    }

    public static d i(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = "";
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue2 == null) {
            attributeValue2 = null;
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "id");
        String str2 = attributeValue3 != null ? attributeValue3 : null;
        do {
            xmlPullParser.next();
        } while (!c.a.a.b.g.h.j0(xmlPullParser, str));
        return new d(attributeValue, attributeValue2, str2);
    }

    public static long j(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j2;
        }
        Matcher matcher = h0.f5751h.matcher(attributeValue);
        if (matcher.matches()) {
            boolean isEmpty = true ^ TextUtils.isEmpty(matcher.group(1));
            String group = matcher.group(3);
            double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
            String group2 = matcher.group(5);
            double parseDouble2 = parseDouble + (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d);
            String group3 = matcher.group(7);
            double parseDouble3 = parseDouble2 + (group3 != null ? Double.parseDouble(group3) * 86400.0d : 0.0d);
            String group4 = matcher.group(10);
            double parseDouble4 = parseDouble3 + (group4 != null ? Double.parseDouble(group4) * 3600.0d : 0.0d);
            String group5 = matcher.group(12);
            double parseDouble5 = parseDouble4 + (group5 != null ? Double.parseDouble(group5) * 60.0d : 0.0d);
            String group6 = matcher.group(14);
            long parseDouble6 = (long) ((parseDouble5 + (group6 != null ? Double.parseDouble(group6) : 0.0d)) * 1000.0d);
            return isEmpty ? -parseDouble6 : parseDouble6;
        }
        return (long) (Double.parseDouble(attributeValue) * 3600.0d * 1000.0d);
    }

    public static float k(XmlPullParser xmlPullParser, float f2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = b.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                String group = matcher.group(2);
                return !TextUtils.isEmpty(group) ? parseInt / Integer.parseInt(group) : parseInt;
            }
            return f2;
        }
        return f2;
    }

    public static int l(XmlPullParser xmlPullParser, String str, int i2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i2 : Integer.parseInt(attributeValue);
    }

    public static long m(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j2 : Long.parseLong(attributeValue);
    }

    @Override // f.i.a.a.l1.e0.a
    public b a(Uri uri, InputStream inputStream) throws IOException {
        try {
            XmlPullParser newPullParser = this.a.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return n(newPullParser, uri.toString());
            }
            throw new f.i.a.a.h0("inputStream does not contain a valid media presentation description");
        } catch (XmlPullParserException e2) {
            throw new f.i.a.a.h0(e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int e(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String p0;
        char c2;
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = null;
        }
        int i2 = -1;
        if ("urn:mpeg:dash:23003:3:audio_channel_configuration:2011".equals(attributeValue)) {
            i2 = l(xmlPullParser, "value", -1);
        } else if ("tag:dolby.com,2014:dash:audio_channel_configuration:2011".equals(attributeValue) && (p0 = h0.p0(xmlPullParser.getAttributeValue(null, "value"))) != null) {
            switch (p0.hashCode()) {
                case 1596796:
                    if (p0.equals("4000")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2937391:
                    if (p0.equals("a000")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3094035:
                    if (p0.equals("f801")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3133436:
                    if (p0.equals("fa01")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                i2 = 1;
            } else if (c2 == 1) {
                i2 = 2;
            } else if (c2 == 2) {
                i2 = 6;
            } else if (c2 == 3) {
                i2 = 8;
            }
        }
        do {
            xmlPullParser.next();
        } while (!c.a.a.b.g.h.j0(xmlPullParser, "AudioChannelConfiguration"));
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0175 A[LOOP:0: B:51:0x00c2->B:95:0x0175, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0166 A[EDGE_INSN: B:96:0x0166->B:91:0x0166 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.Pair<java.lang.String, f.i.a.a.z0.e.b> f(org.xmlpull.v1.XmlPullParser r18) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.t0.k.c.f(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    public int g(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        return "text".equals(attributeValue) ? 3 : -1;
    }

    public int h(String str) {
        if (str == null) {
            return 0;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case -2060497896:
                if (str.equals("subtitle")) {
                    c2 = 7;
                    break;
                }
                break;
            case -1724546052:
                if (str.equals("description")) {
                    c2 = '\t';
                    break;
                }
                break;
            case -1580883024:
                if (str.equals("enhanced-audio-intelligibility")) {
                    c2 = '\n';
                    break;
                }
                break;
            case -1408024454:
                if (str.equals("alternate")) {
                    c2 = 1;
                    break;
                }
                break;
            case 99825:
                if (str.equals("dub")) {
                    c2 = 4;
                    break;
                }
                break;
            case 3343801:
                if (str.equals("main")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3530173:
                if (str.equals("sign")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 552573414:
                if (str.equals("caption")) {
                    c2 = 6;
                    break;
                }
                break;
            case 899152809:
                if (str.equals("commentary")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1629013393:
                if (str.equals("emergency")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1855372047:
                if (str.equals("supplementary")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 2048;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:313:0x075f  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0762  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x077f  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x07ae A[LOOP:7: B:127:0x041d->B:330:0x07ae, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x095f A[LOOP:3: B:80:0x02ab->B:393:0x095f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x0bfe A[LOOP:2: B:72:0x01b6->B:474:0x0bfe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:491:0x0c59  */
    /* JADX WARN: Removed duplicated region for block: B:493:0x0c6e  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0b93 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:501:0x0853 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:510:0x04ec A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.i.a.a.h1.t0.k.b n(org.xmlpull.v1.XmlPullParser r109, java.lang.String r110) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 3254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.h1.t0.k.c.n(org.xmlpull.v1.XmlPullParser, java.lang.String):f.i.a.a.h1.t0.k.b");
    }

    public h o(XmlPullParser xmlPullParser, String str, String str2) {
        long j2;
        long j3;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j2 = Long.parseLong(split[0]);
            if (split.length == 2) {
                j3 = (Long.parseLong(split[1]) - j2) + 1;
                return new h(attributeValue, j2, j3);
            }
        } else {
            j2 = 0;
        }
        j3 = -1;
        return new h(attributeValue, j2, j3);
    }

    public j.e p(XmlPullParser xmlPullParser, j.e eVar) throws XmlPullParserException, IOException {
        long j2;
        long j3;
        long m2 = m(xmlPullParser, "timescale", eVar != null ? eVar.b : 1L);
        long m3 = m(xmlPullParser, "presentationTimeOffset", eVar != null ? eVar.f5074c : 0L);
        long j4 = eVar != null ? eVar.f5082d : 0L;
        long j5 = eVar != null ? eVar.f5083e : 0L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            long parseLong = Long.parseLong(split[0]);
            j2 = (Long.parseLong(split[1]) - parseLong) + 1;
            j3 = parseLong;
        } else {
            j2 = j5;
            j3 = j4;
        }
        h hVar = eVar != null ? eVar.a : null;
        do {
            xmlPullParser.next();
            if (c.a.a.b.g.h.o0(xmlPullParser, "Initialization")) {
                hVar = o(xmlPullParser, "sourceURL", "range");
            } else {
                c(xmlPullParser);
            }
        } while (!c.a.a.b.g.h.j0(xmlPullParser, "SegmentBase"));
        return new j.e(hVar, m2, m3, j3, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j.b q(XmlPullParser xmlPullParser, j.b bVar) throws XmlPullParserException, IOException {
        List list;
        long m2 = m(xmlPullParser, "timescale", bVar != null ? bVar.b : 1L);
        long m3 = m(xmlPullParser, "presentationTimeOffset", bVar != null ? bVar.f5074c : 0L);
        long m4 = m(xmlPullParser, "duration", bVar != null ? bVar.f5076e : -9223372036854775807L);
        long m5 = m(xmlPullParser, "startNumber", bVar != null ? bVar.f5075d : 1L);
        List list2 = null;
        h hVar = null;
        List<j.d> list3 = null;
        do {
            xmlPullParser.next();
            if (c.a.a.b.g.h.o0(xmlPullParser, "Initialization")) {
                hVar = o(xmlPullParser, "sourceURL", "range");
            } else if (c.a.a.b.g.h.o0(xmlPullParser, "SegmentTimeline")) {
                list3 = s(xmlPullParser);
            } else if (c.a.a.b.g.h.o0(xmlPullParser, "SegmentURL")) {
                if (list2 == null) {
                    list2 = new ArrayList();
                }
                list2.add(o(xmlPullParser, "media", "mediaRange"));
            } else {
                c(xmlPullParser);
            }
        } while (!c.a.a.b.g.h.j0(xmlPullParser, "SegmentList"));
        if (bVar != null) {
            if (hVar == null) {
                hVar = bVar.a;
            }
            if (list3 == null) {
                list3 = bVar.f5077f;
            }
            if (list2 == null) {
                list = bVar.f5078g;
                return new j.b(hVar, m2, m3, m5, m4, list3, list);
            }
        }
        list = list2;
        return new j.b(hVar, m2, m3, m5, m4, list3, list);
    }

    public j.c r(XmlPullParser xmlPullParser, j.c cVar, List<d> list) throws XmlPullParserException, IOException {
        long j2;
        h hVar;
        List<j.d> list2;
        long m2 = m(xmlPullParser, "timescale", cVar != null ? cVar.b : 1L);
        long m3 = m(xmlPullParser, "presentationTimeOffset", cVar != null ? cVar.f5074c : 0L);
        long m4 = m(xmlPullParser, "duration", cVar != null ? cVar.f5076e : -9223372036854775807L);
        long m5 = m(xmlPullParser, "startNumber", cVar != null ? cVar.f5075d : 1L);
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                j2 = -1;
                break;
            }
            d dVar = list.get(i2);
            if ("http://dashif.org/guidelines/last-segment-number".equalsIgnoreCase(dVar.a)) {
                j2 = Long.parseLong(dVar.b);
                break;
            }
            i2++;
        }
        long j3 = j2;
        h hVar2 = null;
        l t = t(xmlPullParser, "media", cVar != null ? cVar.f5080h : null);
        l t2 = t(xmlPullParser, "initialization", cVar != null ? cVar.f5079g : null);
        List<j.d> list3 = null;
        do {
            xmlPullParser.next();
            if (c.a.a.b.g.h.o0(xmlPullParser, "Initialization")) {
                hVar2 = o(xmlPullParser, "sourceURL", "range");
            } else if (c.a.a.b.g.h.o0(xmlPullParser, "SegmentTimeline")) {
                list3 = s(xmlPullParser);
            } else {
                c(xmlPullParser);
            }
        } while (!c.a.a.b.g.h.j0(xmlPullParser, "SegmentTemplate"));
        if (cVar != null) {
            if (hVar2 == null) {
                hVar2 = cVar.a;
            }
            if (list3 == null) {
                list2 = cVar.f5077f;
                hVar = hVar2;
                return new j.c(hVar, m2, m3, m5, j3, m4, list2, t2, t);
            }
        }
        hVar = hVar2;
        list2 = list3;
        return new j.c(hVar, m2, m3, m5, j3, m4, list2, t2, t);
    }

    public List<j.d> s(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        do {
            xmlPullParser.next();
            if (c.a.a.b.g.h.o0(xmlPullParser, "S")) {
                j2 = m(xmlPullParser, com.umeng.commonsdk.proguard.e.ar, j2);
                long m2 = m(xmlPullParser, com.umeng.commonsdk.proguard.e.am, -9223372036854775807L);
                int l2 = l(xmlPullParser, "r", 0) + 1;
                for (int i2 = 0; i2 < l2; i2++) {
                    arrayList.add(new j.d(j2, m2));
                    j2 += m2;
                }
            } else {
                c(xmlPullParser);
            }
        } while (!c.a.a.b.g.h.j0(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    public l t(XmlPullParser xmlPullParser, String str, l lVar) {
        String str2;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            String[] strArr = new String[5];
            int[] iArr = new int[4];
            String[] strArr2 = new String[4];
            strArr[0] = "";
            int i2 = 0;
            int i3 = 0;
            while (i2 < attributeValue.length()) {
                int indexOf = attributeValue.indexOf("$", i2);
                char c2 = 65535;
                if (indexOf == -1) {
                    strArr[i3] = strArr[i3] + attributeValue.substring(i2);
                    i2 = attributeValue.length();
                } else if (indexOf != i2) {
                    strArr[i3] = strArr[i3] + attributeValue.substring(i2, indexOf);
                    i2 = indexOf;
                } else if (attributeValue.startsWith("$$", i2)) {
                    strArr[i3] = f.b.a.a.a.l(new StringBuilder(), strArr[i3], "$");
                    i2 += 2;
                } else {
                    int i4 = i2 + 1;
                    int indexOf2 = attributeValue.indexOf("$", i4);
                    String substring = attributeValue.substring(i4, indexOf2);
                    if (substring.equals("RepresentationID")) {
                        iArr[i3] = 1;
                    } else {
                        int indexOf3 = substring.indexOf("%0");
                        if (indexOf3 != -1) {
                            str2 = substring.substring(indexOf3);
                            if (!str2.endsWith(com.umeng.commonsdk.proguard.e.am) && !str2.endsWith("x")) {
                                str2 = f.b.a.a.a.f(str2, com.umeng.commonsdk.proguard.e.am);
                            }
                            substring = substring.substring(0, indexOf3);
                        } else {
                            str2 = "%01d";
                        }
                        int hashCode = substring.hashCode();
                        if (hashCode != -1950496919) {
                            if (hashCode != 2606829) {
                                if (hashCode == 38199441 && substring.equals("Bandwidth")) {
                                    c2 = 1;
                                }
                            } else if (substring.equals("Time")) {
                                c2 = 2;
                            }
                        } else if (substring.equals("Number")) {
                            c2 = 0;
                        }
                        if (c2 == 0) {
                            iArr[i3] = 2;
                        } else if (c2 == 1) {
                            iArr[i3] = 3;
                        } else if (c2 == 2) {
                            iArr[i3] = 4;
                        } else {
                            throw new IllegalArgumentException(f.b.a.a.a.f("Invalid template: ", attributeValue));
                        }
                        strArr2[i3] = str2;
                    }
                    i3++;
                    strArr[i3] = "";
                    i2 = indexOf2 + 1;
                }
            }
            return new l(strArr, iArr, strArr2, i3);
        }
        return lVar;
    }
}
