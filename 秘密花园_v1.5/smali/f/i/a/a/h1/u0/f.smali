.class public final Lf/i/a/a/h1/u0/f;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lf/i/a/a/h1/u0/i;


# instance fields
.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/i/a/a/h1/u0/f;->b:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/i/a/a/h1/u0/f;->c:Z

    return-void
.end method

.method public static b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/h1/u0/i$a;

    instance-of v1, p0, Lf/i/a/a/b1/x/e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    instance-of v1, p0, Lf/i/a/a/b1/x/a;

    if-nez v1, :cond_1

    instance-of v1, p0, Lf/i/a/a/b1/x/c;

    if-nez v1, :cond_1

    instance-of v1, p0, Lf/i/a/a/b1/t/d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 2
    :goto_1
    instance-of v4, p0, Lf/i/a/a/b1/x/b0;

    if-nez v4, :cond_3

    instance-of v4, p0, Lf/i/a/a/b1/u/d;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 3
    :cond_3
    :goto_2
    invoke-direct {v0, p0, v1, v2}, Lf/i/a/a/h1/u0/i$a;-><init>(Lf/i/a/a/b1/g;ZZ)V

    return-object v0
.end method

.method public static c(Lf/i/a/a/m1/e0;Lf/i/a/a/z0/e;Ljava/util/List;)Lf/i/a/a/b1/u/d;
    .locals 8
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/m1/e0;",
            "Lf/i/a/a/z0/e;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;)",
            "Lf/i/a/a/b1/u/d;"
        }
    .end annotation

    .line 1
    new-instance v7, Lf/i/a/a/b1/u/d;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_0
    move-object v5, p2

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    .line 3
    invoke-direct/range {v0 .. v6}, Lf/i/a/a/b1/u/d;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/u/j;Lf/i/a/a/z0/e;Ljava/util/List;Lf/i/a/a/b1/p;)V

    return-object v7
.end method

.method public static d(IZLf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/m1/e0;)Lf/i/a/a/b1/x/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lf/i/a/a/b0;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/m1/e0;",
            ")",
            "Lf/i/a/a/b1/x/b0;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 p3, 0x0

    const-string v0, "application/cea-608"

    .line 1
    invoke-static {p3, v0, p1, p3, p3}, Lf/i/a/a/b0;->q(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lf/i/a/a/z0/e;)Lf/i/a/a/b0;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 4
    :goto_0
    iget-object p1, p2, Lf/i/a/a/b0;->f:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-static {p1}, Lf/i/a/a/m1/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    .line 7
    :cond_2
    invoke-static {p1}, Lf/i/a/a/m1/r;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "video/avc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 8
    :cond_3
    new-instance p1, Lf/i/a/a/b1/x/b0;

    new-instance p2, Lf/i/a/a/b1/x/g;

    invoke-direct {p2, p0, p3}, Lf/i/a/a/b1/x/g;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lf/i/a/a/b1/x/b0;-><init>(ILf/i/a/a/m1/e0;Lf/i/a/a/b1/x/c0$c;)V

    return-object p1
.end method

