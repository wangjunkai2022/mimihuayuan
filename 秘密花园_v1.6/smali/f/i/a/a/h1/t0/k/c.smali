.class public Lf/i/a/a/h1/t0/k/c;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lf/i/a/a/l1/e0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/h1/t0/k/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lf/i/a/a/l1/e0$a<",
        "Lf/i/a/a/h1/t0/k/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/t0/k/c;->b:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/t0/k/c;->c:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/h1/t0/k/c;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/h1/t0/k/c;->a:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Lc/a/a/b/g/h;->v(Z)V

    return p0
.end method

.method public static c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lc/a/a/b/g/h;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 3
    invoke-static {p0}, Lc/a/a/b/g/h;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lf/i/a/a/m1/r;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v2, "value"

    .line 2
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    const-string v3, "id"

    .line 3
    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 4
    :cond_3
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5
    invoke-static {p0, p1}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    new-instance p0, Lf/i/a/a/h1/t0/k/d;

    invoke-direct {p0, v1, v2, v0}, Lf/i/a/a/h1/t0/k/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 10

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    sget-object p1, Lf/i/a/a/m1/h0;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    if-eqz p2, :cond_7

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p0, p2

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    .line 6
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    const-wide v6, 0x417e1852c0000000L    # 3.1556908E7

    mul-double p2, p2, v6

    goto :goto_0

    :cond_1
    move-wide p2, v4

    :goto_0
    const/4 v6, 0x5

    .line 7
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x4144103580000000L    # 2629739.0

    mul-double v6, v6, v8

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    add-double/2addr p2, v6

    const/4 v6, 0x7

    .line 9
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x40f5180000000000L    # 86400.0

    mul-double v6, v6, v8

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    add-double/2addr p2, v6

    const/16 v6, 0xa

    .line 11
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 12
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    add-double/2addr p2, v6

    const/16 v2, 0xc

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 14
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double v2, v2, v6

    goto :goto_4

    :cond_5
    move-wide v2, v4

    :goto_4
    add-double/2addr p2, v2

    const/16 v2, 0xe

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    :cond_6
    add-double/2addr p2, v4

    mul-double p2, p2, v0

    double-to-long p1, p2

    if-eqz p0, :cond_8

    neg-long p1, p1

    goto :goto_5

    .line 17
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    mul-double p0, p0, v2

    mul-double p0, p0, v0

    double-to-long p1, p0

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public static k(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    sget-object v0, Lf/i/a/a/h1/t0/k/c;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method public static l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/i/a/a/h1/t0/k/c;->a:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "MPD"

    .line 4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/i/a/a/h1/t0/k/c;->n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/b;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lf/i/a/a/h0;

    const-string p2, "inputStream does not contain a valid media presentation description"

    invoke-direct {p1, p2}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Lf/i/a/a/h0;

    invoke-direct {p2, p1}, Lf/i/a/a/h0;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "value"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    .line 3
    invoke-static {p1, v3, v4}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_1
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    goto :goto_2

    :cond_5
    const/4 v4, 0x6

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    .line 7
    :cond_8
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 8
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method

.method public f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lf/i/a/a/z0/e$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string v2, "schemeIdUri"

    .line 1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3a

    if-eqz v2, :cond_c

    .line 2
    invoke-static {v2}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x1d2c5beb

    const/4 v9, 0x2

    if-eq v7, v8, :cond_2

    const v8, 0x2d06c692

    if-eq v7, v8, :cond_1

    const v8, 0x6c0c9d2a

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v7, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    const-string v7, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v4, :cond_5

    if-eq v2, v9, :cond_4

    goto/16 :goto_7

    .line 3
    :cond_4
    sget-object v2, Lf/i/a/a/q;->d:Ljava/util/UUID;

    goto/16 :goto_8

    .line 4
    :cond_5
    sget-object v2, Lf/i/a/a/q;->e:Ljava/util/UUID;

    goto/16 :goto_8

    :cond_6
    const-string v2, "value"

    .line 5
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_9

    .line 7
    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v3, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 9
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v10, "default_KID"

    .line 10
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 11
    invoke-interface {v0, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object v7, v1

    .line 12
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "00000000-0000-0000-0000-000000000000"

    .line 13
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "\\s+"

    .line 14
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 15
    array-length v8, v7

    new-array v8, v8, [Ljava/util/UUID;

    const/4 v9, 0x0

    .line 16
    :goto_5
    array-length v10, v7

    if-ge v9, v10, :cond_a

    .line 17
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 18
    :cond_a
    sget-object v7, Lf/i/a/a/q;->b:Ljava/util/UUID;

    invoke-static {v7, v8, v1}, Lc/a/a/b/g/h;->j(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v7

    .line 19
    sget-object v8, Lf/i/a/a/q;->b:Ljava/util/UUID;

    move-object v9, v1

    goto :goto_6

    :cond_b
    move-object v7, v1

    move-object v8, v7

    move-object v9, v8

    :goto_6
    const/4 v10, 0x0

    goto :goto_9

    :cond_c
    :goto_7
    move-object v2, v1

    :goto_8
    move-object v7, v1

    move-object v9, v7

    move-object v8, v2

    const/4 v10, 0x0

    move-object v2, v9

    .line 20
    :goto_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v11, "ms:laurl"

    .line 21
    invoke-static {v0, v11}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v9, "licenseUrl"

    .line 22
    invoke-interface {v0, v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c

    :cond_d
    const-string v11, "widevine:license"

    .line 23
    invoke-static {v0, v11}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v10, "robustness_level"

    .line 24
    invoke-interface {v0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    const-string v11, "HW"

    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_c

    :cond_e
    const/4 v10, 0x0

    goto :goto_c

    :cond_f
    const/4 v11, 0x4

    if-nez v7, :cond_12

    .line 26
    invoke-static/range {p1 .. p1}, Lc/a/a/b/g/h;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-virtual {v12, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ne v13, v3, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v13, v13, 0x1

    .line 28
    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :goto_a
    const-string v13, "pssh"

    .line 29
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    :goto_b
    if-eqz v12, :cond_12

    .line 30
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-ne v12, v11, :cond_12

    .line 31
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 32
    invoke-static {v7}, Lc/a/a/b/g/h;->a1([B)Ljava/util/UUID;

    move-result-object v8

    if-nez v8, :cond_14

    move-object v7, v1

    goto :goto_c

    :cond_12
    if-nez v7, :cond_13

    .line 33
    sget-object v12, Lf/i/a/a/q;->e:Ljava/util/UUID;

    .line 34
    invoke-virtual {v12, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    const-string v12, "mspr:pro"

    .line 35
    invoke-static {v0, v12}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 36
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-ne v12, v11, :cond_13

    .line 37
    sget-object v7, Lf/i/a/a/q;->e:Ljava/util/UUID;

    .line 38
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 39
    invoke-static {v7, v11}, Lc/a/a/b/g/h;->i(Ljava/util/UUID;[B)[B

    move-result-object v7

    goto :goto_c

    .line 40
    :cond_13
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_14
    :goto_c
    move-object v15, v7

    move-object v12, v8

    move-object v13, v9

    move/from16 v16, v10

    const-string v7, "ContentProtection"

    .line 41
    invoke-static {v0, v7}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    if-eqz v12, :cond_15

    .line 42
    new-instance v1, Lf/i/a/a/z0/e$b;

    const-string v14, "video/mp4"

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lf/i/a/a/z0/e$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 43
    :cond_15
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_16
    move-object v8, v12

    move-object v9, v13

    move-object v7, v15

    move/from16 v10, v16

    goto/16 :goto_9
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "text"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x3

    :cond_3
    :goto_0
    return v1
.end method

.method public h(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "supplementary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "commentary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "caption"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_5
    const-string v2, "main"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v2, "dub"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "alternate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "enhanced-audio-intelligibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_9
    const-string v2, "description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v2, "subtitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x7

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x800

    return p1

    :pswitch_1
    const/16 p1, 0x200

    return p1

    :pswitch_2
    const/16 p1, 0x100

    return p1

    :pswitch_3
    const/16 p1, 0x80

    return p1

    :pswitch_4
    const/16 p1, 0x40

    return p1

    :pswitch_5
    const/16 p1, 0x20

    return p1

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    return v3

    :pswitch_8
    return v4

    :pswitch_9
    return v5

    :pswitch_a
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x5e3a5c50 -> :sswitch_8
        -0x53ecbf86 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/b;
    .locals 108
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "availabilityStartTime"

    .line 1
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_0

    move-wide v9, v4

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v3}, Lf/i/a/a/m1/h0;->d0(Ljava/lang/String;)J

    move-result-wide v6

    move-wide v9, v6

    :goto_0
    const-string v3, "mediaPresentationDuration"

    .line 3
    invoke-static {v1, v3, v4, v5}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v3, "minBufferTime"

    .line 4
    invoke-static {v1, v3, v4, v5}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    const-string v3, "type"

    .line 5
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v8, "dynamic"

    .line 6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v15, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_2

    const-string v3, "minimumUpdatePeriod"

    .line 7
    invoke-static {v1, v3, v4, v5}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-wide/from16 v16, v11

    goto :goto_2

    :cond_2
    move-wide/from16 v16, v4

    :goto_2
    if-eqz v15, :cond_3

    const-string v3, "timeShiftBufferDepth"

    .line 8
    invoke-static {v1, v3, v4, v5}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-wide/from16 v18, v11

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v4

    :goto_3
    if-eqz v15, :cond_4

    const-string v3, "suggestedPresentationDelay"

    .line 9
    invoke-static {v1, v3, v4, v5}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-wide/from16 v20, v11

    goto :goto_4

    :cond_4
    move-wide/from16 v20, v4

    :goto_4
    const-string v3, "publishTime"

    .line 10
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-wide/from16 v22, v4

    goto :goto_5

    .line 11
    :cond_5
    invoke-static {v3}, Lf/i/a/a/m1/h0;->d0(Ljava/lang/String;)J

    move-result-wide v11

    move-wide/from16 v22, v11

    .line 12
    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_6

    goto :goto_6

    :cond_6
    const-wide/16 v4, 0x0

    :goto_6
    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v8, v2

    move-object/from16 v26, v8

    move-wide v11, v4

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v2, p2

    move-object v5, v1

    move-object/from16 p2, v26

    move-object/from16 v4, p2

    .line 13
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v27, v8

    const-string v8, "BaseURL"

    .line 14
    invoke-static {v5, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    if-nez v24, :cond_7

    .line 15
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 16
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lc/a/a/b/g/h;->f1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v24, 0x1

    move-wide/from16 v30, v13

    move-object/from16 v8, v27

    move-object/from16 v13, p2

    goto/16 :goto_d

    :cond_7
    move-object/from16 v28, v2

    move-object v0, v4

    move-object/from16 v29, v5

    move-wide/from16 v42, v6

    move-wide/from16 v32, v9

    move-wide/from16 v40, v11

    move-wide/from16 v30, v13

    move/from16 v45, v15

    move-object v4, v3

    goto/16 :goto_4e

    :cond_8
    move-object/from16 v28, v2

    const-string v2, "ProgramInformation"

    .line 17
    invoke-static {v5, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v29

    move-wide/from16 v30, v13

    const-string v13, "lang"

    if-eqz v29, :cond_f

    const-string v8, "moreInformationURL"

    .line 18
    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    move-object/from16 v36, v4

    goto :goto_8

    :cond_9
    move-object/from16 v36, v8

    .line 19
    :goto_8
    invoke-interface {v5, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    move-object/from16 v37, v4

    goto :goto_9

    :cond_a
    move-object/from16 v37, v8

    :goto_9
    move-object v8, v4

    move-object v13, v8

    .line 20
    :cond_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v14, "Title"

    .line 21
    invoke-static {v5, v14}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_c
    const-string v14, "Source"

    .line 23
    invoke-static {v5, v14}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_d
    const-string v14, "Copyright"

    .line 25
    invoke-static {v5, v14}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 26
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    .line 27
    :cond_e
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    :goto_a
    invoke-static {v5, v2}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 29
    new-instance v2, Lf/i/a/a/h1/t0/k/g;

    move-object/from16 v32, v2

    move-object/from16 v33, v4

    move-object/from16 v34, v8

    move-object/from16 v35, v13

    invoke-direct/range {v32 .. v37}, Lf/i/a/a/h1/t0/k/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    const-string v2, "UTCTiming"

    .line 30
    invoke-static {v5, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    const-string v4, "value"

    const-string v14, "schemeIdUri"

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .line 31
    invoke-interface {v5, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-interface {v5, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    new-instance v4, Lf/i/a/a/h1/t0/k/m;

    invoke-direct {v4, v8, v2}, Lf/i/a/a/h1/t0/k/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p2

    move-object/from16 v26, v4

    :goto_b
    move-object/from16 v8, v27

    goto :goto_c

    :cond_10
    const-string v2, "Location"

    .line 34
    invoke-static {v5, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 35
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v2, p2

    :goto_c
    const/4 v4, 0x0

    move-object v13, v2

    move-object/from16 v2, v28

    :goto_d
    move-wide/from16 v42, v6

    move-object/from16 v27, v8

    move-wide/from16 v32, v9

    move-wide/from16 v40, v11

    move-object v0, v13

    move/from16 v45, v15

    move-object v12, v4

    move-object v4, v3

    goto/16 :goto_4f

    :cond_11
    const-string v2, "Period"

    .line 36
    invoke-static {v5, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_77

    if-nez v25, :cond_77

    move-wide/from16 v32, v9

    const-string v9, "id"

    const/4 v10, 0x0

    .line 37
    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v10, "start"

    .line 38
    invoke-static {v5, v10, v11, v12}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v36

    const-string v10, "duration"

    move-wide/from16 v40, v11

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    invoke-static {v5, v10, v11, v12}, Lf/i/a/a/h1/t0/k/c;->j(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v29, v5

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v42, v6

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/16 v34, 0x0

    move-object/from16 v44, v3

    move-object/from16 v34, v7

    move/from16 v45, v15

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    const/16 v38, 0x0

    move-object v15, v0

    .line 42
    :goto_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 43
    invoke-static {v7, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_13

    if-nez v38, :cond_12

    .line 44
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-wide/from16 v46, v11

    .line 45
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lc/a/a/b/g/h;->f1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, v2

    move-object v1, v7

    move-object/from16 v83, v8

    move-object/from16 v58, v9

    move-object/from16 v59, v10

    move-object/from16 v85, v13

    move-object/from16 v53, v14

    const/16 v38, 0x1

    move-object v7, v4

    move-object/from16 v107, v6

    move-object v6, v5

    move-object/from16 v5, v107

    goto/16 :goto_4b

    :cond_12
    move-wide/from16 v46, v11

    move-object/from16 v48, v2

    move-object/from16 v39, v3

    move-object/from16 v57, v4

    move-object v1, v7

    move-object/from16 v83, v8

    move-object/from16 v58, v9

    move-object/from16 v59, v10

    move-object/from16 v85, v13

    move-object/from16 v53, v14

    move-object/from16 v49, v15

    move-object/from16 v107, v6

    move-object v6, v5

    move-object/from16 v5, v107

    goto/16 :goto_47

    :cond_13
    move-wide/from16 v46, v11

    const-string v11, "AdaptationSet"

    .line 46
    invoke-static {v7, v11}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v39, v3

    const-string v3, "SegmentTemplate"

    move-object/from16 v48, v2

    const-string v2, "SegmentList"

    move-object/from16 v49, v15

    const-string v15, "SegmentBase"

    if-eqz v12, :cond_65

    const/4 v12, -0x1

    .line 47
    invoke-static {v7, v9, v12}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v50

    .line 48
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->g(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v12

    move/from16 v29, v12

    const-string v12, "mimeType"

    move-object/from16 v55, v6

    const/4 v6, 0x0

    .line 49
    invoke-interface {v7, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v56, v10

    const-string v10, "codecs"

    .line 50
    invoke-interface {v7, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v52, v6

    const-string v6, "width"

    move-object/from16 v57, v4

    const/4 v4, -0x1

    move-object/from16 v58, v14

    .line 51
    invoke-static {v7, v6, v4}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v59, v5

    const-string v5, "height"

    .line 52
    invoke-static {v7, v5, v4}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v53, v11

    const/high16 v11, -0x40800000    # -1.0f

    .line 53
    invoke-static {v7, v11}, Lf/i/a/a/h1/t0/k/c;->k(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    const-string v1, "audioSamplingRate"

    move-object/from16 v54, v3

    const/4 v3, -0x1

    .line 54
    invoke-static {v7, v1, v3}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v60, v2

    const/4 v2, 0x0

    .line 55
    invoke-interface {v7, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    const-string v0, "label"

    .line 56
    invoke-interface {v7, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v73, v7

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v74, v0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v75, v15

    .line 61
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v76, v1

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v61, -0x1

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v77, v1

    move/from16 v78, v3

    move/from16 v81, v4

    move/from16 v80, v11

    move/from16 v1, v29

    move-object/from16 v82, v34

    move-object/from16 v4, v39

    move-object/from16 v3, v49

    move-object/from16 v49, v62

    const/16 v29, -0x1

    const/16 v79, 0x0

    move-object/from16 v11, p1

    .line 63
    :goto_f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    invoke-static {v11, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_15

    if-nez v79, :cond_14

    .line 65
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v83, v8

    .line 66
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lc/a/a/b/g/h;->f1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v79, 0x1

    goto/16 :goto_13

    :cond_14
    move-object/from16 v83, v8

    move-object/from16 v84, v4

    goto :goto_11

    :cond_15
    move-object/from16 v83, v8

    const-string v8, "ContentProtection"

    .line 67
    invoke-static {v11, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_17

    .line 68
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v8

    move-object/from16 v84, v4

    .line 69
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 70
    move-object/from16 v49, v4

    check-cast v49, Ljava/lang/String;

    .line 71
    :cond_16
    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_1c

    .line 72
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    move-object/from16 v84, v4

    const-string v4, "ContentComponent"

    .line 73
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    .line 74
    invoke-interface {v11, v4, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_18

    move-object v3, v4

    goto :goto_10

    :cond_18
    if-nez v4, :cond_19

    goto :goto_10

    .line 75
    :cond_19
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lc/a/a/b/g/h;->v(Z)V

    .line 76
    :goto_10
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->g(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    invoke-static {v1, v4}, Lf/i/a/a/h1/t0/k/c;->b(II)I

    move-result v1

    goto :goto_12

    :cond_1a
    const-string v4, "Role"

    .line 77
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1b

    .line 78
    invoke-static {v11, v4}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    move-object/from16 v85, v13

    goto/16 :goto_14

    :cond_1b
    const-string v4, "AudioChannelConfiguration"

    .line 79
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1d

    .line 80
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v29

    :cond_1c
    :goto_12
    move-object/from16 v4, v84

    :goto_13
    move-object/from16 v106, v0

    move-object/from16 v86, v2

    move-object/from16 v88, v3

    move-object/from16 v84, v4

    move-object/from16 v90, v6

    move-object/from16 v89, v9

    move-object/from16 v101, v10

    move-object/from16 v102, v12

    move-object/from16 v85, v13

    move/from16 v103, v14

    move-object v8, v15

    move-object/from16 v10, v53

    move-object/from16 v3, v54

    move-object/from16 v2, v60

    move-object/from16 v9, v73

    move-object/from16 v0, v75

    move-object/from16 v4, v76

    move-object/from16 v6, v77

    move/from16 v100, v78

    move/from16 v76, v81

    move-object/from16 v12, p0

    move-object/from16 v81, v5

    move-object v5, v11

    move-object/from16 v11, p1

    goto/16 :goto_34

    :cond_1d
    move-object/from16 v85, v13

    const-string v13, "Accessibility"

    .line 81
    invoke-static {v11, v13}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1e

    .line 82
    invoke-static {v11, v13}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1e
    const-string v13, "SupplementalProperty"

    .line 83
    invoke-static {v11, v13}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_1f

    .line 84
    invoke-static {v11, v13}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 v106, v0

    move-object/from16 v86, v2

    move-object/from16 v88, v3

    move-object/from16 v90, v6

    move-object/from16 v89, v9

    move-object/from16 v101, v10

    move-object/from16 v102, v12

    move/from16 v103, v14

    move-object v8, v15

    move-object/from16 v3, v54

    move-object/from16 v2, v60

    move-object/from16 v9, v73

    move-object/from16 v0, v75

    move-object/from16 v4, v76

    move-object/from16 v6, v77

    move/from16 v100, v78

    move/from16 v76, v81

    move-object/from16 v12, p0

    move-object/from16 v81, v5

    move v5, v1

    move-object v1, v11

    move-object/from16 v11, p1

    goto/16 :goto_33

    :cond_1f
    move-object/from16 v86, v2

    const-string v2, "Representation"

    .line 85
    invoke-static {v11, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    move/from16 v87, v1

    const-string v1, "InbandEventStream"

    if-eqz v61, :cond_54

    move-object/from16 v88, v3

    const/4 v3, 0x0

    .line 86
    invoke-interface {v11, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v3, "bandwidth"

    move-object/from16 v89, v9

    const/4 v9, -0x1

    .line 87
    invoke-static {v11, v3, v9}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v66

    const/4 v3, 0x0

    .line 88
    invoke-interface {v11, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_20

    move-object/from16 v9, v51

    .line 89
    :cond_20
    invoke-interface {v11, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    move-object/from16 v3, v52

    .line 90
    :cond_21
    invoke-static {v11, v6, v14}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v67

    move-object/from16 v90, v6

    move/from16 v6, v81

    .line 91
    invoke-static {v11, v5, v6}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v68

    move-object/from16 v81, v5

    move/from16 v5, v80

    .line 92
    invoke-static {v11, v5}, Lf/i/a/a/h1/t0/k/c;->k(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v69

    move-object/from16 v5, v76

    move/from16 v76, v6

    move/from16 v6, v78

    .line 93
    invoke-static {v11, v5, v6}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v70

    move-object/from16 v78, v5

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v100, v6

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v101, v10

    .line 96
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v62, 0x0

    const/16 v63, 0x0

    move-object/from16 v102, v12

    move/from16 v65, v29

    move-object/from16 v64, v82

    move-object/from16 v12, v84

    .line 97
    :goto_15
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move/from16 v103, v14

    move-object/from16 v14, v83

    .line 98
    invoke-static {v11, v14}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v71

    if-eqz v71, :cond_23

    if-nez v62, :cond_22

    .line 99
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v83, v14

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lc/a/a/b/g/h;->f1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v62, 0x1

    goto :goto_16

    :cond_22
    move-object/from16 v83, v14

    goto :goto_16

    :cond_23
    move-object/from16 v83, v14

    .line 101
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    .line 102
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v65

    :goto_16
    move-object/from16 v71, v4

    move-object/from16 v72, v12

    move-object/from16 v14, v75

    move-object/from16 v12, p0

    goto :goto_18

    :cond_24
    move-object/from16 v14, v75

    .line 103
    invoke-static {v11, v14}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v71

    if-eqz v71, :cond_25

    move-object/from16 v71, v4

    .line 104
    move-object/from16 v4, v64

    check-cast v4, Lf/i/a/a/h1/t0/k/j$e;

    move-object/from16 v72, v12

    move-object/from16 v12, p0

    invoke-virtual {v12, v11, v4}, Lf/i/a/a/h1/t0/k/c;->p(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$e;)Lf/i/a/a/h1/t0/k/j$e;

    move-result-object v64

    goto :goto_18

    :cond_25
    move-object/from16 v71, v4

    move-object/from16 v72, v12

    move-object/from16 v4, v60

    move-object/from16 v12, p0

    .line 105
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v60

    if-eqz v60, :cond_26

    move-object/from16 v60, v4

    .line 106
    move-object/from16 v4, v64

    check-cast v4, Lf/i/a/a/h1/t0/k/j$b;

    invoke-virtual {v12, v11, v4}, Lf/i/a/a/h1/t0/k/c;->q(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$b;)Lf/i/a/a/h1/t0/k/j$b;

    move-result-object v4

    :goto_17
    move-object/from16 v64, v4

    goto :goto_18

    :cond_26
    move-object/from16 v60, v4

    move-object/from16 v4, v54

    .line 107
    invoke-static {v11, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v54

    if-eqz v54, :cond_28

    move-object/from16 v54, v4

    .line 108
    move-object/from16 v4, v64

    check-cast v4, Lf/i/a/a/h1/t0/k/j$c;

    .line 109
    invoke-virtual {v12, v11, v4, v15}, Lf/i/a/a/h1/t0/k/c;->r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$c;Ljava/util/List;)Lf/i/a/a/h1/t0/k/j$c;

    move-result-object v4

    goto :goto_17

    :goto_18
    move-object/from16 v75, v8

    :cond_27
    :goto_19
    move-object/from16 v8, v63

    move-object/from16 v91, v64

    move-object/from16 v4, v72

    move/from16 v72, v65

    goto :goto_1a

    :cond_28
    move-object/from16 v54, v4

    .line 110
    invoke-static {v11, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 111
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->f(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v75, v8

    .line 112
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v8, :cond_29

    .line 113
    move-object/from16 v63, v8

    check-cast v63, Ljava/lang/String;

    .line 114
    :cond_29
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_27

    .line 115
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2a
    move-object/from16 v75, v8

    .line 116
    invoke-static {v11, v1}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 117
    invoke-static {v11, v1}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 118
    :cond_2b
    invoke-static {v11, v13}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 119
    invoke-static {v11, v13}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 120
    :cond_2c
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

    .line 121
    :goto_1a
    invoke-static {v11, v2}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 122
    invoke-static {v9}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "application/cea-608"

    const-string v11, "application/cea-708"

    if-eqz v1, :cond_2d

    .line 123
    invoke-static {v3}, Lf/i/a/a/m1/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 124
    :cond_2d
    invoke-static {v9}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 125
    invoke-static {v3}, Lf/i/a/a/m1/r;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 126
    :cond_2e
    invoke-static {v9}, Lf/i/a/a/h1/t0/k/c;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object v1, v9

    goto :goto_1b

    :cond_2f
    const-string v1, "application/mp4"

    .line 127
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    if-eqz v3, :cond_34

    const-string v1, "stpp"

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "application/ttml+xml"

    goto :goto_1b

    :cond_30
    const-string v1, "wvtt"

    .line 129
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v1, "application/x-mp4-vtt"

    goto :goto_1b

    :cond_31
    const-string v1, "application/x-rawcc"

    .line 130
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz v3, :cond_34

    const-string v1, "cea708"

    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    move-object v1, v11

    goto :goto_1b

    :cond_32
    const-string v1, "eia608"

    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "cea608"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_33
    move-object v1, v2

    goto :goto_1b

    :cond_34
    const/4 v1, 0x0

    :goto_1b
    const/4 v13, 0x0

    move-object/from16 v104, v15

    .line 133
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v105, v14

    const-string v14, "urn:mpeg:dash:role:2011"

    if-ge v13, v15, :cond_36

    .line 134
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/i/a/a/h1/t0/k/d;

    move-object/from16 v97, v6

    .line 135
    iget-object v6, v15, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v15, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    const-string v15, "main"

    .line 136
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    const/4 v6, 0x1

    goto :goto_1d

    :cond_35
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, v97

    move-object/from16 v14, v105

    goto :goto_1c

    :cond_36
    move-object/from16 v97, v6

    const/4 v6, 0x0

    :goto_1d
    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v96, v5

    .line 137
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_38

    .line 138
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/t0/k/d;

    move-object/from16 v106, v0

    .line 139
    iget-object v0, v5, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 140
    iget-object v0, v5, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lf/i/a/a/h1/t0/k/c;->h(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v15

    move v15, v0

    :cond_37
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v106

    goto :goto_1e

    :cond_38
    move-object/from16 v106, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 141
    :goto_1f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v0, v13, :cond_42

    .line 142
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lf/i/a/a/h1/t0/k/d;

    move-object/from16 v95, v8

    .line 143
    iget-object v8, v13, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 144
    iget-object v8, v13, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lf/i/a/a/h1/t0/k/c;->h(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v5, v8

    move-object/from16 v62, v14

    goto/16 :goto_24

    .line 145
    :cond_39
    iget-object v8, v13, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    move-object/from16 v62, v14

    const-string v14, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    .line 146
    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 147
    iget-object v8, v13, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    const/4 v13, 0x4

    if-nez v8, :cond_3a

    goto :goto_22

    .line 148
    :cond_3a
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    goto :goto_20

    :pswitch_1
    const-string v14, "6"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v8, 0x4

    goto :goto_21

    :pswitch_2
    const-string v14, "4"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v8, 0x3

    goto :goto_21

    :pswitch_3
    const-string v14, "3"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v8, 0x2

    goto :goto_21

    :pswitch_4
    const-string v14, "2"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v8, 0x1

    goto :goto_21

    :pswitch_5
    const-string v14, "1"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3b

    const/4 v8, 0x0

    goto :goto_21

    :cond_3b
    :goto_20
    const/4 v8, -0x1

    :goto_21
    if-eqz v8, :cond_40

    const/4 v14, 0x1

    if-eq v8, v14, :cond_3f

    const/4 v14, 0x2

    if-eq v8, v14, :cond_3e

    const/4 v14, 0x3

    if-eq v8, v14, :cond_3d

    if-eq v8, v13, :cond_3c

    :goto_22
    const/4 v8, 0x0

    goto :goto_23

    :cond_3c
    const/4 v8, 0x1

    goto :goto_23

    :cond_3d
    const/16 v8, 0x8

    goto :goto_23

    :cond_3e
    const/4 v8, 0x4

    goto :goto_23

    :cond_3f
    const/16 v8, 0x800

    goto :goto_23

    :cond_40
    const/16 v8, 0x200

    :goto_23
    or-int/2addr v5, v8

    :cond_41
    :goto_24
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v14, v62

    move-object/from16 v8, v95

    goto/16 :goto_1f

    :cond_42
    move-object/from16 v95, v8

    or-int v0, v15, v5

    if-eqz v1, :cond_4d

    const-string v5, "audio/eac3"

    .line 149
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    const/4 v1, 0x0

    .line 150
    :goto_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_44

    .line 151
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/h1/t0/k/d;

    .line 152
    iget-object v13, v8, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    const-string v14, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 153
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_43

    iget-object v8, v8, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    const-string v13, "ec+3"

    .line 154
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_43

    const-string v5, "audio/eac3-joc"

    goto :goto_26

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_44
    :goto_26
    move-object v1, v5

    .line 155
    :cond_45
    invoke-static {v1}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/16 v70, 0x0

    move-object/from16 v62, v74

    move-object/from16 v63, v9

    move-object/from16 v64, v1

    move-object/from16 v65, v3

    move/from16 v71, v6

    move/from16 v72, v0

    .line 156
    invoke-static/range {v61 .. v72}, Lf/i/a/a/b0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;II)Lf/i/a/a/b0;

    move-result-object v0

    goto/16 :goto_2b

    .line 157
    :cond_46
    invoke-static {v1}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    const/16 v69, 0x0

    move-object/from16 v62, v74

    move-object/from16 v63, v9

    move-object/from16 v64, v1

    move-object/from16 v65, v3

    move/from16 v67, v72

    move/from16 v68, v70

    move/from16 v70, v6

    move/from16 v71, v0

    move-object/from16 v72, v88

    .line 158
    invoke-static/range {v61 .. v72}, Lf/i/a/a/b0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;IILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v0

    goto/16 :goto_2b

    .line 159
    :cond_47
    invoke-static {v1}, Lf/i/a/a/h1/t0/k/c;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    const/4 v2, 0x0

    .line 161
    :goto_27
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4b

    .line 162
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/t0/k/d;

    .line 163
    iget-object v8, v5, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    const-string v10, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    iget-object v5, v5, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    if-eqz v5, :cond_48

    .line 164
    sget-object v8, Lf/i/a/a/h1/t0/k/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_48

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_29

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 167
    :cond_49
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/4 v2, 0x0

    .line 168
    :goto_28
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4b

    .line 169
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/t0/k/d;

    .line 170
    iget-object v8, v5, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    const-string v10, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    iget-object v5, v5, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    if-eqz v5, :cond_4a

    .line 171
    sget-object v8, Lf/i/a/a/h1/t0/k/c;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4a

    const/4 v2, 0x1

    .line 173
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_29

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_4b
    const/4 v2, -0x1

    :goto_29
    move/from16 v70, v2

    goto :goto_2a

    :cond_4c
    const/4 v2, -0x1

    const/16 v70, -0x1

    :goto_2a
    move-object/from16 v62, v74

    move-object/from16 v63, v9

    move-object/from16 v64, v1

    move-object/from16 v65, v3

    move/from16 v67, v6

    move/from16 v68, v0

    move-object/from16 v69, v88

    .line 174
    invoke-static/range {v61 .. v70}, Lf/i/a/a/b0;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Lf/i/a/a/b0;

    move-result-object v0

    goto :goto_2b

    :cond_4d
    move-object/from16 v64, v1

    move-object/from16 v62, v74

    move-object/from16 v63, v9

    move-object/from16 v65, v3

    move/from16 v67, v6

    move/from16 v68, v0

    move-object/from16 v69, v88

    .line 175
    invoke-static/range {v61 .. v69}, Lf/i/a/a/b0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Lf/i/a/a/b0;

    move-result-object v0

    :goto_2b
    move-object/from16 v92, v0

    if-eqz v91, :cond_4e

    move-object/from16 v94, v91

    goto :goto_2c

    .line 176
    :cond_4e
    new-instance v0, Lf/i/a/a/h1/t0/k/j$e;

    invoke-direct {v0}, Lf/i/a/a/h1/t0/k/j$e;-><init>()V

    move-object/from16 v94, v0

    .line 177
    :goto_2c
    new-instance v0, Lf/i/a/a/h1/t0/k/c$a;

    const-wide/16 v98, -0x1

    move-object/from16 v91, v0

    move-object/from16 v93, v4

    invoke-direct/range {v91 .. v99}, Lf/i/a/a/h1/t0/k/c$a;-><init>(Lf/i/a/a/b0;Ljava/lang/String;Lf/i/a/a/h1/t0/k/j;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 178
    iget-object v1, v0, Lf/i/a/a/h1/t0/k/c$a;->a:Lf/i/a/a/b0;

    .line 179
    iget-object v1, v1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_2e

    .line 181
    :cond_4f
    invoke-static {v1}, Lf/i/a/a/m1/r;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v1, 0x2

    :goto_2d
    move/from16 v5, v87

    goto :goto_2f

    .line 182
    :cond_50
    invoke-static {v1}, Lf/i/a/a/m1/r;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v1, 0x1

    goto :goto_2d

    .line 183
    :cond_51
    invoke-static {v1}, Lf/i/a/a/h1/t0/k/c;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x3

    goto :goto_2d

    :cond_52
    :goto_2e
    const/4 v1, -0x1

    goto :goto_2d

    .line 184
    :goto_2f
    invoke-static {v5, v1}, Lf/i/a/a/h1/t0/k/c;->b(II)I

    move-result v1

    move-object/from16 v6, v77

    .line 185
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v11, p1

    move-object/from16 v2, v60

    move-object/from16 v4, v78

    move-object/from16 v0, v105

    goto/16 :goto_31

    :cond_53
    move-object/from16 v95, v8

    move-object/from16 v11, p1

    move-object v12, v4

    move-object/from16 v4, v71

    move/from16 v65, v72

    move-object/from16 v8, v75

    move-object/from16 v64, v91

    move-object/from16 v63, v95

    move-object/from16 v75, v14

    move/from16 v14, v103

    goto/16 :goto_15

    :cond_54
    move-object/from16 v11, p1

    move-object/from16 v106, v0

    move-object/from16 v88, v3

    move-object/from16 v90, v6

    move-object/from16 v89, v9

    move-object/from16 v101, v10

    move-object/from16 v102, v12

    move/from16 v103, v14

    move-object/from16 v104, v15

    move-object/from16 v0, v75

    move-object/from16 v4, v76

    move-object/from16 v6, v77

    move/from16 v100, v78

    move/from16 v76, v81

    move-object/from16 v12, p0

    move-object/from16 v81, v5

    move/from16 v5, v87

    .line 186
    invoke-static {v11, v0}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 187
    move-object/from16 v1, v82

    check-cast v1, Lf/i/a/a/h1/t0/k/j$e;

    invoke-virtual {v12, v11, v1}, Lf/i/a/a/h1/t0/k/c;->p(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$e;)Lf/i/a/a/h1/t0/k/j$e;

    move-result-object v1

    move-object/from16 v2, v60

    goto :goto_30

    :cond_55
    move-object/from16 v2, v60

    .line 188
    invoke-static {v11, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 189
    move-object/from16 v1, v82

    check-cast v1, Lf/i/a/a/h1/t0/k/j$b;

    invoke-virtual {v12, v11, v1}, Lf/i/a/a/h1/t0/k/c;->q(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$b;)Lf/i/a/a/h1/t0/k/j$b;

    move-result-object v1

    :goto_30
    move-object/from16 v82, v1

    move v1, v5

    :goto_31
    move-object v5, v11

    move-object/from16 v10, v53

    move-object/from16 v3, v54

    move-object/from16 v9, v73

    move-object/from16 v8, v104

    goto :goto_34

    :cond_56
    move-object/from16 v3, v54

    .line 190
    invoke-static {v11, v3}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 191
    move-object/from16 v1, v82

    check-cast v1, Lf/i/a/a/h1/t0/k/j$c;

    move-object/from16 v8, v104

    .line 192
    invoke-virtual {v12, v11, v1, v8}, Lf/i/a/a/h1/t0/k/c;->r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$c;Ljava/util/List;)Lf/i/a/a/h1/t0/k/j$c;

    move-result-object v82

    move-object/from16 v9, v73

    goto :goto_32

    :cond_57
    move-object/from16 v8, v104

    .line 193
    invoke-static {v11, v1}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 194
    invoke-static {v11, v1}, Lf/i/a/a/h1/t0/k/c;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/d;

    move-result-object v1

    move-object/from16 v9, v73

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_58
    move-object/from16 v9, v73

    .line 195
    invoke-static/range {p1 .. p1}, Lc/a/a/b/g/h;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 196
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_59
    :goto_32
    move-object v1, v11

    :goto_33
    move-object/from16 v10, v53

    move/from16 v107, v5

    move-object v5, v1

    move/from16 v1, v107

    .line 197
    :goto_34
    invoke-static {v5, v10}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_64

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 199
    :goto_35
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 200
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/i/a/a/h1/t0/k/c$a;

    .line 201
    iget-object v4, v3, Lf/i/a/a/h1/t0/k/c$a;->a:Lf/i/a/a/b0;

    .line 202
    iget-object v5, v3, Lf/i/a/a/h1/t0/k/c$a;->d:Ljava/lang/String;

    if-eqz v5, :cond_5a

    goto :goto_36

    :cond_5a
    move-object/from16 v5, v49

    .line 203
    :goto_36
    iget-object v10, v3, Lf/i/a/a/h1/t0/k/c$a;->e:Ljava/util/ArrayList;

    move-object/from16 v13, v86

    .line 204
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 205
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_60

    .line 206
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_37
    if-ltz v14, :cond_5f

    .line 207
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/i/a/a/z0/e$b;

    .line 208
    invoke-virtual {v15}, Lf/i/a/a/z0/e$b;->a()Z

    move-result v29

    if-nez v29, :cond_5d

    const/16 v29, 0x0

    move-object/from16 v77, v6

    const/4 v6, 0x0

    .line 209
    :goto_38
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_5e

    .line 210
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf/i/a/a/z0/e$b;

    .line 211
    invoke-virtual {v11}, Lf/i/a/a/z0/e$b;->a()Z

    move-result v29

    if-eqz v29, :cond_5b

    invoke-virtual {v15}, Lf/i/a/a/z0/e$b;->a()Z

    move-result v29

    if-nez v29, :cond_5b

    iget-object v12, v15, Lf/i/a/a/z0/e$b;->b:Ljava/util/UUID;

    invoke-virtual {v11, v12}, Lf/i/a/a/z0/e$b;->b(Ljava/util/UUID;)Z

    move-result v11

    if-eqz v11, :cond_5b

    const/4 v11, 0x1

    goto :goto_39

    :cond_5b
    const/4 v11, 0x0

    :goto_39
    if-eqz v11, :cond_5c

    .line 212
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3a

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, p0

    goto :goto_38

    :cond_5d
    move-object/from16 v77, v6

    :cond_5e
    :goto_3a
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move-object/from16 v6, v77

    goto :goto_37

    :cond_5f
    move-object/from16 v77, v6

    .line 213
    new-instance v6, Lf/i/a/a/z0/e;

    const/4 v11, 0x0

    new-array v12, v11, [Lf/i/a/a/z0/e$b;

    .line 214
    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lf/i/a/a/z0/e$b;

    invoke-direct {v6, v5, v11, v10}, Lf/i/a/a/z0/e;-><init>(Ljava/lang/String;Z[Lf/i/a/a/z0/e$b;)V

    .line 215
    invoke-virtual {v4, v6}, Lf/i/a/a/b0;->a(Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object v4

    goto :goto_3b

    :cond_60
    move-object/from16 v77, v6

    :goto_3b
    move-object/from16 v63, v4

    .line 216
    iget-object v4, v3, Lf/i/a/a/h1/t0/k/c$a;->f:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-wide v5, v3, Lf/i/a/a/h1/t0/k/c$a;->g:J

    iget-object v10, v3, Lf/i/a/a/h1/t0/k/c$a;->b:Ljava/lang/String;

    iget-object v3, v3, Lf/i/a/a/h1/t0/k/c$a;->c:Lf/i/a/a/h1/t0/k/j;

    .line 219
    instance-of v11, v3, Lf/i/a/a/h1/t0/k/j$e;

    if-eqz v11, :cond_61

    .line 220
    new-instance v11, Lf/i/a/a/h1/t0/k/i$c;

    move-object/from16 v65, v3

    check-cast v65, Lf/i/a/a/h1/t0/k/j$e;

    const-wide/16 v68, -0x1

    const/16 v67, 0x0

    move-object/from16 v60, v11

    move-wide/from16 v61, v5

    move-object/from16 v64, v10

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v69}, Lf/i/a/a/h1/t0/k/i$c;-><init>(JLf/i/a/a/b0;Ljava/lang/String;Lf/i/a/a/h1/t0/k/j$e;Ljava/util/List;Ljava/lang/String;J)V

    goto :goto_3c

    .line 221
    :cond_61
    instance-of v11, v3, Lf/i/a/a/h1/t0/k/j$a;

    if-eqz v11, :cond_62

    .line 222
    new-instance v11, Lf/i/a/a/h1/t0/k/i$b;

    move-object/from16 v65, v3

    check-cast v65, Lf/i/a/a/h1/t0/k/j$a;

    move-object/from16 v60, v11

    move-wide/from16 v61, v5

    move-object/from16 v64, v10

    move-object/from16 v66, v4

    invoke-direct/range {v60 .. v66}, Lf/i/a/a/h1/t0/k/i$b;-><init>(JLf/i/a/a/b0;Ljava/lang/String;Lf/i/a/a/h1/t0/k/j$a;Ljava/util/List;)V

    .line 223
    :goto_3c
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move-object/from16 v86, v13

    move-object/from16 v6, v77

    goto/16 :goto_35

    .line 224
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_63
    new-instance v2, Lf/i/a/a/h1/t0/k/a;

    move-object/from16 v49, v2

    move/from16 v51, v1

    move-object/from16 v52, v0

    move-object/from16 v53, v7

    move-object/from16 v54, v8

    invoke-direct/range {v49 .. v54}, Lf/i/a/a/h1/t0/k/a;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v6, v59

    .line 226
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p0

    move-object/from16 v7, p1

    move-object/from16 v29, v7

    move-object/from16 v5, v55

    move-object/from16 v59, v56

    move-object/from16 v53, v58

    move-object/from16 v58, v89

    goto/16 :goto_48

    :cond_64
    move-object/from16 v75, v0

    move-object/from16 v60, v2

    move-object/from16 v54, v3

    move-object v11, v5

    move-object/from16 v77, v6

    move-object v15, v8

    move-object/from16 v73, v9

    move-object/from16 v53, v10

    move-object/from16 v5, v81

    move-object/from16 v8, v83

    move-object/from16 v13, v85

    move-object/from16 v2, v86

    move-object/from16 v3, v88

    move-object/from16 v9, v89

    move-object/from16 v6, v90

    move/from16 v78, v100

    move-object/from16 v10, v101

    move-object/from16 v12, v102

    move/from16 v14, v103

    move-object/from16 v0, v106

    move/from16 v81, v76

    move-object/from16 v76, v4

    move-object/from16 v4, v84

    goto/16 :goto_f

    :cond_65
    move-object/from16 v57, v4

    move-object/from16 v55, v6

    move-object v1, v7

    move-object/from16 v83, v8

    move-object/from16 v89, v9

    move-object/from16 v56, v10

    move-object/from16 v85, v13

    move-object/from16 v58, v14

    move-object v0, v15

    move-object v6, v5

    const-string v4, "EventStream"

    .line 227
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const/4 v0, 0x0

    move-object/from16 v5, v58

    .line 228
    invoke-interface {v1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_66

    move-object v15, v3

    goto :goto_3d

    :cond_66
    move-object v15, v2

    :goto_3d
    move-object/from16 v2, v57

    .line 229
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_67

    move-object/from16 v50, v3

    goto :goto_3e

    :cond_67
    move-object/from16 v50, v0

    :goto_3e
    const-wide/16 v7, 0x1

    const-string v0, "timescale"

    .line 230
    invoke-static {v1, v0, v7, v8}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v51

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x200

    invoke-direct {v3, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 233
    :goto_3f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "Event"

    .line 234
    invoke-static {v1, v7}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    const-wide/16 v8, 0x0

    move-object/from16 v13, v89

    .line 235
    invoke-static {v1, v13, v8, v9}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v53

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v14, v56

    .line 236
    invoke-static {v1, v14, v8, v9}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-string v8, "presentationTime"

    const-wide/16 v11, 0x0

    .line 237
    invoke-static {v1, v8, v11, v12}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v56

    const-wide/16 v11, 0x3e8

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-wide/from16 v13, v51

    .line 238
    invoke-static/range {v9 .. v14}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v60

    const-wide/32 v11, 0xf4240

    move-wide/from16 v9, v56

    .line 239
    invoke-static/range {v9 .. v14}, Lf/i/a/a/m1/h0;->h0(JJJ)J

    move-result-wide v8

    const-string v10, "messageData"

    const/4 v11, 0x0

    .line 240
    invoke-interface {v1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_68

    const/4 v10, 0x0

    .line 241
    :cond_68
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 242
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    const-string v12, "UTF-8"

    .line 243
    invoke-interface {v11, v3, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 244
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 245
    :goto_40
    invoke-static {v1, v7}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6a

    .line 246
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    goto :goto_41

    .line 247
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_41

    .line 248
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_41

    .line 249
    :pswitch_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_41

    .line 250
    :pswitch_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_41

    .line 251
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_41

    .line 252
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_41

    .line 253
    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_69
    :goto_41
    move-object/from16 v57, v2

    goto :goto_43

    .line 254
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_41

    .line 255
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v12, 0x0

    .line 256
    :goto_42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-ge v12, v13, :cond_69

    .line 257
    invoke-interface {v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v57, v2

    .line 258
    invoke-interface {v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-interface {v11, v13, v14, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v57

    goto :goto_42

    :pswitch_f
    move-object/from16 v57, v2

    .line 260
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_43

    :pswitch_10
    move-object/from16 v57, v2

    .line 261
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-interface {v11, v12, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    :goto_43
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-object/from16 v2, v57

    goto/16 :goto_40

    :cond_6a
    move-object/from16 v57, v2

    .line 263
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 264
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 265
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    if-nez v10, :cond_6b

    goto :goto_44

    .line 266
    :cond_6b
    invoke-static {v10}, Lf/i/a/a/m1/h0;->O(Ljava/lang/String;)[B

    move-result-object v2

    .line 267
    :goto_44
    new-instance v12, Lf/i/a/a/d1/g/a;

    move-object v7, v12

    move-object v8, v15

    move-object/from16 v9, v50

    move-wide/from16 v10, v60

    move-object/from16 v56, v3

    move-object v3, v12

    move-wide/from16 v12, v53

    move-object/from16 v53, v5

    move-object v5, v14

    move-object v14, v2

    invoke-direct/range {v7 .. v14}, Lf/i/a/a/d1/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 268
    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_6c
    move-object/from16 v57, v2

    move-object/from16 v53, v5

    move-object/from16 v59, v56

    move-object/from16 v58, v89

    move-object/from16 v56, v3

    .line 270
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 271
    :goto_45
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v12, v2, [J

    .line 273
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Lf/i/a/a/d1/g/a;

    const/4 v2, 0x0

    .line 274
    :goto_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 275
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 276
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v12, v2

    .line 277
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lf/i/a/a/d1/g/a;

    aput-object v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 278
    :cond_6d
    new-instance v0, Lf/i/a/a/h1/t0/k/e;

    move-object v7, v0

    move-object v8, v15

    move-object/from16 v9, v50

    move-wide/from16 v10, v51

    invoke-direct/range {v7 .. v13}, Lf/i/a/a/h1/t0/k/e;-><init>(Ljava/lang/String;Ljava/lang/String;J[J[Lf/i/a/a/d1/g/a;)V

    move-object/from16 v5, v55

    .line 279
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    move-object v7, v1

    move-object/from16 v15, v49

    :goto_48
    const/4 v0, 0x0

    move-object v12, v0

    move-object v1, v7

    move-object/from16 v7, v57

    goto :goto_4a

    :cond_6e
    move-object/from16 v5, v53

    move-object/from16 v3, v56

    move-object/from16 v2, v57

    move-object/from16 v89, v58

    move-object/from16 v56, v59

    goto/16 :goto_3f

    :cond_6f
    move-object/from16 v5, v55

    move-object/from16 v59, v56

    move-object/from16 v7, v57

    move-object/from16 v53, v58

    move-object/from16 v58, v89

    .line 280
    invoke-static {v1, v0}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x0

    move-object/from16 v4, v49

    .line 281
    invoke-virtual {v4, v1, v0}, Lf/i/a/a/h1/t0/k/c;->p(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$e;)Lf/i/a/a/h1/t0/k/j$e;

    move-result-object v34

    :goto_49
    move-object v12, v0

    move-object v15, v4

    goto :goto_4a

    :cond_70
    move-object/from16 v4, v49

    const/4 v0, 0x0

    .line 282
    invoke-static {v1, v2}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 283
    invoke-virtual {v4, v1, v0}, Lf/i/a/a/h1/t0/k/c;->q(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$b;)Lf/i/a/a/h1/t0/k/j$b;

    move-result-object v34

    goto :goto_49

    .line 284
    :cond_71
    invoke-static {v1, v3}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v1, v0, v2}, Lf/i/a/a/h1/t0/k/c;->r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$c;Ljava/util/List;)Lf/i/a/a/h1/t0/k/j$c;

    move-result-object v34

    goto :goto_49

    .line 286
    :cond_72
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_49

    :goto_4a
    move-object/from16 v3, v39

    move-object/from16 v0, v48

    .line 287
    :goto_4b
    invoke-static {v1, v0}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 288
    new-instance v0, Lf/i/a/a/h1/t0/k/f;

    move-object/from16 v34, v0

    move-object/from16 v38, v6

    move-object/from16 v39, v5

    invoke-direct/range {v34 .. v39}, Lf/i/a/a/h1/t0/k/f;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 289
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 290
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lf/i/a/a/h1/t0/k/f;

    .line 291
    iget-wide v2, v1, Lf/i/a/a/h1/t0/k/f;->b:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_74

    if-eqz v45, :cond_73

    const/16 v25, 0x1

    move-wide/from16 v2, v40

    move-object/from16 v4, v44

    goto :goto_4d

    .line 292
    :cond_73
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unable to determine start of period "

    invoke-static {v1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_74
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_75

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4c

    .line 294
    :cond_75
    iget-wide v4, v1, Lf/i/a/a/h1/t0/k/f;->b:J

    add-long/2addr v4, v2

    move-wide v2, v4

    :goto_4c
    move-object/from16 v4, v44

    .line 295
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4d
    move-object/from16 v0, p2

    move-wide/from16 v40, v2

    move-object/from16 v2, v28

    move-object/from16 v5, v29

    goto :goto_4f

    :cond_76
    move-object v2, v0

    move-object v4, v7

    move-wide/from16 v11, v46

    move-object/from16 v14, v53

    move-object/from16 v9, v58

    move-object/from16 v10, v59

    move-object/from16 v8, v83

    move-object/from16 v13, v85

    move-object/from16 v0, p0

    move-object v7, v1

    move-object/from16 v1, p1

    move-object/from16 v107, v6

    move-object v6, v5

    move-object/from16 v5, v107

    goto/16 :goto_e

    :cond_77
    move-object v4, v3

    move-object/from16 v29, v5

    move-wide/from16 v42, v6

    move-wide/from16 v32, v9

    move-wide/from16 v40, v11

    move/from16 v45, v15

    const/4 v0, 0x0

    .line 296
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4e
    move-object v12, v0

    move-object/from16 v2, v28

    move-object/from16 v5, v29

    move-object/from16 v0, p2

    :goto_4f
    const-string v1, "MPD"

    .line 297
    invoke-static {v5, v1}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v42, v1

    if-nez v3, :cond_7a

    cmp-long v3, v40, v1

    if-eqz v3, :cond_78

    move-wide/from16 v11, v40

    goto :goto_51

    :cond_78
    if-eqz v45, :cond_79

    goto :goto_50

    .line 298
    :cond_79
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "Unable to determine duration of static manifest."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7a
    :goto_50
    move-wide/from16 v11, v42

    .line 299
    :goto_51
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7b

    .line 300
    new-instance v1, Lf/i/a/a/h1/t0/k/b;

    move-object v8, v1

    move-wide/from16 v9, v32

    move-wide/from16 v13, v30

    move/from16 v15, v45

    move-object/from16 v24, v0

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v4

    invoke-direct/range {v8 .. v27}, Lf/i/a/a/h1/t0/k/b;-><init>(JJJZJJJJLf/i/a/a/h1/t0/k/g;Lf/i/a/a/h1/t0/k/m;Landroid/net/Uri;Ljava/util/List;)V

    return-object v1

    .line 301
    :cond_7b
    new-instance v0, Lf/i/a/a/h0;

    const-string v1, "No periods found."

    invoke-direct {v0, v1}, Lf/i/a/a/h0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    move-object/from16 v1, p1

    move-object/from16 p2, v0

    move-object v3, v4

    move-object v4, v12

    move-object/from16 v8, v27

    move-wide/from16 v13, v30

    move-wide/from16 v9, v32

    move-wide/from16 v11, v40

    move-wide/from16 v6, v42

    move/from16 v15, v45

    move-object/from16 v0, p0

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "-"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 5
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 6
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v3, p2

    move-wide v5, v0

    .line 7
    new-instance p1, Lf/i/a/a/h1/t0/k/h;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/h1/t0/k/h;-><init>(Ljava/lang/String;JJ)V

    return-object p1
.end method

.method public p(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$e;)Lf/i/a/a/h1/t0/k/j$e;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    .line 1
    iget-wide v4, v1, Lf/i/a/a/h1/t0/k/j;->b:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    invoke-static {v0, v6, v4, v5}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-wide v6, v1, Lf/i/a/a/h1/t0/k/j;->c:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    invoke-static {v0, v8, v6, v7}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    .line 3
    iget-wide v6, v1, Lf/i/a/a/h1/t0/k/j$e;->d:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    .line 4
    iget-wide v4, v1, Lf/i/a/a/h1/t0/k/j$e;->e:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 5
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 6
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 8
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    .line 9
    iget-object v8, v1, Lf/i/a/a/h1/t0/k/j;->a:Lf/i/a/a/h1/t0/k/h;

    .line 10
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 11
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "sourceURL"

    const-string v2, "range"

    move-object/from16 v3, p0

    .line 12
    invoke-virtual {v3, v0, v1, v2}, Lf/i/a/a/h1/t0/k/c;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    :cond_6
    move-object/from16 v3, p0

    .line 13
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 14
    invoke-static {v0, v1}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    new-instance v0, Lf/i/a/a/h1/t0/k/j$e;

    move-object v7, v0

    invoke-direct/range {v7 .. v16}, Lf/i/a/a/h1/t0/k/j$e;-><init>(Lf/i/a/a/h1/t0/k/h;JJJJ)V

    return-object v0
.end method

.method public q(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$b;)Lf/i/a/a/h1/t0/k/j$b;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j;->b:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v7, "timescale"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v2, :cond_1

    .line 2
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    const-string v7, "presentationTimeOffset"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v2, :cond_2

    .line 3
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v7, "duration"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    if-eqz v2, :cond_3

    .line 4
    iget-wide v3, v2, Lf/i/a/a/h1/t0/k/j$a;->d:J

    :cond_3
    const-string v5, "startNumber"

    invoke-static {v1, v5, v3, v4}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    .line 5
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "Initialization"

    .line 6
    invoke-static {v1, v6}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "sourceURL"

    const-string v6, "range"

    .line 7
    invoke-virtual {v0, v1, v4, v6}, Lf/i/a/a/h1/t0/k/c;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v4

    goto :goto_3

    :cond_5
    const-string v6, "SegmentTimeline"

    .line 8
    invoke-static {v1, v6}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 9
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->s(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_6
    const-string v6, "SegmentURL"

    .line 10
    invoke-static {v1, v6}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v3, :cond_7

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    const-string v6, "media"

    const-string v7, "mediaRange"

    .line 12
    invoke-virtual {v0, v1, v6, v7}, Lf/i/a/a/h1/t0/k/c;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v6

    .line 13
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_8
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v6, "SegmentList"

    .line 15
    invoke-static {v1, v6}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v2, :cond_c

    if-eqz v4, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    iget-object v4, v2, Lf/i/a/a/h1/t0/k/j;->a:Lf/i/a/a/h1/t0/k/h;

    :goto_4
    if-eqz v5, :cond_a

    goto :goto_5

    .line 17
    :cond_a
    iget-object v5, v2, Lf/i/a/a/h1/t0/k/j$a;->f:Ljava/util/List;

    :goto_5
    if-eqz v3, :cond_b

    goto :goto_6

    .line 18
    :cond_b
    iget-object v1, v2, Lf/i/a/a/h1/t0/k/j$b;->g:Ljava/util/List;

    move-object/from16 v19, v1

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v19, v3

    :goto_7
    move-object v9, v4

    move-object/from16 v18, v5

    .line 19
    new-instance v1, Lf/i/a/a/h1/t0/k/j$b;

    move-object v8, v1

    invoke-direct/range {v8 .. v19}, Lf/i/a/a/h1/t0/k/j$b;-><init>(Lf/i/a/a/h1/t0/k/h;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/h1/t0/k/j$c;Ljava/util/List;)Lf/i/a/a/h1/t0/k/j$c;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lf/i/a/a/h1/t0/k/j$c;",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/d;",
            ">;)",
            "Lf/i/a/a/h1/t0/k/j$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_0

    .line 1
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j;->b:J

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v7, "timescale"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v2, :cond_1

    .line 2
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j;->c:J

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    :goto_1
    const-string v7, "presentationTimeOffset"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    if-eqz v2, :cond_2

    .line 3
    iget-wide v5, v2, Lf/i/a/a/h1/t0/k/j$a;->e:J

    goto :goto_2

    :cond_2
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v7, "duration"

    invoke-static {v1, v7, v5, v6}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    if-eqz v2, :cond_3

    .line 4
    iget-wide v3, v2, Lf/i/a/a/h1/t0/k/j$a;->d:J

    :cond_3
    const-string v5, "startNumber"

    invoke-static {v1, v5, v3, v4}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    const/4 v3, 0x0

    .line 5
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    move-object/from16 v4, p3

    .line 6
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/i/a/a/h1/t0/k/d;

    .line 7
    iget-object v6, v5, Lf/i/a/a/h1/t0/k/d;->a:Ljava/lang/String;

    const-string v7, "http://dashif.org/guidelines/last-segment-number"

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9
    iget-object v3, v5, Lf/i/a/a/h1/t0/k/d;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v3, -0x1

    :goto_4
    move-wide/from16 v16, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 10
    iget-object v4, v2, Lf/i/a/a/h1/t0/k/j$c;->h:Lf/i/a/a/h1/t0/k/l;

    goto :goto_5

    :cond_6
    move-object v4, v3

    :goto_5
    const-string v5, "media"

    invoke-virtual {v0, v1, v5, v4}, Lf/i/a/a/h1/t0/k/c;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lf/i/a/a/h1/t0/k/l;)Lf/i/a/a/h1/t0/k/l;

    move-result-object v22

    if-eqz v2, :cond_7

    .line 11
    iget-object v4, v2, Lf/i/a/a/h1/t0/k/j$c;->g:Lf/i/a/a/h1/t0/k/l;

    goto :goto_6

    :cond_7
    move-object v4, v3

    :goto_6
    const-string v5, "initialization"

    invoke-virtual {v0, v1, v5, v4}, Lf/i/a/a/h1/t0/k/c;->t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lf/i/a/a/h1/t0/k/l;)Lf/i/a/a/h1/t0/k/l;

    move-result-object v21

    move-object v4, v3

    .line 12
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "Initialization"

    .line 13
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v3, "sourceURL"

    const-string v5, "range"

    .line 14
    invoke-virtual {v0, v1, v3, v5}, Lf/i/a/a/h1/t0/k/c;->o(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lf/i/a/a/h1/t0/k/h;

    move-result-object v3

    goto :goto_7

    :cond_9
    const-string v5, "SegmentTimeline"

    .line 15
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 16
    invoke-virtual/range {p0 .. p1}, Lf/i/a/a/h1/t0/k/c;->s(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_7

    .line 17
    :cond_a
    invoke-static/range {p1 .. p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v5, "SegmentTemplate"

    .line 18
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_d

    if-eqz v3, :cond_b

    goto :goto_8

    .line 19
    :cond_b
    iget-object v3, v2, Lf/i/a/a/h1/t0/k/j;->a:Lf/i/a/a/h1/t0/k/h;

    :goto_8
    if-eqz v4, :cond_c

    goto :goto_9

    .line 20
    :cond_c
    iget-object v1, v2, Lf/i/a/a/h1/t0/k/j$a;->f:Ljava/util/List;

    move-object/from16 v20, v1

    move-object v9, v3

    goto :goto_a

    :cond_d
    :goto_9
    move-object v9, v3

    move-object/from16 v20, v4

    .line 21
    :goto_a
    new-instance v1, Lf/i/a/a/h1/t0/k/j$c;

    move-object v8, v1

    invoke-direct/range {v8 .. v22}, Lf/i/a/a/h1/t0/k/j$c;-><init>(Lf/i/a/a/h1/t0/k/h;JJJJJLjava/util/List;Lf/i/a/a/h1/t0/k/l;Lf/i/a/a/h1/t0/k/l;)V

    return-object v1
.end method

.method public s(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lf/i/a/a/h1/t0/k/j$d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v3, "S"

    .line 3
    invoke-static {p1, v3}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "t"

    .line 4
    invoke-static {p1, v3, v1, v2}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-string v5, "d"

    .line 5
    invoke-static {p1, v5, v3, v4}, Lf/i/a/a/h1/t0/k/c;->m(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "r"

    .line 6
    invoke-static {p1, v6, v5}, Lf/i/a/a/h1/t0/k/c;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-ge v5, v6, :cond_2

    .line 7
    new-instance v7, Lf/i/a/a/h1/t0/k/j$d;

    invoke-direct {v7, v1, v2, v3, v4}, Lf/i/a/a/h1/t0/k/j$d;-><init>(JJ)V

    .line 8
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lf/i/a/a/h1/t0/k/c;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_2
    const-string v3, "SegmentTimeline"

    .line 10
    invoke-static {p1, v3}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0
.end method

.method public t(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lf/i/a/a/h1/t0/k/l;)Lf/i/a/a/h1/t0/k/l;
    .locals 16

    const/4 v0, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x4

    new-array v3, v2, [I

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_d

    const-string v9, "$"

    .line 3
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    goto :goto_0

    :cond_0
    if-eq v10, v7, :cond_1

    .line 6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v8

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v8

    move v7, v10

    goto :goto_0

    :cond_1
    const-string v10, "$$"

    .line 7
    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v1, v8

    invoke-static {v10, v11, v9}, Lf/b/a/a/a;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 9
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 10
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v10, "RepresentationID"

    .line 11
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    .line 12
    aput v12, v3, v8

    goto/16 :goto_4

    :cond_3
    const-string v10, "%0"

    .line 13
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v11, :cond_5

    .line 14
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "d"

    .line 15
    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "x"

    invoke-virtual {v13, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 16
    invoke-static {v13, v14}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 17
    :cond_4
    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    const-string v13, "%01d"

    .line 18
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v14, -0x74423897

    const/4 v15, 0x2

    if-eq v10, v14, :cond_8

    const v14, 0x27c6ed

    if-eq v10, v14, :cond_7

    const v14, 0x246e091

    if-eq v10, v14, :cond_6

    goto :goto_2

    :cond_6
    const-string v10, "Bandwidth"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v11, 0x1

    goto :goto_2

    :cond_7
    const-string v10, "Time"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v11, 0x2

    goto :goto_2

    :cond_8
    const-string v10, "Number"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v11, 0x0

    :cond_9
    :goto_2
    if-eqz v11, :cond_c

    if-eq v11, v12, :cond_b

    if-ne v11, v15, :cond_a

    .line 19
    aput v2, v3, v8

    goto :goto_3

    .line 20
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid template: "

    invoke-static {v2, v0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v7, 0x3

    .line 21
    aput v7, v3, v8

    goto :goto_3

    .line 22
    :cond_c
    aput v15, v3, v8

    .line 23
    :goto_3
    aput-object v13, v4, v8

    :goto_4
    add-int/lit8 v8, v8, 0x1

    .line 24
    aput-object v5, v1, v8

    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_0

    .line 25
    :cond_d
    new-instance v0, Lf/i/a/a/h1/t0/k/l;

    invoke-direct {v0, v1, v3, v4, v8}, Lf/i/a/a/h1/t0/k/l;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v0

    :cond_e
    return-object p3
.end method
