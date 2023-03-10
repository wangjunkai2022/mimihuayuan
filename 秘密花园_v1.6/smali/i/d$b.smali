.class public final Li/d$b;
.super Ljava/lang/Object;
.source "Cache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Li/w;

.field public final c:Ljava/lang/String;

.field public final d:Li/c0;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Li/w;

.field public final h:Li/v;

.field public final i:J

.field public final j:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 2
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "OkHttp-Sent-Millis"

    .line 3
    sput-object v0, Li/d$b;->k:Ljava/lang/String;

    .line 4
    sget-object v0, Li/m0/i/f;->c:Li/m0/i/f$a;

    .line 5
    sget-object v0, Li/m0/i/f;->a:Li/m0/i/f;

    if-eqz v0, :cond_0

    const-string v0, "OkHttp-Received-Millis"

    .line 6
    sput-object v0, Li/d$b;->l:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    throw v1

    .line 8
    :cond_1
    throw v1
.end method

.method public constructor <init>(Li/h0;)V
    .locals 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Li/h0;->b:Li/e0;

    .line 49
    iget-object v0, v0, Li/e0;->b:Li/x;

    .line 50
    iget-object v0, v0, Li/x;->j:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Li/d$b;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Li/h0;->i:Li/h0;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, v0, Li/h0;->b:Li/e0;

    .line 54
    iget-object v0, v0, Li/e0;->d:Li/w;

    .line 55
    iget-object v1, p1, Li/h0;->g:Li/w;

    .line 56
    invoke-static {v1}, Li/d;->e(Li/w;)Ljava/util/Set;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Li/m0/b;->b:Li/w;

    goto :goto_1

    .line 58
    :cond_0
    new-instance v2, Li/w$a;

    invoke-direct {v2}, Li/w$a;-><init>()V

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0}, Li/w;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_2

    .line 60
    invoke-virtual {v0, v3}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    invoke-virtual {v0, v3}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Li/w$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/w$a;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2}, Li/w$a;->d()Li/w;

    move-result-object v0

    .line 64
    :goto_1
    iput-object v0, p0, Li/d$b;->b:Li/w;

    .line 65
    iget-object v0, p1, Li/h0;->b:Li/e0;

    .line 66
    iget-object v0, v0, Li/e0;->c:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Li/d$b;->c:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Li/h0;->c:Li/c0;

    .line 69
    iput-object v0, p0, Li/d$b;->d:Li/c0;

    .line 70
    iget v0, p1, Li/h0;->e:I

    .line 71
    iput v0, p0, Li/d$b;->e:I

    .line 72
    iget-object v0, p1, Li/h0;->d:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Li/d$b;->f:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Li/h0;->g:Li/w;

    .line 75
    iput-object v0, p0, Li/d$b;->g:Li/w;

    .line 76
    iget-object v0, p1, Li/h0;->f:Li/v;

    .line 77
    iput-object v0, p0, Li/d$b;->h:Li/v;

    .line 78
    iget-wide v0, p1, Li/h0;->l:J

    .line 79
    iput-wide v0, p0, Li/d$b;->i:J

    .line 80
    iget-wide v0, p1, Li/h0;->m:J

    .line 81
    iput-wide v0, p0, Li/d$b;->j:J

    return-void

    .line 82
    :cond_3
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Lj/a0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lj/b;->h(Lj/a0;)Lj/j;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    move-object v3, v2

    check-cast v3, Lj/u;

    :try_start_1
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Li/d$b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Li/d$b;->c:Ljava/lang/String;

    .line 5
    new-instance v4, Li/w$a;

    invoke-direct {v4}, Li/w$a;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v3}, Lj/u;->u()J

    move-result-wide v5

    .line 7
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "expected an int but was \""

    const/16 v9, 0x22

    const-wide/16 v10, 0x0

    cmp-long v12, v5, v10

    if-ltz v12, :cond_b

    const v12, 0x7fffffff

    int-to-long v12, v12

    cmp-long v14, v5, v12

    if-gtz v14, :cond_b

    .line 8
    :try_start_3
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x0

    if-lez v14, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    if-nez v14, :cond_b

    long-to-int v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    .line 9
    :try_start_4
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Li/w$a;->b(Ljava/lang/String;)Li/w$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v4}, Li/w$a;->d()Li/w;

    move-result-object v4

    iput-object v4, v1, Li/d$b;->b:Li/w;

    .line 11
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Li/m0/e/j;->a(Ljava/lang/String;)Li/m0/e/j;

    move-result-object v4

    .line 12
    iget-object v5, v4, Li/m0/e/j;->a:Li/c0;

    iput-object v5, v1, Li/d$b;->d:Li/c0;

    .line 13
    iget v5, v4, Li/m0/e/j;->b:I

    iput v5, v1, Li/d$b;->e:I

    .line 14
    iget-object v4, v4, Li/m0/e/j;->c:Ljava/lang/String;

    iput-object v4, v1, Li/d$b;->f:Ljava/lang/String;

    .line 15
    new-instance v4, Li/w$a;

    invoke-direct {v4}, Li/w$a;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :try_start_5
    invoke-virtual {v3}, Lj/u;->u()J

    move-result-wide v5

    .line 17
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v7

    cmp-long v14, v5, v10

    if-ltz v14, :cond_a

    cmp-long v14, v5, v12

    if-gtz v14, :cond_a

    .line 18
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez v12, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_a

    long-to-int v6, v5

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_3

    .line 19
    :try_start_6
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Li/w$a;->b(Ljava/lang/String;)Li/w$a;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 20
    :cond_3
    sget-object v5, Li/d$b;->k:Ljava/lang/String;

    invoke-virtual {v4, v5}, Li/w$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 21
    sget-object v6, Li/d$b;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Li/w$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    sget-object v7, Li/d$b;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    .line 23
    sget-object v7, Li/d$b;->l:Ljava/lang/String;

    invoke-virtual {v4, v7}, Li/w$a;->f(Ljava/lang/String;)Li/w$a;

    if-eqz v5, :cond_4

    .line 24
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_4

    :cond_4
    move-wide v7, v10

    :goto_4
    iput-wide v7, v1, Li/d$b;->i:J

    if-eqz v6, :cond_5

    .line 25
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_5
    iput-wide v10, v1, Li/d$b;->j:J

    .line 26
    invoke-virtual {v4}, Li/w$a;->d()Li/w;

    move-result-object v4

    iput-object v4, v1, Li/d$b;->g:Li/w;

    .line 27
    iget-object v4, v1, Li/d$b;->a:Ljava/lang/String;

    const-string v5, "https://"

    const/4 v6, 0x2

    invoke-static {v4, v5, v15, v6}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 28
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v15, 0x1

    :cond_6
    if-nez v15, :cond_8

    .line 30
    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v4, Li/j;->t:Li/j$b;

    invoke-virtual {v4, v0}, Li/j$b;->b(Ljava/lang/String;)Li/j;

    move-result-object v0

    .line 32
    invoke-virtual {v1, v2}, Li/d$b;->a(Lj/j;)Ljava/util/List;

    move-result-object v4

    .line 33
    invoke-virtual {v1, v2}, Li/d$b;->a(Lj/j;)Ljava/util/List;

    move-result-object v2

    .line 34
    invoke-virtual {v3}, Lj/u;->p()Z

    move-result v5

    if-nez v5, :cond_7

    .line 35
    sget-object v5, Li/l0;->h:Li/l0$a;

    invoke-virtual {v3}, Lj/u;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Li/l0$a;->a(Ljava/lang/String;)Li/l0;

    move-result-object v3

    goto :goto_5

    .line 36
    :cond_7
    sget-object v3, Li/l0;->f:Li/l0;

    .line 37
    :goto_5
    sget-object v5, Li/v;->f:Li/v$a;

    invoke-virtual {v5, v3, v0, v4, v2}, Li/v$a;->b(Li/l0;Li/j;Ljava/util/List;Ljava/util/List;)Li/v;

    move-result-object v0

    iput-object v0, v1, Li/d$b;->h:Li/v;

    goto :goto_6

    .line 38
    :cond_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \"\" but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_9
    iput-object v0, v1, Li/d$b;->h:Li/v;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 40
    :goto_6
    invoke-interface/range {p1 .. p1}, Lj/a0;->close()V

    return-void

    .line 41
    :cond_a
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_0
    move-exception v0

    .line 42
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 43
    :cond_b
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v0

    .line 44
    :try_start_a
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    .line 45
    invoke-interface/range {p1 .. p1}, Lj/a0;->close()V

    throw v0

    :cond_c
    const-string v2, "rawSource"

    .line 46
    invoke-static {v2}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lj/j;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/j;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lj/j;->u()J

    move-result-wide v0

    .line 2
    invoke-interface {p1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_5

    const v3, 0x7fffffff

    int-to-long v3, v3

    cmp-long v5, v0, v3

    if-gtz v5, :cond_5

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    long-to-int v1, v0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 4
    sget-object p1, Lh/k/i;->a:Lh/k/i;

    return-object p1

    :cond_1
    :try_start_1
    const-string v0, "X.509"

    .line 5
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v4, v1, :cond_4

    .line 7
    invoke-interface {p1}, Lj/j;->n()Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v5, Lj/g;

    invoke-direct {v5}, Lj/g;-><init>()V

    .line 9
    sget-object v6, Lj/k;->e:Lj/k$a;

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    .line 10
    invoke-static {v3}, Lj/c0/a;->c(Ljava/lang/String;)Lj/k;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v5, v3}, Lj/g;->M(Lj/k;)Lj/g;

    .line 12
    new-instance v3, Lj/g$a;

    invoke-direct {v3, v5}, Lj/g$a;-><init>(Lj/g;)V

    .line 13
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    throw v6

    :cond_3
    :try_start_2
    const-string p1, "$receiver"

    .line 15
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    throw v6

    :cond_4
    return-object v2

    :catch_0
    move-exception p1

    .line 16
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_5
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 18
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lj/i;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/i;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lj/i;->z(J)Lj/i;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lj/i;->q(I)Lj/i;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    .line 4
    sget-object v5, Lj/k;->e:Lj/k$a;

    const-string v6, "bytes"

    invoke-static {v4, v6}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-static {v5, v4, v2, v2, v6}, Lj/k$a;->c(Lj/k$a;[BIII)Lj/k;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lj/c0/a;->a(Lj/k;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {p1, v4}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v4

    invoke-interface {v4, v1}, Lj/i;->q(I)Lj/i;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(Li/m0/c/e$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Li/m0/c/e$a;->d(I)Lj/y;

    move-result-object p1

    invoke-static {p1}, Lj/b;->g(Lj/y;)Lj/i;

    move-result-object p1

    .line 2
    iget-object v1, p0, Li/d$b;->a:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lj/t;

    invoke-virtual {v2, v1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lj/i;->q(I)Lj/i;

    .line 3
    iget-object v1, p0, Li/d$b;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    invoke-interface {v1, v3}, Lj/i;->q(I)Lj/i;

    .line 4
    iget-object v1, p0, Li/d$b;->b:Li/w;

    invoke-virtual {v1}, Li/w;->size()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lj/t;->z(J)Lj/i;

    invoke-virtual {v2, v3}, Lj/t;->q(I)Lj/i;

    .line 5
    iget-object v1, p0, Li/d$b;->b:Li/w;

    invoke-virtual {v1}, Li/w;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    const-string v5, ": "

    if-ge v4, v1, :cond_0

    .line 6
    iget-object v6, p0, Li/d$b;->b:Li/w;

    invoke-virtual {v6, v4}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v6

    .line 7
    invoke-interface {v6, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v5

    .line 8
    iget-object v6, p0, Li/d$b;->b:Li/w;

    invoke-virtual {v6, v4}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v5

    .line 9
    invoke-interface {v5, v3}, Lj/i;->q(I)Lj/i;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Li/m0/e/j;

    iget-object v4, p0, Li/d$b;->d:Li/c0;

    iget v6, p0, Li/d$b;->e:I

    iget-object v7, p0, Li/d$b;->f:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v7}, Li/m0/e/j;-><init>(Li/c0;ILjava/lang/String;)V

    invoke-virtual {v1}, Li/m0/e/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    invoke-interface {v1, v3}, Lj/i;->q(I)Lj/i;

    .line 11
    iget-object v1, p0, Li/d$b;->g:Li/w;

    invoke-virtual {v1}, Li/w;->size()I

    move-result v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Lj/t;->z(J)Lj/i;

    invoke-virtual {v2, v3}, Lj/t;->q(I)Lj/i;

    .line 12
    iget-object v1, p0, Li/d$b;->g:Li/w;

    invoke-virtual {v1}, Li/w;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_1

    .line 13
    iget-object v7, p0, Li/d$b;->g:Li/w;

    invoke-virtual {v7, v6}, Li/w;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v7

    .line 14
    invoke-interface {v7, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v7

    .line 15
    iget-object v8, p0, Li/d$b;->g:Li/w;

    invoke-virtual {v8, v6}, Li/w;->f(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v7

    .line 16
    invoke-interface {v7, v3}, Lj/i;->q(I)Lj/i;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 17
    :cond_1
    sget-object v1, Li/d$b;->k:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    .line 18
    invoke-interface {v1, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    .line 19
    iget-wide v6, p0, Li/d$b;->i:J

    invoke-interface {v1, v6, v7}, Lj/i;->z(J)Lj/i;

    move-result-object v1

    .line 20
    invoke-interface {v1, v3}, Lj/i;->q(I)Lj/i;

    .line 21
    sget-object v1, Li/d$b;->l:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    .line 22
    invoke-interface {v1, v5}, Lj/i;->y(Ljava/lang/String;)Lj/i;

    move-result-object v1

    .line 23
    iget-wide v5, p0, Li/d$b;->j:J

    invoke-interface {v1, v5, v6}, Lj/i;->z(J)Lj/i;

    move-result-object v1

    .line 24
    invoke-interface {v1, v3}, Lj/i;->q(I)Lj/i;

    .line 25
    iget-object v1, p0, Li/d$b;->a:Ljava/lang/String;

    const-string v5, "https://"

    invoke-static {v1, v5, v0, v4}, Lh/s/d;->w(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v2, v3}, Lj/t;->q(I)Lj/i;

    .line 27
    iget-object v0, p0, Li/d$b;->h:Li/v;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, v0, Li/v;->c:Li/j;

    .line 29
    iget-object v0, v0, Li/j;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v0}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object v0

    invoke-interface {v0, v3}, Lj/i;->q(I)Lj/i;

    .line 31
    iget-object v0, p0, Li/d$b;->h:Li/v;

    invoke-virtual {v0}, Li/v;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/d$b;->b(Lj/i;Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Li/d$b;->h:Li/v;

    .line 33
    iget-object v0, v0, Li/v;->d:Ljava/util/List;

    .line 34
    invoke-virtual {p0, p1, v0}, Li/d$b;->b(Lj/i;Ljava/util/List;)V

    .line 35
    iget-object p1, p0, Li/d$b;->h:Li/v;

    .line 36
    iget-object p1, p1, Li/v;->b:Li/l0;

    .line 37
    iget-object p1, p1, Li/l0;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, p1}, Lj/t;->y(Ljava/lang/String;)Lj/i;

    move-result-object p1

    invoke-interface {p1, v3}, Lj/i;->q(I)Lj/i;

    goto :goto_2

    .line 39
    :cond_2
    invoke-static {}, Lh/o/c/g;->e()V

    const/4 p1, 0x0

    throw p1

    .line 40
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lj/t;->close()V

    return-void
.end method
