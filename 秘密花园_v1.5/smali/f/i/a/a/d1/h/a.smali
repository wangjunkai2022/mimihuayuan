.class public final Lf/i/a/a/d1/h/a;
.super Ljava/lang/Object;
.source "IcyDecoder.java"

# interfaces
.implements Lf/i/a/a/d1/b;


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    .line 1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/d1/h/a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/d1/d;)Lf/i/a/a/d1/a;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p1, p1, Lf/i/a/a/y0/e;->c:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lf/i/a/a/m1/h0;->w([BII)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lf/i/a/a/d1/h/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    move-object v3, v0

    move-object v4, v3

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/i/a/a/m1/h0;->p0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    .line 8
    invoke-virtual {p1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x12cfba11

    if-eq v8, v9, :cond_1

    const v9, 0x622482d8

    if-eq v8, v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, "streamtitle"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const-string v8, "streamurl"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    :cond_2
    :goto_1
    if-eqz v7, :cond_4

    if-eq v7, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v4, v6

    goto :goto_2

    :cond_4
    move-object v3, v6

    .line 10
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    .line 11
    :cond_6
    new-instance v0, Lf/i/a/a/d1/a;

    new-array p1, v5, [Lf/i/a/a/d1/a$b;

    new-instance v2, Lf/i/a/a/d1/h/c;

    invoke-direct {v2, v3, v4}, Lf/i/a/a/d1/h/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, p1, v1

    invoke-direct {v0, p1}, Lf/i/a/a/d1/a;-><init>([Lf/i/a/a/d1/a$b;)V

    :cond_7
    return-object v0
.end method
