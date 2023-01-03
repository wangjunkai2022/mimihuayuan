package f.i.a.a.b1.u;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import f.i.a.a.b0;
import f.i.a.a.d1.a;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.nio.ByteBuffer;

/* compiled from: MetadataUtil.java */
/* loaded from: classes.dex */
public final class f {
    public static final int a = h0.C("nam");
    public static final int b = h0.C("trk");

    /* renamed from: c  reason: collision with root package name */
    public static final int f4188c = h0.C("cmt");

    /* renamed from: d  reason: collision with root package name */
    public static final int f4189d = h0.C("day");

    /* renamed from: e  reason: collision with root package name */
    public static final int f4190e = h0.C("ART");

    /* renamed from: f  reason: collision with root package name */
    public static final int f4191f = h0.C("too");

    /* renamed from: g  reason: collision with root package name */
    public static final int f4192g = h0.C("alb");

    /* renamed from: h  reason: collision with root package name */
    public static final int f4193h = h0.C("com");

    /* renamed from: i  reason: collision with root package name */
    public static final int f4194i = h0.C("wrt");

    /* renamed from: j  reason: collision with root package name */
    public static final int f4195j = h0.C("lyr");

    /* renamed from: k  reason: collision with root package name */
    public static final int f4196k = h0.C("gen");

    /* renamed from: l  reason: collision with root package name */
    public static final int f4197l = h0.C("covr");

    /* renamed from: m  reason: collision with root package name */
    public static final int f4198m = h0.C("gnre");
    public static final int n = h0.C("grp");
    public static final int o = h0.C("disk");
    public static final int p = h0.C("trkn");
    public static final int q = h0.C("tmpo");
    public static final int r = h0.C("cpil");
    public static final int s = h0.C("aART");
    public static final int t = h0.C("sonm");
    public static final int u = h0.C("soal");
    public static final int v = h0.C("soar");
    public static final int w = h0.C("soaa");
    public static final int x = h0.C("soco");
    public static final int y = h0.C("rtng");
    public static final int z = h0.C("pgap");
    public static final int A = h0.C("sosn");
    public static final int B = h0.C("tvsh");
    public static final int C = h0.C("----");
    public static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    public static b0 a(int i2, b0 b0Var, @Nullable f.i.a.a.d1.a aVar, @Nullable f.i.a.a.d1.a aVar2, f.i.a.a.b1.j jVar) {
        if (i2 == 1) {
            if (jVar.a()) {
                b0Var = b0Var.c(jVar.a, jVar.b);
            }
            return aVar != null ? b0Var.e(aVar) : b0Var;
        } else if (i2 != 2 || aVar2 == null) {
            return b0Var;
        } else {
            int i3 = 0;
            while (true) {
                a.b[] bVarArr = aVar2.a;
                if (i3 >= bVarArr.length) {
                    return b0Var;
                }
                a.b bVar = bVarArr[i3];
                if (bVar instanceof e) {
                    e eVar = (e) bVar;
                    if ("com.android.capture.fps".equals(eVar.a) && eVar.f4187d == 23) {
                        try {
                            b0Var = b0Var.b(ByteBuffer.wrap(eVar.b).asFloatBuffer().get()).e(new f.i.a.a.d1.a(eVar));
                        } catch (NumberFormatException unused) {
                        }
                    }
                }
                i3++;
            }
        }
    }

