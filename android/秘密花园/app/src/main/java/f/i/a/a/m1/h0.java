package f.i.a.a.m1;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.idtracking.g;
import f.i.a.a.d1.a;
import f.i.a.a.l1.m;
import f.i.a.a.p;
import f.i.a.a.p0;
import f.i.a.a.r0;
import f.i.a.a.s0;
import f.i.a.a.v;
import f.i.a.a.z0.j;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* compiled from: Util.java */
/* loaded from: classes.dex */
public final class h0 {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public static HashMap<String, String> f5669j;
    public static final int a = Build.VERSION.SDK_INT;
    public static final String b = Build.DEVICE;

    /* renamed from: c  reason: collision with root package name */
    public static final String f5662c = Build.MANUFACTURER;

    /* renamed from: d  reason: collision with root package name */
    public static final String f5663d = Build.MODEL;

    /* renamed from: e  reason: collision with root package name */
    public static final String f5664e = b + ", " + f5663d + ", " + f5662c + ", " + a;

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f5665f = new byte[0];

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5666g = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5667h = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");

    /* renamed from: i  reason: collision with root package name */
    public static final Pattern f5668i = Pattern.compile("%([A-Fa-f0-9]{2})");

    /* renamed from: k  reason: collision with root package name */
    public static final String[] f5670k = {"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", e.ac, g.a, "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "slo", "sk", "wel", "cy"};

    /* renamed from: l  reason: collision with root package name */
    public static final int[] f5671l = {0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};

    public static String A(@Nullable Context context) {
        TelephonyManager telephonyManager;
        if (!(context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null)) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return q0(networkCountryIso);
            }
        }
        return q0(Locale.getDefault().getCountry());
    }

    public static int B(int i2) {
        switch (i2) {
            case 0:
                return 16777216;
            case 1:
                return 3538944;
            case 2:
                return 13107200;
            case 3:
            case 4:
            case 5:
                return 131072;
            case 6:
                return 0;
            default:
                throw new IllegalArgumentException();
        }
    }

    public static int C(String str) {
        int length = str.length();
        h.m(length <= 4);
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 = (i2 << 8) | str.charAt(i3);
        }
        return i2;
    }

    public static Looper D() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static long E(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(((double) j2) * ((double) f2));
    }

    public static int F(Context context) {
        ConnectivityManager connectivityManager;
        int i2 = 0;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i2 = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (!(type == 4 || type == 5)) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                        return 3;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 4;
                    case 13:
                        return 5;
                    case 16:
                    default:
                        return 6;
                    case 18:
                        return 2;
                }
            }
        } catch (SecurityException unused) {
        }
        return i2;
    }

    public static int G(int i2) {
        if (i2 == 8) {
            return 3;
        }
        if (i2 == 16) {
            return 2;
        }
        if (i2 != 24) {
            return i2 != 32 ? 0 : 1073741824;
        }
        return Integer.MIN_VALUE;
    }

    public static int H(int i2, int i3) {
        if (i2 == Integer.MIN_VALUE) {
            return i3 * 3;
        }
        if (i2 != 1073741824) {
            if (i2 == 2) {
                return i3 * 2;
            }
            if (i2 == 3) {
                return i3;
            }
            if (i2 != 4) {
                throw new IllegalArgumentException();
            }
        }
        return i3 * 4;
    }

    public static long I(long j2, float f2) {
        return f2 == 1.0f ? j2 : Math.round(((double) j2) / ((double) f2));
    }

    public static p[] J(r0 r0Var, @Nullable f.i.a.a.z0.g<j> gVar) {
        p0[] a2 = ((v) r0Var).a(new Handler(), new f0(), new g0(), f.a, d.a, gVar);
        p[] pVarArr = new p[a2.length];
        for (int i2 = 0; i2 < a2.length; i2++) {
            pVarArr[i2] = a2[i2].u();
        }
        return pVarArr;
    }

    public static int K(int i2) {
        if (i2 == 13) {
            return 1;
        }
        switch (i2) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            default:
                return 3;
        }
    }

    public static String L(StringBuilder sb, Formatter formatter, long j2) {
        if (j2 == -9223372036854775807L) {
            j2 = 0;
        }
        long j3 = (j2 + 500) / 1000;
        long j4 = j3 % 60;
        long j5 = (j3 / 60) % 60;
        long j6 = j3 / 3600;
        sb.setLength(0);
        if (j6 > 0) {
            return formatter.format("%d:%02d:%02d", Long.valueOf(j6), Long.valueOf(j5), Long.valueOf(j4)).toString();
        }
        return formatter.format("%02d:%02d", Long.valueOf(j5), Long.valueOf(j4)).toString();
    }

    public static String[] M() {
        String[] strArr;
        Configuration configuration = Resources.getSystem().getConfiguration();
        int i2 = a;
        if (i2 >= 24) {
            strArr = l0(configuration.getLocales().toLanguageTags(), ",");
        } else {
            strArr = i2 >= 21 ? new String[]{configuration.locale.toLanguageTag()} : new String[]{configuration.locale.toString()};
        }
        for (int i3 = 0; i3 < strArr.length; i3++) {
            strArr[i3] = a0(strArr[i3]);
        }
        return strArr;
    }

    public static String N(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "?";
        }
        return str + "/" + str2 + " (Linux;Android " + Build.VERSION.RELEASE + ") ExoPlayerLib/2.10.4";
    }

    public static byte[] O(String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    public static int P(Uri uri, String str) {
        if (TextUtils.isEmpty(str)) {
            String path = uri.getPath();
            if (path == null) {
                return 3;
            }
            return Q(path);
        }
        return Q("." + str);
    }

    public static int Q(String str) {
        String p0 = p0(str);
        if (p0.endsWith(".mpd")) {
            return 0;
        }
        if (p0.endsWith(".m3u8")) {
            return 2;
        }
        return p0.matches(".*\\.ism(l)?(/manifest(\\(.+\\))?)?") ? 1 : 3;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x005f, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean R(f.i.a.a.m1.u r4, f.i.a.a.m1.u r5, @androidx.annotation.Nullable java.util.zip.Inflater r6) {
        /*
            int r0 = r4.a()
            r1 = 0
            if (r0 > 0) goto L_0x0008
            return r1
        L_0x0008:
            byte[] r0 = r5.a
            int r2 = r0.length
            int r3 = r4.a()
            if (r2 >= r3) goto L_0x0019
            int r0 = r4.a()
            int r0 = r0 * 2
            byte[] r0 = new byte[r0]
        L_0x0019:
            if (r6 != 0) goto L_0x0020
            java.util.zip.Inflater r6 = new java.util.zip.Inflater
            r6.<init>()
        L_0x0020:
            byte[] r2 = r4.a
            int r3 = r4.b
            int r4 = r4.a()
            r6.setInput(r2, r3, r4)
            r4 = 0
        L_0x002c:
            int r2 = r0.length     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            int r2 = r2 - r4
            int r2 = r6.inflate(r0, r4, r2)     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            int r4 = r4 + r2
            boolean r2 = r6.finished()     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            if (r2 == 0) goto L_0x0044
            r5.a = r0     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            r5.f5701c = r4     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            r5.b = r1     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            r4 = 1
            r6.reset()
            return r4
        L_0x0044:
            boolean r2 = r6.needsDictionary()     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            if (r2 != 0) goto L_0x005c
            boolean r2 = r6.needsInput()     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            if (r2 == 0) goto L_0x0051
            goto L_0x005c
        L_0x0051:
            int r2 = r0.length     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            if (r4 != r2) goto L_0x002c
            int r2 = r0.length     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            int r2 = r2 * 2
            byte[] r0 = java.util.Arrays.copyOf(r0, r2)     // Catch: DataFormatException -> 0x0065, all -> 0x0060
            goto L_0x002c
        L_0x005c:
            r6.reset()
            return r1
        L_0x0060:
            r4 = move-exception
            r6.reset()
            throw r4
        L_0x0065:
            r6.reset()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.m1.h0.R(f.i.a.a.m1.u, f.i.a.a.m1.u, java.util.zip.Inflater):boolean");
    }

    public static boolean S(int i2) {
        return i2 == Integer.MIN_VALUE || i2 == 1073741824;
    }

    public static boolean T(int i2) {
        return i2 == 3 || i2 == 2 || i2 == Integer.MIN_VALUE || i2 == 1073741824 || i2 == 4;
    }

    public static boolean U(int i2) {
        return i2 == 10 || i2 == 13;
    }

    public static boolean V(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    public static /* synthetic */ void W(List list) {
    }

    public static /* synthetic */ void X(a aVar) {
    }

    public static /* synthetic */ Thread Y(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    public static ExecutorService Z(String str) {
        return Executors.newSingleThreadExecutor(new ThreadFactory(str) { // from class: f.i.a.a.m1.e
            public final /* synthetic */ String a;

            {
                this.a = r1;
            }

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return h0.Y(this.a, runnable);
            }
        });
    }

    public static long a(long j2, long j3, long j4) {
        long j5 = j2 + j3;
        return ((j2 ^ j5) & (j3 ^ j5)) < 0 ? j4 : j5;
    }

    public static String a0(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (a >= 21) {
            replace = Locale.forLanguageTag(replace).toLanguageTag();
        }
        if (!replace.isEmpty() && !"und".equals(replace)) {
            str = replace;
        }
        String p0 = p0(str);
        int i2 = 0;
        String str2 = m0(p0, "-")[0];
        if (str2.length() != 3) {
            return p0;
        }
        if (f5669j == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            HashMap<String, String> hashMap = new HashMap<>(iSOLanguages.length + f5670k.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        hashMap.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            while (true) {
                String[] strArr = f5670k;
                if (i2 >= strArr.length) {
                    break;
                }
                hashMap.put(strArr[i2], strArr[i2 + 1]);
                i2 += 2;
            }
            f5669j = hashMap;
        }
        String str4 = f5669j.get(str2);
        if (str4 == null) {
            return p0;
        }
        StringBuilder o = f.b.a.a.a.o(str4);
        o.append(p0.substring(3));
        return o.toString();
    }

    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static <T> T[] b0(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    public static int c(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j2);
        if (binarySearch < 0) {
            i2 = ~binarySearch;
        } else {
            do {
                binarySearch++;
                if (binarySearch >= jArr.length) {
                    break;
                }
            } while (jArr[binarySearch] == j2);
            i2 = z ? binarySearch - 1 : binarySearch;
        }
        return z2 ? Math.min(jArr.length - 1, i2) : i2;
    }

    public static <T> T[] c0(T[] tArr, int i2) {
        h.m(i2 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i2);
    }

    public static <T extends Comparable<? super T>> int d(List<? extends Comparable<? super T>> list, T t, boolean z, boolean z2) {
        int i2;
        int binarySearch = Collections.binarySearch(list, t);
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (((Comparable) list.get(binarySearch)).compareTo(t) == 0);
            i2 = z ? binarySearch + 1 : binarySearch;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static long d0(String str) throws f.i.a.a.h0 {
        Matcher matcher = f5666g.matcher(str);
        if (matcher.matches()) {
            int i2 = 0;
            if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
                i2 = Integer.parseInt(matcher.group(13)) + (Integer.parseInt(matcher.group(12)) * 60);
                if ("-".equals(matcher.group(11))) {
                    i2 *= -1;
                }
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
            gregorianCalendar.clear();
            gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
            if (!TextUtils.isEmpty(matcher.group(8))) {
                StringBuilder o = f.b.a.a.a.o("0.");
                o.append(matcher.group(8));
                gregorianCalendar.set(14, new BigDecimal(o.toString()).movePointRight(3).intValue());
            }
            long timeInMillis = gregorianCalendar.getTimeInMillis();
            return i2 != 0 ? timeInMillis - ((long) (i2 * 60000)) : timeInMillis;
        }
        throw new f.i.a.a.h0(f.b.a.a.a.f("Invalid date/time format: ", str));
    }

    public static int e(int[] iArr, int i2, boolean z, boolean z2) {
        int i3;
        int binarySearch = Arrays.binarySearch(iArr, i2);
        if (binarySearch < 0) {
            i3 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (iArr[binarySearch] == i2);
            i3 = z ? binarySearch + 1 : binarySearch;
        }
        return z2 ? Math.max(0, i3) : i3;
    }

    public static boolean e0(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static int f(long[] jArr, long j2, boolean z, boolean z2) {
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j2);
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            do {
                binarySearch--;
                if (binarySearch < 0) {
                    break;
                }
            } while (jArr[binarySearch] == j2);
            i2 = z ? binarySearch + 1 : binarySearch;
        }
        return z2 ? Math.max(0, i2) : i2;
    }

    public static <T> void f0(List<T> list, int i2, int i3) {
        if (i2 < 0 || i3 > list.size() || i2 > i3) {
            throw new IllegalArgumentException();
        } else if (i2 != i3) {
            list.subList(i2, i3).clear();
        }
    }

    @EnsuresNonNull({"#1"})
    public static <T> T g(@Nullable T t) {
        return t;
    }

    public static long g0(long j2, s0 s0Var, long j3, long j4) {
        if (s0.f5769c.equals(s0Var)) {
            return j2;
        }
        long j5 = s0Var.a;
        long j6 = Long.MIN_VALUE;
        long j7 = j2 - j5;
        if (((j5 ^ j2) & (j2 ^ j7)) >= 0) {
            j6 = j7;
        }
        long j8 = s0Var.b;
        long j9 = RecyclerView.FOREVER_NS;
        long j10 = j2 + j8;
        if (((j8 ^ j10) & (j2 ^ j10)) >= 0) {
            j9 = j10;
        }
        boolean z = false;
        boolean z2 = j6 <= j3 && j3 <= j9;
        if (j6 <= j4 && j4 <= j9) {
            z = true;
        }
        if (z2 && z) {
            return Math.abs(j3 - j2) <= Math.abs(j4 - j2) ? j3 : j4;
        }
        if (z2) {
            return j3;
        }
        return z ? j4 : j6;
    }

    @EnsuresNonNull({"#1"})
    public static <T> T[] h(T[] tArr) {
        return tArr;
    }

    public static long h0(long j2, long j3, long j4) {
        int i2 = (j4 > j3 ? 1 : (j4 == j3 ? 0 : -1));
        if (i2 >= 0 && j4 % j3 == 0) {
            return j2 / (j4 / j3);
        }
        if (i2 < 0 && j3 % j4 == 0) {
            return (j3 / j4) * j2;
        }
        return (long) (((double) j2) * (((double) j3) / ((double) j4)));
    }

    public static int i(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static long[] i0(List<Long> list, long j2, long j3) {
        int size = list.size();
        long[] jArr = new long[size];
        int i2 = 0;
        int i3 = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i3 >= 0 && j3 % j2 == 0) {
            long j4 = j3 / j2;
            while (i2 < size) {
                jArr[i2] = list.get(i2).longValue() / j4;
                i2++;
            }
        } else if (i3 >= 0 || j2 % j3 != 0) {
            double d2 = ((double) j2) / ((double) j3);
            while (i2 < size) {
                jArr[i2] = (long) (((double) list.get(i2).longValue()) * d2);
                i2++;
            }
        } else {
            long j5 = j2 / j3;
            while (i2 < size) {
                jArr[i2] = list.get(i2).longValue() * j5;
                i2++;
            }
        }
        return jArr;
    }

    public static long j(long j2, long j3) {
        return ((j2 + j3) - 1) / j3;
    }

    public static void j0(long[] jArr, long j2, long j3) {
        int i2 = 0;
        int i3 = (j3 > j2 ? 1 : (j3 == j2 ? 0 : -1));
        if (i3 >= 0 && j3 % j2 == 0) {
            long j4 = j3 / j2;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] / j4;
                i2++;
            }
        } else if (i3 >= 0 || j2 % j3 != 0) {
            double d2 = ((double) j2) / ((double) j3);
            while (i2 < jArr.length) {
                jArr[i2] = (long) (((double) jArr[i2]) * d2);
                i2++;
            }
        } else {
            long j5 = j2 / j3;
            while (i2 < jArr.length) {
                jArr[i2] = jArr[i2] * j5;
                i2++;
            }
        }
    }

    public static void k(@Nullable m mVar) {
        if (mVar != null) {
            try {
                mVar.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void k0(Throwable th) {
        throw th;
    }

    public static void l(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String[] l0(String str, String str2) {
        return str.split(str2, -1);
    }

    public static int m(long j2, long j3) {
        int i2 = (j2 > j3 ? 1 : (j2 == j3 ? 0 : -1));
        if (i2 < 0) {
            return -1;
        }
        return i2 == 0 ? 0 : 1;
    }

    public static String[] m0(String str, String str2) {
        return str.split(str2, 2);
    }

    public static float n(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f2, f4));
    }

    public static String[] n0(String str) {
        if (TextUtils.isEmpty(str)) {
            return new String[0];
        }
        return l0(str.trim(), "(\\s*,\\s*)");
    }

    public static int o(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static int[] o0(List<Integer> list) {
        int size = list.size();
        int[] iArr = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = list.get(i2).intValue();
        }
        return iArr;
    }

    public static long p(long j2, long j3, long j4) {
        return Math.max(j3, Math.min(j2, j4));
    }

    public static String p0(String str) {
        return str == null ? str : str.toLowerCase(Locale.US);
    }

    public static boolean q(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (b(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    public static String q0(String str) {
        return str == null ? str : str.toUpperCase(Locale.US);
    }

    public static int r(byte[] bArr, int i2, int i3, int i4) {
        while (i2 < i3) {
            i4 = f5671l[((i4 >>> 24) ^ (bArr[i2] & 255)) & 255] ^ (i4 << 8);
            i2++;
        }
        return i4;
    }

    @Nullable
    public static String r0(String str) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (str.charAt(i4) == '%') {
                i3++;
            }
        }
        if (i3 == 0) {
            return str;
        }
        int i5 = length - (i3 * 2);
        StringBuilder sb = new StringBuilder(i5);
        Matcher matcher = f5668i.matcher(str);
        while (i3 > 0 && matcher.find()) {
            sb.append((CharSequence) str, i2, matcher.start());
            sb.append((char) Integer.parseInt(matcher.group(1), 16));
            i2 = matcher.end();
            i3--;
        }
        if (i2 < length) {
            sb.append((CharSequence) str, i2, length);
        }
        if (sb.length() != i5) {
            return null;
        }
        return sb.toString();
    }

    public static Handler s(Handler.Callback callback) {
        return new Handler(D(), callback);
    }

    public static void s0(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static Handler t(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    public static String u(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String v(byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    public static String w(byte[] bArr, int i2, int i3) {
        return new String(bArr, i2, i3, Charset.forName("UTF-8"));
    }

    public static byte[] x(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 2;
            bArr[i2] = (byte) (Character.digit(str.charAt(i3 + 1), 16) + (Character.digit(str.charAt(i3), 16) << 4));
        }
        return bArr;
    }

    @Nullable
    public static String y(String str, int i2) {
        String[] n0 = n0(str);
        if (n0.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : n0) {
            if (i2 == r.f(r.c(str2))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public static String z(Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < objArr.length; i2++) {
            sb.append(objArr[i2].getClass().getSimpleName());
            if (i2 < objArr.length - 1) {
                sb.append(", ");
            }
        }
        return sb.toString();
    }
}
