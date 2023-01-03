package i.m0.e;

import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: dates.kt */
/* loaded from: classes.dex */
public final class c {
    public static final a a = new a();
    public static final String[] b;

    /* renamed from: c  reason: collision with root package name */
    public static final DateFormat[] f6586c;

    /* compiled from: dates.kt */
    /* loaded from: classes.dex */
    public static final class a extends ThreadLocal<DateFormat> {
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(i.m0.b.f6503e);
            return simpleDateFormat;
        }
    }

    static {
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        b = strArr;
        f6586c = new DateFormat[strArr.length];
    }

    public static final Date a(String str) {
        if (str != null) {
            if (str.length() == 0) {
                return null;
            }
            ParsePosition parsePosition = new ParsePosition(0);
            Date parse = a.get().parse(str, parsePosition);
            if (parsePosition.getIndex() == str.length()) {
                return parse;
            }
            synchronized (b) {
                int length = b.length;
                for (int i2 = 0; i2 < length; i2++) {
                    DateFormat dateFormat = f6586c[i2];
                    SimpleDateFormat simpleDateFormat = dateFormat;
                    if (dateFormat == null) {
                        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(b[i2], Locale.US);
                        simpleDateFormat2.setTimeZone(i.m0.b.f6503e);
                        f6586c[i2] = simpleDateFormat2;
                        simpleDateFormat = simpleDateFormat2;
                    }
                    parsePosition.setIndex(0);
                    Date parse2 = simpleDateFormat.parse(str, parsePosition);
                    if (parsePosition.getIndex() != 0) {
                        return parse2;
                    }
                }
                return null;
            }
        }
        h.o.c.g.f("$this$toHttpDateOrNull");
        throw null;
    }

    public static final String b(Date date) {
        String format = a.get().format(date);
        h.o.c.g.b(format, "STANDARD_DATE_FORMAT.get().format(this)");
        return format;
    }
}