    @Nullable
    public static f.i.a.a.d1.i.a b(u uVar) {
        int d2 = uVar.d();
        if (uVar.d() == a.T0) {
            int d3 = uVar.d() & ViewCompat.MEASURED_SIZE_MASK;
            String str = d3 == 13 ? "image/jpeg" : d3 == 14 ? "image/png" : null;
            if (str == null) {
                return null;
            }
            uVar.B(4);
            int i2 = d2 - 16;
            byte[] bArr = new byte[i2];
            System.arraycopy(uVar.a, uVar.b, bArr, 0, i2);
            uVar.b += i2;
            return new f.i.a.a.d1.i.a(str, null, 3, bArr);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033 A[Catch: all -> 0x01d7, TRY_LEAVE, TryCatch #0 {all -> 0x01d7, blocks: (B:7:0x001c, B:9:0x0020, B:11:0x0026, B:13:0x002b, B:16:0x0033, B:20:0x003d, B:22:0x0041, B:25:0x004b, B:27:0x004f, B:30:0x0059, B:32:0x005f, B:35:0x0069, B:37:0x006d, B:40:0x0077, B:42:0x007b, B:45:0x0083, B:47:0x0087, B:50:0x0091, B:52:0x0095, B:55:0x009f, B:57:0x00a3, B:60:0x00ad, B:62:0x00b1, B:65:0x00bb, B:67:0x00bf, B:70:0x00c9, B:72:0x00cd, B:75:0x00d7, B:77:0x00db, B:80:0x00e5, B:82:0x00e9, B:85:0x00f3, B:87:0x00f7, B:90:0x0101, B:92:0x0105, B:95:0x010f, B:97:0x0113, B:154:0x01bc, B:101:0x011f, B:103:0x0123, B:105:0x012f, B:106:0x0142, B:109:0x0149, B:111:0x014d, B:114:0x0153, B:116:0x0157, B:119:0x015c, B:121:0x0160, B:124:0x016a, B:126:0x016e, B:129:0x0178, B:131:0x017c, B:134:0x0186, B:136:0x018a, B:139:0x0194, B:141:0x0198, B:144:0x01a2, B:146:0x01a6, B:149:0x01ae, B:151:0x01b2, B:157:0x01c3, B:160:0x01cd), top: B:166:0x0014 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f.i.a.a.d1.a.b c(f.i.a.a.m1.u r6) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.u.f.c(f.i.a.a.m1.u):f.i.a.a.d1.a$b");
    }

    @Nullable
    public static f.i.a.a.d1.i.l d(int i2, String str, u uVar) {
        int d2 = uVar.d();
        if (uVar.d() == a.T0 && d2 >= 22) {
            uVar.B(10);
            int u2 = uVar.u();
            if (u2 > 0) {
                String J = f.b.a.a.a.J("", u2);
                int u3 = uVar.u();
                if (u3 > 0) {
                    J = J + "/" + u3;
                }
                return new f.i.a.a.d1.i.l(str, null, J);
            }
        }
        a.a(i2);
        return null;
    }

    @Nullable
    public static f.i.a.a.d1.i.h e(u uVar, int i2) {
        String str = null;
        String str2 = null;
        int i3 = -1;
        int i4 = -1;
        while (true) {
            int i5 = uVar.b;
            if (i5 >= i2) {
                break;
            }
            int d2 = uVar.d();
            int d3 = uVar.d();
            uVar.B(4);
            if (d3 == a.R0) {
                str = uVar.l(d2 - 12);
            } else if (d3 == a.S0) {
                str2 = uVar.l(d2 - 12);
            } else {
                if (d3 == a.T0) {
                    i3 = i5;
                    i4 = d2;
                }
                uVar.B(d2 - 12);
            }
        }
        if (str == null || str2 == null || i3 == -1) {
            return null;
        }
        uVar.A(i3);
        uVar.B(16);
        return new f.i.a.a.d1.i.i(str, str2, uVar.l(i4 - 16));
    }

    @Nullable
    public static e f(u uVar, int i2, String str) {
        while (true) {
            int i3 = uVar.b;
            if (i3 >= i2) {
                return null;
            }
            int d2 = uVar.d();
            if (uVar.d() == a.T0) {
                int d3 = uVar.d();
                int d4 = uVar.d();
                int i4 = d2 - 16;
                byte[] bArr = new byte[i4];
                System.arraycopy(uVar.a, uVar.b, bArr, 0, i4);
                uVar.b += i4;
                return new e(str, bArr, d4, d3);
            }
            uVar.A(i3 + d2);
        }
    }

    @Nullable
    public static f.i.a.a.d1.i.l g(int i2, String str, u uVar) {
        int d2 = uVar.d();
        if (uVar.d() == a.T0) {
            uVar.B(8);
            return new f.i.a.a.d1.i.l(str, null, uVar.l(d2 - 16));
        }
        a.a(i2);
        return null;
    }

    @Nullable
    public static f.i.a.a.d1.i.h h(int i2, String str, u uVar, boolean z2, boolean z3) {
        int i3 = i(uVar);
        if (z3) {
            i3 = Math.min(1, i3);
        }
        if (i3 < 0) {
            a.a(i2);
            return null;
        } else if (z2) {
            return new f.i.a.a.d1.i.l(str, null, Integer.toString(i3));
        } else {
            return new f.i.a.a.d1.i.e("und", str, Integer.toString(i3));
        }
    }

    public static int i(u uVar) {
        uVar.B(4);
        if (uVar.d() == a.T0) {
            uVar.B(8);
            return uVar.p();
        }
        return -1;
    }
}
