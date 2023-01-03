package g.a.f1.s;

import io.realm.exceptions.RealmException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: JsonUtils.java */
/* loaded from: classes.dex */
public class c {
    public static Pattern a = Pattern.compile("/Date\\((\\d*)(?:[+-]\\d*)?\\)/");
    public static Pattern b = Pattern.compile("-?\\d+");

    /* renamed from: c  reason: collision with root package name */
    public static ParsePosition f6241c = new ParsePosition(0);

    public static Date a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        Matcher matcher = a.matcher(str);
        if (matcher.find()) {
            return new Date(Long.parseLong(matcher.group(1)));
        }
        if (b.matcher(str).matches()) {
            try {
                return new Date(Long.parseLong(str));
            } catch (NumberFormatException e2) {
                throw new RealmException(e2.getMessage(), e2);
            }
        }
        try {
            f6241c.setIndex(0);
            return b.b(str, f6241c);
        } catch (ParseException e3) {
            throw new RealmException(e3.getMessage(), e3);
        }
    }
}