.method public static e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lf/i/a/a/b1/g;->i(Lf/i/a/a/b1/d;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iput v0, p1, Lf/i/a/a/b1/d;->f:I

    move v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    iput v0, p1, Lf/i/a/a/b1/d;->f:I

    .line 3
    throw p0

    .line 4
    :catch_0
    iput v0, p1, Lf/i/a/a/b1/d;->f:I

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lf/i/a/a/b1/g;Landroid/net/Uri;Lf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/z0/e;Lf/i/a/a/m1/e0;Ljava/util/Map;Lf/i/a/a/b1/d;)Lf/i/a/a/h1/u0/i$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i/a/a/b1/g;",
            "Landroid/net/Uri;",
            "Lf/i/a/a/b0;",
            "Ljava/util/List<",
            "Lf/i/a/a/b0;",
            ">;",
            "Lf/i/a/a/z0/e;",
            "Lf/i/a/a/m1/e0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lf/i/a/a/b1/d;",
            ")",
            "Lf/i/a/a/h1/u0/i$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p7, 0x0

    if-eqz p1, :cond_9

    .line 1
    instance-of v0, p1, Lf/i/a/a/b1/x/b0;

    if-nez v0, :cond_1

    instance-of v0, p1, Lf/i/a/a/b1/u/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    instance-of v0, p1, Lf/i/a/a/h1/u0/r;

    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lf/i/a/a/h1/u0/r;

    iget-object v1, p3, Lf/i/a/a/b0;->A:Ljava/lang/String;

    invoke-direct {v0, v1, p6}, Lf/i/a/a/h1/u0/r;-><init>(Ljava/lang/String;Lf/i/a/a/m1/e0;)V

    invoke-static {v0}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_3
    instance-of v0, p1, Lf/i/a/a/b1/x/e;

    if-eqz v0, :cond_4

    .line 6
    new-instance v0, Lf/i/a/a/b1/x/e;

    invoke-direct {v0}, Lf/i/a/a/b1/x/e;-><init>()V

    invoke-static {v0}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_4
    instance-of v0, p1, Lf/i/a/a/b1/x/a;

    if-eqz v0, :cond_5

    .line 8
    new-instance v0, Lf/i/a/a/b1/x/a;

    invoke-direct {v0}, Lf/i/a/a/b1/x/a;-><init>()V

    invoke-static {v0}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v0

    goto :goto_2

    .line 9
    :cond_5
    instance-of v0, p1, Lf/i/a/a/b1/x/c;

    if-eqz v0, :cond_6

    .line 10
    new-instance v0, Lf/i/a/a/b1/x/c;

    invoke-direct {v0}, Lf/i/a/a/b1/x/c;-><init>()V

    invoke-static {v0}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_6
    instance-of v0, p1, Lf/i/a/a/b1/t/d;

    if-eqz v0, :cond_7

    .line 12
    new-instance v0, Lf/i/a/a/b1/t/d;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    invoke-direct {v0, p7, v1, v2}, Lf/i/a/a/b1/t/d;-><init>(IJ)V

    .line 14
    invoke-static {v0}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    goto :goto_3

    .line 15
    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unexpected previousExtractor type: "

    invoke-static {p3}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_9
    :goto_3
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, ""

    .line 18
    :cond_a
    iget-object p2, p3, Lf/i/a/a/b0;->i:Ljava/lang/String;

    const-string v0, "text/vtt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-nez p2, :cond_13

    const-string p2, ".webvtt"

    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13

    const-string p2, ".vtt"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto/16 :goto_6

    :cond_b
    const-string p2, ".aac"

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 22
    new-instance p1, Lf/i/a/a/b1/x/e;

    invoke-direct {p1}, Lf/i/a/a/b1/x/e;-><init>()V

    goto/16 :goto_7

    :cond_c
    const-string p2, ".ac3"

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_12

    const-string p2, ".ec3"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    const-string p2, ".ac4"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 26
    new-instance p1, Lf/i/a/a/b1/x/c;

    invoke-direct {p1}, Lf/i/a/a/b1/x/c;-><init>()V

    goto :goto_7

    :cond_e
    const-string p2, ".mp3"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 28
    new-instance p1, Lf/i/a/a/b1/t/d;

    invoke-direct {p1, p7, v0, v1}, Lf/i/a/a/b1/t/d;-><init>(IJ)V

    goto :goto_7

    :cond_f
    const-string p2, ".mp4"

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const-string v3, ".m4"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_11

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x5

    const-string v2, ".cmf"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_4

    .line 33
    :cond_10
    iget p1, p0, Lf/i/a/a/h1/u0/f;->b:I

    iget-boolean p2, p0, Lf/i/a/a/h1/u0/f;->c:Z

    invoke-static {p1, p2, p3, p4, p6}, Lf/i/a/a/h1/u0/f;->d(IZLf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/m1/e0;)Lf/i/a/a/b1/x/b0;

    move-result-object p1

    goto :goto_7

    .line 34
    :cond_11
    :goto_4
    invoke-static {p6, p5, p4}, Lf/i/a/a/h1/u0/f;->c(Lf/i/a/a/m1/e0;Lf/i/a/a/z0/e;Ljava/util/List;)Lf/i/a/a/b1/u/d;

    move-result-object p1

    goto :goto_7

    .line 35
    :cond_12
    :goto_5
    new-instance p1, Lf/i/a/a/b1/x/a;

    invoke-direct {p1}, Lf/i/a/a/b1/x/a;-><init>()V

    goto :goto_7

    .line 36
    :cond_13
    :goto_6
    new-instance p1, Lf/i/a/a/h1/u0/r;

    iget-object p2, p3, Lf/i/a/a/b0;->A:Ljava/lang/String;

    invoke-direct {p1, p2, p6}, Lf/i/a/a/h1/u0/r;-><init>(Ljava/lang/String;Lf/i/a/a/m1/e0;)V

    .line 37
    :goto_7
    iput p7, p8, Lf/i/a/a/b1/d;->f:I

    .line 38
    invoke-static {p1, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 39
    invoke-static {p1}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 40
    :cond_14
    instance-of p2, p1, Lf/i/a/a/h1/u0/r;

    if-nez p2, :cond_15

    .line 41
    new-instance p2, Lf/i/a/a/h1/u0/r;

    iget-object v2, p3, Lf/i/a/a/b0;->A:Ljava/lang/String;

    invoke-direct {p2, v2, p6}, Lf/i/a/a/h1/u0/r;-><init>(Ljava/lang/String;Lf/i/a/a/m1/e0;)V

    .line 42
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 43
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 44
    :cond_15
    instance-of p2, p1, Lf/i/a/a/b1/x/e;

    if-nez p2, :cond_16

    .line 45
    new-instance p2, Lf/i/a/a/b1/x/e;

    invoke-direct {p2}, Lf/i/a/a/b1/x/e;-><init>()V

    .line 46
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 47
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 48
    :cond_16
    instance-of p2, p1, Lf/i/a/a/b1/x/a;

    if-nez p2, :cond_17

    .line 49
    new-instance p2, Lf/i/a/a/b1/x/a;

    invoke-direct {p2}, Lf/i/a/a/b1/x/a;-><init>()V

    .line 50
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 51
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 52
    :cond_17
    instance-of p2, p1, Lf/i/a/a/b1/x/c;

    if-nez p2, :cond_18

    .line 53
    new-instance p2, Lf/i/a/a/b1/x/c;

    invoke-direct {p2}, Lf/i/a/a/b1/x/c;-><init>()V

    .line 54
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 55
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 56
    :cond_18
    instance-of p2, p1, Lf/i/a/a/b1/t/d;

    if-nez p2, :cond_19

    .line 57
    new-instance p2, Lf/i/a/a/b1/t/d;

    invoke-direct {p2, p7, v0, v1}, Lf/i/a/a/b1/t/d;-><init>(IJ)V

    .line 58
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result p7

    if-eqz p7, :cond_19

    .line 59
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 60
    :cond_19
    instance-of p2, p1, Lf/i/a/a/b1/u/d;

    if-nez p2, :cond_1a

    .line 61
    invoke-static {p6, p5, p4}, Lf/i/a/a/h1/u0/f;->c(Lf/i/a/a/m1/e0;Lf/i/a/a/z0/e;Ljava/util/List;)Lf/i/a/a/b1/u/d;

    move-result-object p2

    .line 62
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result p5

    if-eqz p5, :cond_1a

    .line 63
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1a
    instance-of p2, p1, Lf/i/a/a/b1/x/b0;

    if-nez p2, :cond_1b

    .line 65
    iget p2, p0, Lf/i/a/a/h1/u0/f;->b:I

    iget-boolean p5, p0, Lf/i/a/a/h1/u0/f;->c:Z

    .line 66
    invoke-static {p2, p5, p3, p4, p6}, Lf/i/a/a/h1/u0/f;->d(IZLf/i/a/a/b0;Ljava/util/List;Lf/i/a/a/m1/e0;)Lf/i/a/a/b1/x/b0;

    move-result-object p2

    .line 67
    invoke-static {p2, p8}, Lf/i/a/a/h1/u0/f;->e(Lf/i/a/a/b1/g;Lf/i/a/a/b1/d;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 68
    invoke-static {p2}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1b
    invoke-static {p1}, Lf/i/a/a/h1/u0/f;->b(Lf/i/a/a/b1/g;)Lf/i/a/a/h1/u0/i$a;

    move-result-object p1

    return-object p1
.end method
