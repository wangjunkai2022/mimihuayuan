package i;

import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tencent.smtt.sdk.TbsListener;
import h.o.c.f;
import h.o.c.g;
import h.s.d;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: CipherSuite.kt */
/* loaded from: classes.dex */
public final class j {
    public final String a;
    public static final b t = new b(null);
    public static final Comparator<String> b = new a();

    /* renamed from: c  reason: collision with root package name */
    public static final Map<String, j> f6472c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    public static final j f6473d = b.a(t, "SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* renamed from: e  reason: collision with root package name */
    public static final j f6474e = b.a(t, "TLS_RSA_WITH_AES_128_CBC_SHA", 47);

    /* renamed from: f  reason: collision with root package name */
    public static final j f6475f = b.a(t, "TLS_RSA_WITH_AES_256_CBC_SHA", 53);

    /* renamed from: g  reason: collision with root package name */
    public static final j f6476g = b.a(t, "TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* renamed from: h  reason: collision with root package name */
    public static final j f6477h = b.a(t, "TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* renamed from: i  reason: collision with root package name */
    public static final j f6478i = b.a(t, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);

    /* renamed from: j  reason: collision with root package name */
    public static final j f6479j = b.a(t, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);

    /* renamed from: k  reason: collision with root package name */
    public static final j f6480k = b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* renamed from: l  reason: collision with root package name */
    public static final j f6481l = b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* renamed from: m  reason: collision with root package name */
    public static final j f6482m = b.a(t, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
    public static final j n = b.a(t, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
    public static final j o = b.a(t, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
    public static final j p = b.a(t, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    public static final j q = b.a(t, "TLS_AES_128_GCM_SHA256", 4865);
    public static final j r = b.a(t, "TLS_AES_256_GCM_SHA384", 4866);
    public static final j s = b.a(t, "TLS_CHACHA20_POLY1305_SHA256", 4867);

    /* compiled from: CipherSuite.kt */
    /* loaded from: classes.dex */
    public static final class a implements Comparator<String> {
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            String str3 = str;
            String str4 = str2;
            if (str3 == null) {
                g.f("a");
                throw null;
            } else if (str4 != null) {
                int i2 = 4;
                int min = Math.min(str3.length(), str4.length());
                while (true) {
                    if (i2 < min) {
                        char charAt = str3.charAt(i2);
                        char charAt2 = str4.charAt(i2);
                        if (charAt == charAt2) {
                            i2++;
                        } else if (charAt < charAt2) {
                            return -1;
                        }
                    } else {
                        int length = str3.length();
                        int length2 = str4.length();
                        if (length == length2) {
                            return 0;
                        }
                        if (length < length2) {
                            return -1;
                        }
                    }
                }
                return 1;
            } else {
                g.f("b");
                throw null;
            }
        }
    }

    /* compiled from: CipherSuite.kt */
    /* loaded from: classes.dex */
    public static final class b {
        public b(f fVar) {
        }

        public static final j a(b bVar, String str, int i2) {
            if (bVar != null) {
                j jVar = new j(str, null);
                j.f6472c.put(str, jVar);
                return jVar;
            }
            throw null;
        }

        public final synchronized j b(String str) {
            j jVar;
            if (str != null) {
                jVar = j.f6472c.get(str);
                if (jVar == null) {
                    jVar = j.f6472c.get(c(str));
                    if (jVar == null) {
                        jVar = new j(str, null);
                    }
                    j.f6472c.put(str, jVar);
                }
            } else {
                g.f("javaName");
                throw null;
            }
            return jVar;
        }

        public final String c(String str) {
            if (d.w(str, "TLS_", false, 2)) {
                StringBuilder o = f.b.a.a.a.o("SSL_");
                String substring = str.substring(4);
                g.b(substring, "(this as java.lang.String).substring(startIndex)");
                o.append(substring);
                return o.toString();
            } else if (!d.w(str, "SSL_", false, 2)) {
                return str;
            } else {
                StringBuilder o2 = f.b.a.a.a.o("TLS_");
                String substring2 = str.substring(4);
                g.b(substring2, "(this as java.lang.String).substring(startIndex)");
                o2.append(substring2);
                return o2.toString();
            }
        }
    }

    static {
        b.a(t, "SSL_RSA_WITH_NULL_MD5", 1);
        b.a(t, "SSL_RSA_WITH_NULL_SHA", 2);
        b.a(t, "SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        b.a(t, "SSL_RSA_WITH_RC4_128_MD5", 4);
        b.a(t, "SSL_RSA_WITH_RC4_128_SHA", 5);
        b.a(t, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        b.a(t, "SSL_RSA_WITH_DES_CBC_SHA", 9);
        b.a(t, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        b.a(t, "SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        b.a(t, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        b.a(t, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        b.a(t, "SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        b.a(t, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        b.a(t, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        b.a(t, "SSL_DH_anon_WITH_RC4_128_MD5", 24);
        b.a(t, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        b.a(t, "SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        b.a(t, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        b.a(t, "TLS_KRB5_WITH_DES_CBC_SHA", 30);
        b.a(t, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        b.a(t, "TLS_KRB5_WITH_RC4_128_SHA", 32);
        b.a(t, "TLS_KRB5_WITH_DES_CBC_MD5", 34);
        b.a(t, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        b.a(t, "TLS_KRB5_WITH_RC4_128_MD5", 36);
        b.a(t, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        b.a(t, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        b.a(t, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        b.a(t, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        b.a(t, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        b.a(t, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        b.a(t, "TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        b.a(t, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        b.a(t, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        b.a(t, "TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        b.a(t, "TLS_RSA_WITH_NULL_SHA256", 59);
        b.a(t, "TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        b.a(t, "TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        b.a(t, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        b.a(t, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        b.a(t, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        b.a(t, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        b.a(t, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        b.a(t, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        b.a(t, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        b.a(t, "TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        b.a(t, "TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        b.a(t, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        b.a(t, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        b.a(t, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        b.a(t, "TLS_PSK_WITH_RC4_128_SHA", 138);
        b.a(t, "TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        b.a(t, "TLS_PSK_WITH_AES_128_CBC_SHA", TbsListener.ErrorCode.NEEDDOWNLOAD_1);
        b.a(t, "TLS_PSK_WITH_AES_256_CBC_SHA", TbsListener.ErrorCode.NEEDDOWNLOAD_2);
        b.a(t, "TLS_RSA_WITH_SEED_CBC_SHA", SwipeRefreshLayout.SCALE_DOWN_DURATION);
        b.a(t, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);
        b.a(t, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);
        b.a(t, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", TbsListener.ErrorCode.STARTDOWNLOAD_3);
        b.a(t, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", TbsListener.ErrorCode.STARTDOWNLOAD_4);
        b.a(t, "TLS_DH_anon_WITH_AES_128_GCM_SHA256", TbsListener.ErrorCode.STARTDOWNLOAD_7);
        b.a(t, "TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);
        b.a(t, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);
        b.a(t, "TLS_FALLBACK_SCSV", 22016);
        b.a(t, "TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        b.a(t, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        b.a(t, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        b.a(t, "TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        b.a(t, "TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        b.a(t, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        b.a(t, "TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        b.a(t, "TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        b.a(t, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        b.a(t, "TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        b.a(t, "TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        b.a(t, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        b.a(t, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        b.a(t, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        b.a(t, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        b.a(t, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        b.a(t, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        b.a(t, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        b.a(t, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        b.a(t, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        b.a(t, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        b.a(t, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);
        b.a(t, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);
        b.a(t, "TLS_AES_128_CCM_SHA256", 4868);
        b.a(t, "TLS_AES_128_CCM_8_SHA256", 4869);
    }

    public j(String str, f fVar) {
        this.a = str;
    }

    public String toString() {
        return this.a;
    }
}
