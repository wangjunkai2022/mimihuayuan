.class public Lf/i/a/a/l1/u;
.super Lf/i/a/a/l1/h;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lf/i/a/a/l1/a0;


# static fields
.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lf/i/a/a/m1/w;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i/a/a/m1/w<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lf/i/a/a/l1/a0$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final k:Lf/i/a/a/l1/a0$f;

.field public l:Lf/i/a/a/l1/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:Z

.field public p:J

.field public q:J

.field public r:J

.field public s:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/l1/u;->t:Ljava/util/regex/Pattern;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lf/i/a/a/l1/u;->u:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf/i/a/a/m1/w;IIZLf/i/a/a/l1/a0$f;)V
    .locals 0
    .param p2    # Lf/i/a/a/m1/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lf/i/a/a/l1/a0$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf/i/a/a/m1/w<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lf/i/a/a/l1/a0$f;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p2}, Lf/i/a/a/l1/h;-><init>(Z)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iput-object p1, p0, Lf/i/a/a/l1/u;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lf/i/a/a/l1/u;->i:Lf/i/a/a/m1/w;

    .line 5
    new-instance p1, Lf/i/a/a/l1/a0$f;

    invoke-direct {p1}, Lf/i/a/a/l1/a0$f;-><init>()V

    iput-object p1, p0, Lf/i/a/a/l1/u;->k:Lf/i/a/a/l1/a0$f;

    .line 6
    iput p3, p0, Lf/i/a/a/l1/u;->f:I

    .line 7
    iput p4, p0, Lf/i/a/a/l1/u;->g:I

    .line 8
    iput-boolean p5, p0, Lf/i/a/a/l1/u;->e:Z

    .line 9
    iput-object p6, p0, Lf/i/a/a/l1/u;->j:Lf/i/a/a/l1/a0$f;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static j(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {v0, p0}, Lf/b/a/a/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object v0

    .line 5
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/net/HttpURLConnection;J)V
    .locals 3

    .line 1
    sget v0, Lf/i/a/a/m1/h0;->a:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Lf/i/a/a/l1/p;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 1
    iput-object p1, p0, Lf/i/a/a/l1/u;->l:Lf/i/a/a/l1/p;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lf/i/a/a/l1/u;->s:J

    .line 3
    iput-wide v1, p0, Lf/i/a/a/l1/u;->r:J

    .line 4
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->g(Lf/i/a/a/l1/p;)V

    const/4 v3, 0x1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/u;->k(Lf/i/a/a/l1/p;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 7
    iget-object v5, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_a

    const/16 v6, 0x12b

    if-le v4, v6, :cond_0

    goto/16 :goto_5

    .line 8
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v6, p0, Lf/i/a/a/l1/u;->i:Lf/i/a/a/m1/w;

    if-eqz v6, :cond_2

    invoke-interface {v6, v0}, Lf/i/a/a/m1/w;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 11
    new-instance v1, Lf/i/a/a/l1/a0$d;

    invoke-direct {v1, v0, p1}, Lf/i/a/a/l1/a0$d;-><init>(Ljava/lang/String;Lf/i/a/a/l1/p;)V

    throw v1

    :cond_2
    :goto_0
    if-ne v4, v5, :cond_3

    .line 12
    iget-wide v4, p1, Lf/i/a/a/l1/p;->e:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-wide v4, v1

    :goto_1
    iput-wide v4, p0, Lf/i/a/a/l1/u;->p:J

    .line 13
    invoke-virtual {p1, v3}, Lf/i/a/a/l1/p;->b(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 14
    iget-wide v4, p1, Lf/i/a/a/l1/p;->f:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 15
    iput-wide v4, p0, Lf/i/a/a/l1/u;->q:J

    goto :goto_4

    .line 16
    :cond_4
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Length"

    .line 17
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 19
    :try_start_2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    :cond_5
    move-wide v4, v6

    :goto_2
    const-string v8, "Content-Range"

    .line 20
    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 22
    sget-object v8, Lf/i/a/a/l1/u;->t:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    .line 24
    :try_start_3
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    cmp-long v0, v4, v1

    if-gez v0, :cond_6

    move-wide v4, v8

    goto :goto_3

    :cond_6
    cmp-long v0, v4, v8

    if-eqz v0, :cond_7

    .line 25
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    nop

    :cond_7
    :goto_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    .line 26
    iget-wide v0, p0, Lf/i/a/a/l1/u;->p:J

    sub-long v6, v4, v0

    :cond_8
    iput-wide v6, p0, Lf/i/a/a/l1/u;->q:J

    goto :goto_4

    .line 27
    :cond_9
    iget-wide v0, p1, Lf/i/a/a/l1/p;->f:J

    iput-wide v0, p0, Lf/i/a/a/l1/u;->q:J

    .line 28
    :goto_4
    :try_start_4
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 29
    iput-boolean v3, p0, Lf/i/a/a/l1/u;->o:Z

    .line 30
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->h(Lf/i/a/a/l1/p;)V

    .line 31
    iget-wide v0, p0, Lf/i/a/a/l1/u;->q:J

    return-wide v0

    :catch_2
    move-exception v0

    .line 32
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 33
    new-instance v1, Lf/i/a/a/l1/a0$c;

    invoke-direct {v1, v0, p1, v3}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw v1

    .line 34
    :cond_a
    :goto_5
    iget-object v1, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 36
    new-instance v2, Lf/i/a/a/l1/a0$e;

    invoke-direct {v2, v4, v0, v1, p1}, Lf/i/a/a/l1/a0$e;-><init>(ILjava/lang/String;Ljava/util/Map;Lf/i/a/a/l1/p;)V

    const/16 p1, 0x1a0

    if-ne v4, p1, :cond_b

    .line 37
    new-instance p1, Lf/i/a/a/l1/n;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lf/i/a/a/l1/n;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 38
    :cond_b
    throw v2

    :catch_3
    move-exception v1

    .line 39
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 40
    new-instance v2, Lf/i/a/a/l1/a0$c;

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw v2

    :catch_4
    move-exception v1

    .line 41
    new-instance v2, Lf/i/a/a/l1/a0$c;

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw v2
.end method

.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    .line 3
    iget-wide v3, p0, Lf/i/a/a/l1/u;->q:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lf/i/a/a/l1/u;->s:J

    sub-long/2addr v3, v5

    .line 4
    :goto_0
    invoke-static {v2, v3, v4}, Lf/i/a/a/l1/u;->m(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 6
    :try_start_2
    new-instance v3, Lf/i/a/a/l1/a0$c;

    iget-object v4, p0, Lf/i/a/a/l1/u;->l:Lf/i/a/a/l1/p;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :cond_1
    :goto_1
    iput-object v1, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    .line 8
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 9
    iget-boolean v1, p0, Lf/i/a/a/l1/u;->o:Z

    if-eqz v1, :cond_2

    .line 10
    iput-boolean v0, p0, Lf/i/a/a/l1/u;->o:Z

    .line 11
    invoke-virtual {p0}, Lf/i/a/a/l1/h;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    .line 12
    iput-object v1, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    .line 13
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->i()V

    .line 14
    iget-boolean v1, p0, Lf/i/a/a/l1/u;->o:Z

    if-eqz v1, :cond_3

    .line 15
    iput-boolean v0, p0, Lf/i/a/a/l1/u;->o:Z

    .line 16
    invoke-virtual {p0}, Lf/i/a/a/l1/h;->f()V

    .line 17
    :cond_3
    throw v2
.end method

.method public d()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lf/i/a/a/l1/u;->m:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final k(Lf/i/a/a/l1/p;)Ljava/net/HttpURLConnection;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lf/i/a/a/l1/p;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget v2, v0, Lf/i/a/a/l1/p;->b:I

    .line 3
    iget-object v3, v0, Lf/i/a/a/l1/p;->c:[B

    .line 4
    iget-wide v14, v0, Lf/i/a/a/l1/p;->e:J

    .line 5
    iget-wide v12, v0, Lf/i/a/a/l1/p;->f:J

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v0, v4}, Lf/i/a/a/l1/p;->b(I)Z

    move-result v16

    const/4 v4, 0x2

    .line 7
    invoke-virtual {v0, v4}, Lf/i/a/a/l1/p;->b(I)Z

    move-result v17

    move-object/from16 v11, p0

    .line 8
    iget-boolean v0, v11, Lf/i/a/a/l1/u;->e:Z

    if-nez v0, :cond_0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    move/from16 v9, v17

    .line 9
    invoke-virtual/range {v0 .. v10}, Lf/i/a/a/l1/u;->l(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v10, v0, 0x1

    const/16 v4, 0x14

    if-gt v0, v4, :cond_6

    const/4 v0, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move-wide v8, v14

    move/from16 v18, v10

    move-wide v10, v12

    move-wide/from16 v19, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-wide/from16 v21, v14

    move v14, v0

    .line 10
    invoke-virtual/range {v4 .. v14}, Lf/i/a/a/l1/u;->l(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "Location"

    .line 12
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12f

    const/16 v7, 0x12e

    const/16 v8, 0x12d

    const/16 v9, 0x12c

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    const/4 v10, 0x3

    if-ne v2, v10, :cond_2

    :cond_1
    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v10, 0x133

    if-eq v4, v10, :cond_5

    const/16 v10, 0x134

    if-ne v4, v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_4

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 14
    invoke-static {v1, v5}, Lf/i/a/a/l1/u;->j(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x1

    move-object v3, v0

    goto :goto_2

    :cond_4
    return-object v0

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 16
    invoke-static {v1, v5}, Lf/i/a/a/l1/u;->j(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    :goto_2
    move-object/from16 v11, p0

    move/from16 v0, v18

    move-wide/from16 v12, v19

    move-wide/from16 v14, v21

    goto :goto_0

    :cond_6
    move/from16 v18, v10

    .line 17
    new-instance v0, Ljava/net/NoRouteToHostException;

    const-string v1, "Too many redirects: "

    move/from16 v2, v18

    invoke-static {v1, v2}, Lf/b/a/a/a;->J(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    iget v0, p0, Lf/i/a/a/l1/u;->f:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 3
    iget v0, p0, Lf/i/a/a/l1/u;->g:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 4
    iget-object v0, p0, Lf/i/a/a/l1/u;->j:Lf/i/a/a/l1/a0$f;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lf/i/a/a/l1/a0$f;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lf/i/a/a/l1/u;->k:Lf/i/a/a/l1/a0$f;

    invoke-virtual {v0}, Lf/i/a/a/l1/a0$f;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p4, v0

    if-nez v4, :cond_2

    cmp-long v0, p6, v2

    if-eqz v0, :cond_4

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p6, v2

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p4, "Range"

    .line 11
    invoke-virtual {p1, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    iget-object p4, p0, Lf/i/a/a/l1/u;->h:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_5

    const-string p4, "Accept-Encoding"

    const-string p5, "identity"

    .line 13
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p9, :cond_6

    const-string p4, "Icy-MetaData"

    const-string p5, "1"

    .line 14
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_6
    invoke-virtual {p1, p10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_7

    const/4 p4, 0x1

    goto :goto_2

    :cond_7
    const/4 p4, 0x0

    .line 16
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 17
    invoke-static {p2}, Lf/i/a/a/l1/p;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 18
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 19
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 20
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 22
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 23
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method public final n()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lf/i/a/a/l1/u;->r:J

    iget-wide v2, p0, Lf/i/a/a/l1/u;->p:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lf/i/a/a/l1/u;->u:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 3
    :cond_1
    :goto_0
    iget-wide v1, p0, Lf/i/a/a/l1/u;->r:J

    iget-wide v3, p0, Lf/i/a/a/l1/u;->p:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    sub-long/2addr v3, v1

    .line 4
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 5
    iget-object v1, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7
    iget-wide v2, p0, Lf/i/a/a/l1/u;->r:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lf/i/a/a/l1/u;->r:J

    .line 8
    invoke-virtual {p0, v1}, Lf/i/a/a/l1/h;->e(I)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 11
    :cond_4
    sget-object v1, Lf/i/a/a/l1/u;->u:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/l1/a0$c;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf/i/a/a/l1/u;->n()V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_0
    iget-wide v0, p0, Lf/i/a/a/l1/u;->q:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 3
    iget-wide v5, p0, Lf/i/a/a/l1/u;->s:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    :goto_0
    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    int-to-long v5, p3

    .line 4
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 5
    :cond_2
    iget-object v0, p0, Lf/i/a/a/l1/u;->n:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 6
    iget-wide p1, p0, Lf/i/a/a/l1/u;->q:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 8
    :cond_4
    iget-wide p2, p0, Lf/i/a/a/l1/u;->s:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lf/i/a/a/l1/u;->s:J

    .line 9
    invoke-virtual {p0, p1}, Lf/i/a/a/l1/h;->e(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lf/i/a/a/l1/a0$c;

    iget-object p3, p0, Lf/i/a/a/l1/u;->l:Lf/i/a/a/l1/p;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lf/i/a/a/l1/a0$c;-><init>(Ljava/io/IOException;Lf/i/a/a/l1/p;I)V

    throw p2
.end method
