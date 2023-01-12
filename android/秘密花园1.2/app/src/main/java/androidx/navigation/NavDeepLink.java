package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class NavDeepLink {
    public static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    public final ArrayList<String> mArguments = new ArrayList<>();
    public final boolean mExactDeepLink;
    public final Pattern mPattern;

    public NavDeepLink(@NonNull String str) {
        StringBuilder sb = new StringBuilder("^");
        if (!SCHEME_PATTERN.matcher(str).find()) {
            sb.append("http[s]?://");
        }
        Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(str);
        boolean z = !str.contains(".*");
        int i2 = 0;
        while (matcher.find()) {
            this.mArguments.add(matcher.group(1));
            sb.append(Pattern.quote(str.substring(i2, matcher.start())));
            sb.append("(.+?)");
            i2 = matcher.end();
            z = false;
        }
        if (i2 < str.length()) {
            sb.append(Pattern.quote(str.substring(i2)));
        }
        this.mPattern = Pattern.compile(sb.toString().replace(".*", "\\E.*\\Q"));
        this.mExactDeepLink = z;
    }

    @Nullable
    public Bundle getMatchingArguments(@NonNull Uri uri, @NonNull Map<String, NavArgument> map) {
        Matcher matcher = this.mPattern.matcher(uri.toString());
        if (matcher.matches()) {
            Bundle bundle = new Bundle();
            int size = this.mArguments.size();
            int i2 = 0;
            while (i2 < size) {
                String str = this.mArguments.get(i2);
                i2++;
                String decode = Uri.decode(matcher.group(i2));
                NavArgument navArgument = map.get(str);
                if (navArgument != null) {
                    try {
                        navArgument.getType().parseAndPut(bundle, str, decode);
                    } catch (IllegalArgumentException unused) {
                        return null;
                    }
                } else {
                    bundle.putString(str, decode);
                }
            }
            return bundle;
        }
        return null;
    }

    public boolean isExactDeepLink() {
        return this.mExactDeepLink;
    }

    public boolean matches(@NonNull Uri uri) {
        return this.mPattern.matcher(uri.toString()).matches();
    }
}
