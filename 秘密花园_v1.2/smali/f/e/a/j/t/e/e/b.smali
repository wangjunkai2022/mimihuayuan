.class public Lf/e/a/j/t/e/e/b;
.super Ljava/lang/Object;
.source "CustomDataFetcher2.java"

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
.field public static final g:Ljava/lang/String;


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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "eAkrEB8Df1YHBVwCCg=="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/e/a/j/t/e/e/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li/f$a;Lf/d/a/o/o/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/e/a/j/t/e/e/b;->a:Li/f$a;

    .line 3
    iput-object p2, p0, Lf/e/a/j/t/e/e/b;->b:Lf/d/a/o/o/g;

    return-void
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
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->d:Li/i0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Li/i0;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf/e/a/j/t/e/e/b;->e:Lf/d/a/o/m/d$a;

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
    iput-object p1, p0, Lf/e/a/j/t/e/e/b;->d:Li/i0;

    .line 3
    invoke-virtual {p2}, Li/h0;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    iget-object p1, p0, Lf/e/a/j/t/e/e/b;->d:Li/i0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Li/i0;->g()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->d:Li/i0;

    invoke-virtual {v0}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Lf/d/a/u/b;

    invoke-direct {v1, v0, p1, p2}, Lf/d/a/u/b;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Lf/e/a/j/t/e/e/b;->c:Ljava/io/InputStream;

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 10
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    .line 11
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string p1, "YjYlSVM="

    .line 12
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v1

    .line 14
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 15
    :cond_0
    invoke-virtual {v0, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz p1, :cond_1

    .line 16
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 18
    :cond_1
    :goto_2
    throw p2

    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 19
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    const-string p1, ""

    .line 22
    :goto_5
    :try_start_6
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->b:Lf/d/a/o/o/g;

    .line 23
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GRECAg5dTUsH"

    .line 24
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lf/e/a/j/t/e/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 27
    :cond_2
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->b:Lf/d/a/o/o/g;

    .line 28
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GQcNB0UHQUc="

    .line 29
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AlBWVltBXwdCXw0CSFxSCg=="

    .line 30
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AVBWVltBXwdCXw0CSFxSUw=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lf/e/a/j/t/e/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lf/e/a/j/t/e/e/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    :cond_3
    :goto_6
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 35
    iget-object p2, p0, Lf/e/a/j/t/e/e/b;->e:Lf/d/a/o/m/d$a;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {p2, v0}, Lf/d/a/o/m/d$a;->d(Ljava/lang/Object;)V

    goto :goto_7

    .line 36
    :cond_4
    iget-object p1, p0, Lf/e/a/j/t/e/e/b;->e:Lf/d/a/o/m/d$a;

    new-instance v0, Lf/d/a/o/e;

    .line 37
    iget-object v1, p2, Li/h0;->d:Ljava/lang/String;

    .line 38
    iget p2, p2, Li/h0;->e:I

    .line 39
    invoke-direct {v0, v1, p2}, Lf/d/a/o/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    :goto_7
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->f:Li/f;

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
    sget-object p1, Lf/e/a/j/t/e/e/b;->g:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lf/e/a/j/t/e/e/b;->e:Lf/d/a/o/m/d$a;

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

    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->b:Lf/d/a/o/o/g;

    .line 2
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 4
    iget-object v0, p0, Lf/e/a/j/t/e/e/b;->b:Lf/d/a/o/o/g;

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
    iput-object p2, p0, Lf/e/a/j/t/e/e/b;->e:Lf/d/a/o/m/d$a;

    .line 9
    iget-object p2, p0, Lf/e/a/j/t/e/e/b;->a:Li/f$a;

    invoke-interface {p2, p1}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lf/e/a/j/t/e/e/b;->f:Li/f;

    .line 10
    iget-object p1, p0, Lf/e/a/j/t/e/e/b;->f:Li/f;

    invoke-interface {p1, p0}, Li/f;->W(Li/g;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "HUg="

    .line 1
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "E0Y="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fQ=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FEE="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fw=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aTw="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dg=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
