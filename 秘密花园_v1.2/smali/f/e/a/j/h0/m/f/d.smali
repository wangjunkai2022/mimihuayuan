.class public Lf/e/a/j/h0/m/f/d;
.super Ljava/lang/Object;
.source "OkHttpStreamFetcher.java"

# interfaces
.implements Lf/d/a/o/m/d;
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/m/d<",
        "Ljava/io/InputStream;",
        ">;",
        "Li/g;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Li/f$a;

.field public final b:Lf/d/a/o/o/g;

.field public c:Ljava/io/InputStream;

.field public d:Li/i0;

.field public e:Lf/d/a/o/m/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/m/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Li/f;

.field public g:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "eAkrEB8Df1YHBVwCCg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/h0/m/f/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li/f$a;Lf/d/a/o/o/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/e/a/j/h0/m/f/d;->g:Ljava/io/ByteArrayOutputStream;

    .line 3
    iput-object p1, p0, Lf/e/a/j/h0/m/f/d;->a:Li/f$a;

    .line 4
    iput-object p2, p0, Lf/e/a/j/h0/m/f/d;->b:Lf/d/a/o/o/g;

    return-void
.end method

.method public static g(Ljava/lang/String;)[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bw=="

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 6
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10

    .line 7
    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 8
    aput-byte v3, v1, v4

    add-int/2addr v4, v2

    move v3, v5

    goto :goto_1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->d:Li/i0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Li/i0;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lf/e/a/j/h0/m/f/d;->e:Lf/d/a/o/m/d$a;

    return-void
.end method

.method public c(Li/f;Li/h0;)V
    .locals 5
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Li/h0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p2, Li/h0;->h:Li/i0;

    .line 2
    iput-object p1, p0, Lf/e/a/j/h0/m/f/d;->d:Li/i0;

    .line 3
    invoke-virtual {p2}, Li/h0;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lf/e/a/j/h0/m/f/d;->d:Li/i0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Li/i0;->g()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->d:Li/i0;

    invoke-virtual {v0}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Lf/d/a/u/b;

    invoke-direct {v1, v0, p1, p2}, Lf/d/a/u/b;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Lf/e/a/j/h0/m/f/d;->c:Ljava/io/InputStream;

    .line 10
    iget-object p1, p0, Lf/e/a/j/h0/m/f/d;->e:Lf/d/a/o/m/d$a;

    .line 11
    :try_start_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v2, v0, [B

    :goto_0
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_0

    .line 13
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "dVAlV1NHCwtFUHJeTVJQLwYnICFdQnoHNlYBUjtYVl4="

    .line 14
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "clJSIS82DwBAV3BUTyslKHRVISFbRgwKRCICUkwuUVk="

    .line 15
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lf/e/a/j/h0/m/f/d;->g(Ljava/lang/String;)[B

    move-result-object v0

    const-string v4, "dicw"

    invoke-static {v4}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 17
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v2}, Lf/e/a/j/h0/m/f/d;->g(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "dicwSygxehwjLXc0TToCD1MLDQM="

    .line 18
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v4, 0x2

    .line 19
    invoke-virtual {v2, v4, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 20
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v0

    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {p2, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_2
    invoke-interface {p1, v1}, Lf/d/a/o/m/d$a;->d(Ljava/lang/Object;)V

    goto :goto_3

    .line 26
    :cond_1
    iget-object p1, p0, Lf/e/a/j/h0/m/f/d;->e:Lf/d/a/o/m/d$a;

    new-instance v0, Lf/d/a/o/e;

    .line 27
    iget-object v1, p2, Li/h0;->d:Ljava/lang/String;

    .line 28
    iget p2, p2, Li/h0;->e:I

    .line 29
    invoke-direct {v0, v1, p2}, Lf/d/a/o/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->f:Li/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Li/f;->cancel()V

    :cond_0
    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 1
    .param p1    # Li/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lf/e/a/j/h0/m/f/d;->h:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lf/e/a/j/h0/m/f/d;->e:Lf/d/a/o/m/d$a;

    invoke-interface {p1, p2}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method public e()Lf/d/a/o/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lf/d/a/o/a;->b:Lf/d/a/o/a;

    return-object v0
.end method

.method public f(Lf/d/a/f;Lf/d/a/o/m/d$a;)V
    .locals 3
    .param p1    # Lf/d/a/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/m/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/f;",
            "Lf/d/a/o/m/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Li/e0$a;

    invoke-direct {p1}, Li/e0$a;-><init>()V

    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->b:Lf/d/a/o/o/g;

    .line 2
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 4
    iget-object v0, p0, Lf/e/a/j/h0/m/f/d;->b:Lf/d/a/o/o/g;

    invoke-virtual {v0}, Lf/d/a/o/o/g;->d()Ljava/util/Map;

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

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Li/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/e0$a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Li/e0$a;->b()Li/e0;

    move-result-object p1

    .line 8
    iput-object p2, p0, Lf/e/a/j/h0/m/f/d;->e:Lf/d/a/o/m/d$a;

    .line 9
    iget-object p2, p0, Lf/e/a/j/h0/m/f/d;->a:Li/f$a;

    invoke-interface {p2, p1}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lf/e/a/j/h0/m/f/d;->f:Li/f;

    .line 10
    iget-object p1, p0, Lf/e/a/j/h0/m/f/d;->f:Li/f;

    invoke-interface {p1, p0}, Li/f;->W(Li/g;)V

    return-void
.end method
