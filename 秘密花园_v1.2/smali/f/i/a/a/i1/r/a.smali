.class public final Lf/i/a/a/i1/r/a;
.super Lf/i/a/a/i1/c;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/i1/r/a$c;,
        Lf/i/a/a/i1/r/a$a;,
        Lf/i/a/a/i1/r/a$b;
    }
.end annotation


# static fields
.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Lf/i/a/a/i1/r/a$b;

.field public static final v:Lf/i/a/a/i1/r/a$a;


# instance fields
.field public final n:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->o:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->p:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->q:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->r:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->s:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/r/a;->t:Ljava/util/regex/Pattern;

    .line 7
    new-instance v0, Lf/i/a/a/i1/r/a$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lf/i/a/a/i1/r/a$b;-><init>(FII)V

    sput-object v0, Lf/i/a/a/i1/r/a;->u:Lf/i/a/a/i1/r/a$b;

    .line 8
    new-instance v0, Lf/i/a/a/i1/r/a$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lf/i/a/a/i1/r/a$a;-><init>(II)V

    sput-object v0, Lf/i/a/a/i1/r/a;->v:Lf/i/a/a/i1/r/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 1
    invoke-direct {p0, v0}, Lf/i/a/a/i1/c;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/i1/r/a;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "information"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static o(Ljava/lang/String;Lf/i/a/a/i1/r/d;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    const-string v0, "\\s+"

    .line 1
    invoke-static {p0, v0}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Lf/i/a/a/i1/r/a;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    array-length v1, v0

    if-ne v1, v3, :cond_9

    .line 5
    sget-object v1, Lf/i/a/a/i1/r/a;->q:Ljava/util/regex/Pattern;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_8

    const/4 p0, 0x3

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_3

    const/16 v7, 0xca8

    if-eq v6, v7, :cond_2

    const/16 v7, 0xe08

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x2

    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v2, :cond_6

    if-ne v5, v3, :cond_5

    .line 9
    iput p0, p1, Lf/i/a/a/i1/r/d;->j:I

    goto :goto_2

    .line 10
    :cond_5
    new-instance p0, Lf/i/a/a/i1/g;

    const-string p1, "Invalid unit for fontSize: \'"

    invoke-static {p1, v1, v4}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_6
    iput v3, p1, Lf/i/a/a/i1/r/d;->j:I

    goto :goto_2

    .line 12
    :cond_7
    iput v2, p1, Lf/i/a/a/i1/r/d;->j:I

    .line 13
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 14
    iput p0, p1, Lf/i/a/a/i1/r/d;->k:F

    return-void

    .line 15
    :cond_8
    new-instance p1, Lf/i/a/a/i1/g;

    const-string v0, "Invalid expression for fontSize: \'"

    invoke-static {v0, p0, v4}, Lf/b/a/a/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_9
    new-instance p0, Lf/i/a/a/i1/g;

    const-string p1, "Invalid number of entries for fontSize: "

    invoke-static {p1}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v0, v0

    const-string v1, "."

    invoke-static {p1, v0, v1}, Lf/b/a/a/a;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Ljava/lang/String;Lf/i/a/a/i1/r/a$b;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    .line 1
    sget-object v0, Lf/i/a/a/i1/r/a;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    long-to-double v8, v8

    .line 5
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    long-to-double v10, v10

    add-double/2addr v8, v10

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v8, v6

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_0

    .line 10
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_0
    move-wide v10, v5

    :goto_0
    add-double/2addr v8, v10

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lf/i/a/a/i1/r/a$b;->a:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_1

    :cond_1
    move-wide v10, v5

    :goto_1
    add-double/2addr v8, v10

    const/4 p0, 0x6

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lf/i/a/a/i1/r/a$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lf/i/a/a/i1/r/a$b;->a:F

    float-to-double p0, p0

    div-double v5, v0, p0

    :cond_2
    add-double/2addr v8, v5

    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 15
    :cond_3
    sget-object v0, Lf/i/a/a/i1/r/a;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 17
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 19
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_9

    const/16 v1, 0x68

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xda6

    if-eq v0, v1, :cond_6

    const/16 v1, 0x73

    if-eq v0, v1, :cond_5

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x5

    goto :goto_3

    :cond_5
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_6
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x3

    goto :goto_3

    :cond_7
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x4

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_f

    if-eq v7, v8, :cond_e

    if-eq v7, v6, :cond_d

    if-eq v7, v5, :cond_c

    if-eq v7, v4, :cond_b

    goto :goto_6

    .line 21
    :cond_b
    iget p0, p1, Lf/i/a/a/i1/r/a$b;->c:I

    int-to-double p0, p0

    goto :goto_4

    .line 22
    :cond_c
    iget p0, p1, Lf/i/a/a/i1/r/a$b;->a:F

    float-to-double p0, p0

    goto :goto_4

    :cond_d
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v9, p0

    goto :goto_6

    :cond_e
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :cond_f
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double v9, v9, p0

    :goto_6
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    .line 23
    :cond_10
    new-instance p1, Lf/i/a/a/i1/g;

    const-string v0, "Malformed time expression: "

    invoke-static {v0, p0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public k([BIZ)Lf/i/a/a/i1/e;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    :try_start_0
    iget-object v0, v8, Lf/i/a/a/i1/r/a;->n:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, ""

    .line 5
    new-instance v2, Lf/i/a/a/i1/r/c;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/high16 v16, -0x80000000

    const/high16 v17, -0x80000000

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/high16 v20, -0x80000000

    const/16 v21, 0x1

    move-object v12, v2

    .line 6
    invoke-direct/range {v12 .. v21}, Lf/i/a/a/i1/r/c;-><init>(Ljava/lang/String;FFIIFFIF)V

    .line 7
    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v1, v3, v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v3, 0x0

    .line 9
    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 10
    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 12
    sget-object v4, Lf/i/a/a/i1/r/a;->u:Lf/i/a/a/i1/r/a$b;

    .line 13
    sget-object v5, Lf/i/a/a/i1/r/a;->v:Lf/i/a/a/i1/r/a$a;

    move-object v14, v3

    const/4 v13, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 14
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/i1/r/b;

    const/4 v6, 0x2

    if-nez v13, :cond_8

    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v7, "tt"

    if-ne v1, v6, :cond_4

    .line 16
    :try_start_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v8, v0}, Lf/i/a/a/i1/r/a;->p(Lorg/xmlpull/v1/XmlPullParser;)Lf/i/a/a/i1/r/a$b;

    move-result-object v4

    .line 18
    sget-object v1, Lf/i/a/a/i1/r/a;->v:Lf/i/a/a/i1/r/a$a;

    invoke-virtual {v8, v0, v1}, Lf/i/a/a/i1/r/a;->n(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/a$a;)Lf/i/a/a/i1/r/a$a;

    move-result-object v5

    .line 19
    invoke-virtual {v8, v0}, Lf/i/a/a/i1/r/a;->v(Lorg/xmlpull/v1/XmlPullParser;)Lf/i/a/a/i1/r/a$c;

    move-result-object v3

    :cond_0
    move-object/from16 v16, v3

    move-object v7, v4

    move-object/from16 v17, v5

    .line 20
    invoke-static {v15}, Lf/i/a/a/i1/r/a;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    move-object v15, v7

    goto :goto_1

    :cond_1
    const-string v1, "head"

    .line 22
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v6, v10

    move-object v15, v7

    move-object v7, v11

    .line 23
    invoke-virtual/range {v1 .. v7}, Lf/i/a/a/i1/r/a;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lf/i/a/a/i1/r/a$a;Lf/i/a/a/i1/r/a$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_2
    move-object v15, v7

    .line 24
    :try_start_2
    invoke-virtual {v8, v0, v2, v10, v15}, Lf/i/a/a/i1/r/a;->r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/b;Ljava/util/Map;Lf/i/a/a/i1/r/a$b;)Lf/i/a/a/i1/r/b;

    move-result-object v1

    .line 25
    invoke-virtual {v12, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2, v1}, Lf/i/a/a/i1/r/b;->a(Lf/i/a/a/i1/r/b;)V
    :try_end_2
    .catch Lf/i/a/a/i1/g; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    add-int/lit8 v13, v13, 0x1

    :cond_3
    :goto_1
    move-object v4, v15

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-ne v1, v6, :cond_6

    .line 27
    :try_start_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/i/a/a/i1/r/b;->b(Ljava/lang/String;)Lf/i/a/a/i1/r/b;

    move-result-object v1

    .line 28
    iget-object v6, v2, Lf/i/a/a/i1/r/b;->l:Ljava/util/List;

    if-nez v6, :cond_5

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, Lf/i/a/a/i1/r/b;->l:Ljava/util/List;

    .line 30
    :cond_5
    iget-object v2, v2, Lf/i/a/a/i1/r/b;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 31
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32
    new-instance v14, Lf/i/a/a/i1/r/e;

    invoke-virtual {v12}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/i1/r/b;

    invoke-direct {v14, v1, v9, v10, v11}, Lf/i/a/a/i1/r/e;-><init>(Lf/i/a/a/i1/r/b;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 33
    :cond_7
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_8
    if-ne v1, v6, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    add-int/lit8 v13, v13, -0x1

    .line 34
    :cond_a
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :cond_b
    return-object v14

    :catch_1
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 37
    new-instance v1, Lf/i/a/a/i1/g;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lf/i/a/a/i1/r/d;

    invoke-direct {p1}, Lf/i/a/a/i1/r/d;-><init>()V

    :cond_0
    return-object p1
.end method

.method public final n(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/a$a;)Lf/i/a/a/i1/r/a$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    sget-object v0, Lf/i/a/a/i1/r/a;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 6
    new-instance v1, Lf/i/a/a/i1/r/a$a;

    invoke-direct {v1, v0, p1}, Lf/i/a/a/i1/r/a$a;-><init>(II)V

    return-object v1

    .line 7
    :cond_2
    new-instance v1, Lf/i/a/a/i1/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cell resolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public final p(Lorg/xmlpull/v1/XmlPullParser;)Lf/i/a/a/i1/r/a$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 3
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, " "

    .line 4
    invoke-static {v3, v2}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 6
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 7
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Lf/i/a/a/i1/g;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lf/i/a/a/i1/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    :goto_1
    sget-object v3, Lf/i/a/a/i1/r/a;->u:Lf/i/a/a/i1/r/a$b;

    iget v3, v3, Lf/i/a/a/i1/r/a$b;->b:I

    const-string v4, "subFrameRate"

    .line 10
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 12
    :cond_3
    sget-object v4, Lf/i/a/a/i1/r/a;->u:Lf/i/a/a/i1/r/a$b;

    iget v4, v4, Lf/i/a/a/i1/r/a$b;->c:I

    const-string v5, "tickRate"

    .line 13
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 15
    :cond_4
    new-instance p1, Lf/i/a/a/i1/r/a$b;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p1, v0, v3, v4}, Lf/i/a/a/i1/r/a$b;-><init>(FII)V

    return-object p1
.end method

.method public final q(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lf/i/a/a/i1/r/a$a;Lf/i/a/a/i1/r/a$c;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/r/d;",
            ">;",
            "Lf/i/a/a/i1/r/a$a;",
            "Lf/i/a/a/i1/r/a$c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/r/c;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/r/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v4, "style"

    .line 2
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 3
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Lf/i/a/a/i1/r/d;

    invoke-direct {v5}, Lf/i/a/a/i1/r/d;-><init>()V

    invoke-virtual {v0, v1, v5}, Lf/i/a/a/i1/r/a;->s(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v0, v4}, Lf/i/a/a/i1/r/a;->t(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v8, v4, v6

    .line 6
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf/i/a/a/i1/r/d;

    invoke-virtual {v5, v8}, Lf/i/a/a/i1/r/d;->a(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v4, v5, Lf/i/a/a/i1/r/d;->l:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 8
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v6, p3

    :cond_3
    move-object/from16 v7, p5

    goto/16 :goto_9

    :cond_4
    const-string v4, "region"

    .line 9
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "id"

    if-eqz v4, :cond_11

    .line 10
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    if-nez v8, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v5, "origin"

    .line 11
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 12
    sget-object v7, Lf/i/a/a/i1/r/a;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 13
    sget-object v9, Lf/i/a/a/i1/r/a;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 14
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_6

    .line 15
    :try_start_0
    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v10

    .line 16
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr v7, v10

    move v9, v5

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_10

    if-nez v3, :cond_7

    goto/16 :goto_6

    .line 18
    :cond_7
    :try_start_1
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 19
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v7, v7

    .line 20
    iget v9, v3, Lf/i/a/a/i1/r/a$c;->a:I

    int-to-float v9, v9

    div-float/2addr v7, v9

    int-to-float v5, v5

    .line 21
    iget v9, v3, Lf/i/a/a/i1/r/a$c;->b:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    int-to-float v9, v9

    div-float/2addr v5, v9

    move v9, v7

    move v7, v5

    :goto_1
    const-string v5, "extent"

    .line 22
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 23
    sget-object v13, Lf/i/a/a/i1/r/a;->r:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 24
    sget-object v14, Lf/i/a/a/i1/r/a;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 25
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 26
    :try_start_2
    invoke-virtual {v13, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v10

    .line 27
    invoke-virtual {v13, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    div-float/2addr v4, v10

    move v14, v4

    move v13, v5

    goto :goto_2

    .line 28
    :cond_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_10

    if-nez v3, :cond_9

    goto/16 :goto_6

    .line 29
    :cond_9
    :try_start_3
    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 30
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v10, v10

    .line 31
    iget v13, v3, Lf/i/a/a/i1/r/a$c;->a:I

    int-to-float v13, v13

    div-float/2addr v10, v13

    int-to-float v5, v5

    .line 32
    iget v4, v3, Lf/i/a/a/i1/r/a$c;->b:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    int-to-float v4, v4

    div-float/2addr v5, v4

    move v14, v5

    move v13, v10

    :goto_2
    const-string v4, "displayAlign"

    .line 33
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 34
    invoke-static {v4}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v15, -0x514d33ab

    if-eq v10, v15, :cond_b

    const v15, 0x58705dc

    if-eq v10, v15, :cond_a

    goto :goto_3

    :cond_a
    const-string v10, "after"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const-string v10, "center"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v5, 0x0

    :cond_c
    :goto_3
    if-eqz v5, :cond_e

    if-eq v5, v12, :cond_d

    goto :goto_4

    :cond_d
    add-float/2addr v7, v14

    move v10, v7

    const/4 v12, 0x2

    goto :goto_5

    :cond_e
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v14, v4

    add-float/2addr v4, v7

    move v10, v4

    goto :goto_5

    :cond_f
    :goto_4
    move v10, v7

    const/4 v12, 0x0

    :goto_5
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v6, p3

    .line 35
    iget v5, v6, Lf/i/a/a/i1/r/a$a;->a:I

    int-to-float v5, v5

    div-float v16, v4, v5

    .line 36
    new-instance v4, Lf/i/a/a/i1/r/c;

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v7, v4

    invoke-direct/range {v7 .. v16}, Lf/i/a/a/i1/r/c;-><init>(Ljava/lang/String;FFIIFFIF)V

    goto :goto_7

    :catch_0
    :cond_10
    :goto_6
    move-object/from16 v6, p3

    :goto_7
    if-eqz v4, :cond_3

    .line 37
    iget-object v5, v4, Lf/i/a/a/i1/r/c;->a:Ljava/lang/String;

    move-object/from16 v7, p5

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_11
    move-object/from16 v6, p3

    move-object/from16 v7, p5

    const-string v4, "metadata"

    .line 38
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 39
    :cond_12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "image"

    .line 40
    invoke-static {v1, v8}, Lc/a/a/b/g/h;->o0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 41
    invoke-static {v1, v5}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p6

    .line 43
    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_13
    move-object/from16 v10, p6

    .line 44
    :goto_8
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_a

    :cond_14
    :goto_9
    move-object/from16 v10, p6

    :goto_a
    const-string v4, "head"

    .line 45
    invoke-static {v1, v4}, Lc/a/a/b/g/h;->j0(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2
.end method

.method public final r(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/b;Ljava/util/Map;Lf/i/a/a/i1/r/a$b;)Lf/i/a/a/i1/r/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lf/i/a/a/i1/r/b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/r/c;",
            ">;",
            "Lf/i/a/a/i1/r/a$b;",
            ")",
            "Lf/i/a/a/i1/r/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/i1/g;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    .line 2
    invoke-virtual {v0, v1, v5}, Lf/i/a/a/i1/r/a;->s(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object v13

    const-string v9, ""

    move-object v14, v5

    move-object/from16 v16, v14

    move-object v15, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v5, v4, :cond_9

    .line 3
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v1, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "backgroundImage"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_2

    :sswitch_1
    const-string v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :sswitch_2
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_3
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_4
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_2

    :sswitch_5
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_7

    if-eq v6, v1, :cond_6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_5

    const/4 v8, 0x3

    if-eq v6, v8, :cond_4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_3

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1

    goto :goto_3

    :cond_1
    const-string v6, "#"

    .line 6
    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :cond_2
    :goto_3
    move-object/from16 v1, p3

    goto :goto_4

    :cond_3
    move-object/from16 v1, p3

    .line 8
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v15, v7

    goto :goto_4

    :cond_4
    move-object/from16 v1, p3

    .line 9
    invoke-virtual {v0, v7}, Lf/i/a/a/i1/r/a;->t(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 10
    array-length v7, v6

    if-lez v7, :cond_8

    move-object v14, v6

    goto :goto_4

    :cond_5
    move-object/from16 v1, p3

    .line 11
    invoke-static {v7, v3}, Lf/i/a/a/i1/r/a;->u(Ljava/lang/String;Lf/i/a/a/i1/r/a$b;)J

    move-result-wide v17

    goto :goto_4

    :cond_6
    move-object/from16 v1, p3

    .line 12
    invoke-static {v7, v3}, Lf/i/a/a/i1/r/a;->u(Ljava/lang/String;Lf/i/a/a/i1/r/a$b;)J

    move-result-wide v11

    goto :goto_4

    :cond_7
    move-object/from16 v1, p3

    .line 13
    invoke-static {v7, v3}, Lf/i/a/a/i1/r/a;->u(Ljava/lang/String;Lf/i/a/a/i1/r/a$b;)J

    move-result-wide v9

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    if-eqz v2, :cond_b

    .line 14
    iget-wide v3, v2, Lf/i/a/a/i1/r/b;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    cmp-long v1, v9, v5

    if-eqz v1, :cond_a

    add-long/2addr v9, v3

    :cond_a
    cmp-long v1, v11, v5

    if-eqz v1, :cond_c

    .line 15
    iget-wide v3, v2, Lf/i/a/a/i1/r/b;->d:J

    add-long/2addr v11, v3

    goto :goto_5

    :cond_b
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :cond_c
    :goto_5
    cmp-long v1, v11, v5

    if-nez v1, :cond_e

    cmp-long v1, v17, v5

    if-eqz v1, :cond_d

    add-long v17, v9, v17

    move-wide/from16 v11, v17

    goto :goto_6

    :cond_d
    if-eqz v2, :cond_e

    .line 16
    iget-wide v1, v2, Lf/i/a/a/i1/r/b;->e:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_e

    move-wide v11, v1

    .line 17
    :cond_e
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 18
    new-instance v1, Lf/i/a/a/i1/r/b;

    const/4 v8, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v16}, Lf/i/a/a/i1/r/b;-><init>(Ljava/lang/String;Ljava/lang/String;JJLf/i/a/a/i1/r/d;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_5
        0x18601 -> :sswitch_4
        0x188db -> :sswitch_3
        0x59478a9 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x4d0b70cd -> :sswitch_0
    .end sparse-switch
.end method

.method public final s(Lorg/xmlpull/v1/XmlPullParser;Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;
    .locals 11

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    .line 2
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_5
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_6
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 4
    :pswitch_0
    invoke-static {v3}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    goto :goto_3

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    goto :goto_3

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_3

    :sswitch_b
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x2

    goto :goto_3

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x3

    :cond_1
    :goto_3
    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 6
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 7
    iput v1, p2, Lf/i/a/a/i1/r/d;->g:I

    goto/16 :goto_5

    .line 8
    :cond_3
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 9
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 10
    iput v10, p2, Lf/i/a/a/i1/r/d;->g:I

    goto/16 :goto_5

    .line 11
    :cond_4
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 12
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 13
    iput v1, p2, Lf/i/a/a/i1/r/d;->f:I

    goto/16 :goto_5

    .line 14
    :cond_5
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 15
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 16
    iput v10, p2, Lf/i/a/a/i1/r/d;->f:I

    goto/16 :goto_5

    .line 17
    :pswitch_1
    invoke-static {v3}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    goto :goto_4

    :sswitch_d
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x2

    goto :goto_4

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x3

    goto :goto_4

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v6, 0x4

    :cond_6
    :goto_4
    if-eqz v6, :cond_b

    if-eq v6, v10, :cond_a

    if-eq v6, v9, :cond_9

    if-eq v6, v8, :cond_8

    if-eq v6, v7, :cond_7

    goto/16 :goto_5

    .line 18
    :cond_7
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 19
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->m:Landroid/text/Layout$Alignment;

    goto/16 :goto_5

    .line 20
    :cond_8
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 21
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->m:Landroid/text/Layout$Alignment;

    goto/16 :goto_5

    .line 22
    :cond_9
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 23
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->m:Landroid/text/Layout$Alignment;

    goto/16 :goto_5

    .line 24
    :cond_a
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 25
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->m:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 26
    :cond_b
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 27
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->m:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 28
    :pswitch_2
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    const-string v4, "italic"

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 30
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 31
    iput v3, p2, Lf/i/a/a/i1/r/d;->i:I

    goto :goto_5

    .line 32
    :pswitch_3
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    const-string v4, "bold"

    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 34
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 35
    iput v3, p2, Lf/i/a/a/i1/r/d;->h:I

    goto :goto_5

    .line 36
    :pswitch_4
    :try_start_0
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 37
    invoke-static {v3, p2}, Lf/i/a/a/i1/r/a;->o(Ljava/lang/String;Lf/i/a/a/i1/r/d;)V
    :try_end_0
    .catch Lf/i/a/a/i1/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 38
    :pswitch_5
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 39
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 40
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->a:Ljava/lang/String;

    goto :goto_5

    .line 41
    :pswitch_6
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 42
    :try_start_1
    invoke-static {v3, v1}, Lf/i/a/a/m1/j;->a(Ljava/lang/String;Z)I

    move-result v3

    .line 43
    invoke-static {v10}, Lc/a/a/b/g/h;->v(Z)V

    .line 44
    iput v3, p2, Lf/i/a/a/i1/r/d;->b:I

    .line 45
    iput-boolean v10, p2, Lf/i/a/a/i1/r/d;->c:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 46
    :pswitch_7
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 47
    :try_start_2
    invoke-static {v3, v1}, Lf/i/a/a/m1/j;->a(Ljava/lang/String;Z)I

    move-result v3

    .line 48
    iput v3, p2, Lf/i/a/a/i1/r/d;->d:I

    .line 49
    iput-boolean v10, p2, Lf/i/a/a/i1/r/d;->e:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 50
    :pswitch_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 51
    invoke-virtual {p0, p2}, Lf/i/a/a/i1/r/a;->l(Lf/i/a/a/i1/r/d;)Lf/i/a/a/i1/r/d;

    move-result-object p2

    .line 52
    iput-object v3, p2, Lf/i/a/a/i1/r/d;->l:Ljava/lang/String;

    :catch_0
    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch
.end method

.method public final t(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final v(Lorg/xmlpull/v1/XmlPullParser;)Lf/i/a/a/i1/r/a$c;
    .locals 3

    const-string v0, "extent"

    .line 1
    invoke-static {p1, v0}, Lc/a/a/b/g/h;->T(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lf/i/a/a/i1/r/a;->s:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 6
    new-instance v2, Lf/i/a/a/i1/r/a$c;

    invoke-direct {v2, v1, p1}, Lf/i/a/a/i1/r/a$c;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v0
.end method
