.class public Lf/e/a/j/l0/h/e/a;
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

    sput-object v0, Lf/e/a/j/l0/h/e/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Li/f$a;Lf/d/a/o/o/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    .line 3
    iput-object p1, p0, Lf/e/a/j/l0/h/e/a;->a:Li/f$a;

    .line 4
    iput-object p2, p0, Lf/e/a/j/l0/h/e/a;->b:Lf/d/a/o/o/g;

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
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->d:Li/i0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Li/i0;->close()V

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lf/e/a/j/l0/h/e/a;->e:Lf/d/a/o/m/d$a;

    return-void
.end method

.method public c(Li/f;Li/h0;)V
    .locals 2
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
    iput-object p1, p0, Lf/e/a/j/l0/h/e/a;->d:Li/i0;

    .line 3
    invoke-virtual {p2}, Li/h0;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->d:Li/i0;

    const-string p2, "Argument must not be null"

    .line 5
    invoke-static {p1, p2}, Lc/a/a/b/g/h;->s(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Li/i0;->g()J

    move-result-wide p1

    .line 7
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->d:Li/i0;

    invoke-virtual {v0}, Li/i0;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v1, Lf/d/a/u/b;

    invoke-direct {v1, v0, p1, p2}, Lf/d/a/u/b;-><init>(Ljava/io/InputStream;J)V

    .line 9
    iput-object v1, p0, Lf/e/a/j/l0/h/e/a;->c:Ljava/io/InputStream;

    .line 10
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->e:Lf/d/a/o/m/d$a;

    .line 11
    :try_start_0
    invoke-virtual {p0, v1}, Lf/e/a/j/l0/h/e/a;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p2}, Lf/e/a/j/l0/h/e/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2c

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 14
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->c:Ljava/io/InputStream;

    .line 17
    :goto_0
    invoke-interface {p1, v0}, Lf/d/a/o/m/d$a;->d(Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->e:Lf/d/a/o/m/d$a;

    new-instance v0, Lf/d/a/o/e;

    .line 19
    iget-object v1, p2, Li/h0;->d:Ljava/lang/String;

    .line 20
    iget p2, p2, Li/h0;->e:I

    .line 21
    invoke-direct {v0, v1, p2}, Lf/d/a/o/e;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lf/d/a/o/m/d$a;->c(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->f:Li/f;

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
    sget-object p1, Lf/e/a/j/l0/h/e/a;->h:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "eAkrEB8DGVUSD1gCHEoXBBcNARAKGlcTAQNHEhQe"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->e:Lf/d/a/o/m/d$a;

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

    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->b:Lf/d/a/o/o/g;

    .line 2
    invoke-virtual {v0}, Lf/d/a/o/o/g;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Li/e0$a;->i(Ljava/lang/String;)Li/e0$a;

    .line 4
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->b:Lf/d/a/o/o/g;

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
    iput-object p2, p0, Lf/e/a/j/l0/h/e/a;->e:Lf/d/a/o/m/d$a;

    .line 9
    iget-object p2, p0, Lf/e/a/j/l0/h/e/a;->a:Li/f$a;

    invoke-interface {p2, p1}, Li/f$a;->a(Li/e0;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lf/e/a/j/l0/h/e/a;->f:Li/f;

    .line 10
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->f:Li/f;

    invoke-interface {p1, p0}, Li/f;->W(Li/g;)V

    return-void
.end method

.method public final g(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    const-string v0, "YjYlSVM="

    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object p1

    .line 7
    :cond_1
    iget-object v2, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    .line 9
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_2
    :goto_1
    throw p1

    :catch_2
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    iget-object p1, p0, Lf/e/a/j/l0/h/e/a;->g:Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_3

    .line 14
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
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

    const-string p1, ""

    return-object p1
.end method
