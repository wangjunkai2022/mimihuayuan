.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;
    }
.end annotation


# static fields
.field public static final e:[B

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

.field public static final h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:[B

.field public d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1
    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    const-string v0, "*"

    .line 2
    invoke-static {v0}, Lc/a/a/b/g/h;->s0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    .line 3
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 1
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unicodeDomain"

    .line 2
    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [C

    const/4 v4, 0x0

    const/16 v5, 0x2e

    aput-char v5, v3, v4

    const/4 v6, 0x6

    invoke-static {v1, v3, v4, v4, v6}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v1

    .line 3
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 4
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v6

    .line 6
    :try_start_2
    sget-object v7, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 7
    sget-object v7, Li/m0/i/f;->a:Li/m0/i/f;

    const/4 v8, 0x5

    const-string v9, "Failed to read public suffix list"

    .line 8
    invoke-virtual {v7, v8, v9, v6}, Li/m0/i/f;->k(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 10
    :catch_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p1

    .line 12
    :cond_1
    :try_start_4
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 13
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 14
    :cond_2
    :goto_2
    iget-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_1a

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v6, v3, [[B

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v10, "UTF_8"

    invoke-static {v9, v10}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_4

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v8, v9}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    new-instance p1, Lh/f;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lh/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v7, 0x0

    :goto_5
    const-string v8, "publicSuffixListBytes"

    if-ge v7, v3, :cond_8

    .line 16
    sget-object v9, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v10, :cond_7

    invoke-static {v9, v10, v6, v7}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v8}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v9, v0

    :goto_6
    if-le v3, v2, :cond_b

    .line 17
    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    .line 18
    array-length v10, v7

    sub-int/2addr v10, v2

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_b

    .line 19
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v12, v7, v11

    .line 20
    sget-object v12, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v13, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v13, :cond_a

    invoke-static {v12, v13, v7, v11}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    invoke-static {v8}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object v12, v0

    :goto_8
    if-eqz v12, :cond_e

    sub-int/2addr v3, v2

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v3, :cond_e

    .line 21
    sget-object v8, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;

    iget-object v10, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    if-eqz v10, :cond_d

    invoke-static {v8, v10, v6, v7}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;->a(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$a;[B[[BI)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_d
    const-string p1, "publicSuffixExceptionListBytes"

    invoke-static {p1}, Lh/o/c/g;->g(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v8, v0

    :goto_a
    const/16 v3, 0x21

    if-eqz v8, :cond_f

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [C

    aput-char v5, v7, v4

    const/4 v8, 0x6

    .line 23
    invoke-static {v6, v7, v4, v4, v8}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v6

    goto :goto_d

    :cond_f
    const/4 v6, 0x6

    if-nez v9, :cond_10

    if-nez v12, :cond_10

    .line 24
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:Ljava/util/List;

    goto :goto_d

    :cond_10
    if-eqz v9, :cond_11

    new-array v7, v2, [C

    aput-char v5, v7, v4

    .line 25
    invoke-static {v9, v7, v4, v4, v6}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v7

    goto :goto_b

    .line 26
    :cond_11
    sget-object v7, Lh/k/i;->a:Lh/k/i;

    :goto_b
    if-eqz v12, :cond_12

    new-array v8, v2, [C

    aput-char v5, v8, v4

    .line 27
    invoke-static {v12, v8, v4, v4, v6}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v6

    goto :goto_c

    .line 28
    :cond_12
    sget-object v6, Lh/k/i;->a:Lh/k/i;

    .line 29
    :goto_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-le v8, v9, :cond_13

    move-object v6, v7

    .line 30
    :cond_13
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_14

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v3, :cond_14

    return-object v0

    .line 31
    :cond_14
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_15

    .line 32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_e

    .line 33
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_e
    sub-int/2addr v0, v1

    new-array v1, v2, [C

    aput-char v5, v1, v4

    const/4 v3, 0x6

    .line 34
    invoke-static {p1, v1, v4, v4, v3}, Lh/s/d;->r(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 35
    new-instance v1, Lh/k/f;

    invoke-direct {v1, p1}, Lh/k/f;-><init>(Ljava/lang/Iterable;)V

    if-ltz v0, :cond_16

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_10

    .line 36
    :cond_17
    instance-of p1, v1, Lh/r/b;

    if-eqz p1, :cond_18

    check-cast v1, Lh/r/b;

    invoke-interface {v1, v0}, Lh/r/b;->a(I)Lh/r/c;

    move-result-object v1

    :goto_10
    move-object v2, v1

    goto :goto_11

    .line 37
    :cond_18
    new-instance p1, Lh/r/a;

    invoke-direct {p1, v1, v0}, Lh/r/a;-><init>(Lh/r/c;I)V

    move-object v2, p1

    :goto_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, "."

    .line 38
    invoke-static/range {v2 .. v9}, Lc/a/a/b/g/h;->r0(Lh/r/c;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh/o/b/b;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    const-string p1, "Requested element count "

    const-string v1, " is less than zero."

    .line 39
    invoke-static {p1, v0, v1}, Lf/b/a/a/a;->K(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const-string p1, "domain"

    .line 41
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Lj/o;

    .line 3
    new-instance v2, Lj/q;

    new-instance v3, Lj/b0;

    invoke-direct {v3}, Lj/b0;-><init>()V

    invoke-direct {v2, v0, v3}, Lj/q;-><init>(Ljava/io/InputStream;Lj/b0;)V

    .line 4
    invoke-direct {v1, v2}, Lj/o;-><init>(Lj/a0;)V

    invoke-static {v1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v0

    .line 5
    move-object v1, v0

    check-cast v1, Lj/u;

    :try_start_0
    invoke-virtual {v1}, Lj/u;->readInt()I

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-virtual {v1, v2, v3}, Lj/u;->e(J)[B

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lj/u;->readInt()I

    move-result v3

    int-to-long v3, v3

    .line 8
    invoke-virtual {v1, v3, v4}, Lj/u;->e(J)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 10
    monitor-enter p0

    if-eqz v2, :cond_1

    .line 11
    :try_start_1
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v1, :cond_0

    .line 12
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    .line 14
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 15
    :cond_0
    :try_start_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 16
    :cond_1
    :try_start_3
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v1

    .line 18
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    return-void
.end method
