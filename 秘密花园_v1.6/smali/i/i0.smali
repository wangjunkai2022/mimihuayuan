.class public abstract Li/i0;
.super Ljava/lang/Object;
.source "ResponseBody.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/i0$a;,
        Li/i0$b;
    }
.end annotation


# static fields
.field public static final b:Li/i0$b;


# instance fields
.field public a:Ljava/io/Reader;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Li/i0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/i0$b;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/i0;->b:Li/i0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final F(Ljava/lang/String;Li/z;)Li/i0;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v0, v1}, Li/z;->a(Li/z;Ljava/nio/charset/Charset;I)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    .line 4
    sget-object v2, Li/z;->f:Li/z$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; charset=utf-8"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Li/z$a;->b(Ljava/lang/String;)Li/z;

    move-result-object p1

    .line 5
    :cond_0
    new-instance v2, Lj/g;

    invoke-direct {v2}, Lj/g;-><init>()V

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p0, v0, v3, v1}, Lj/g;->b0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lj/g;

    .line 7
    iget-wide v0, v2, Lj/g;->b:J

    .line 8
    new-instance p0, Li/j0;

    invoke-direct {p0, v2, p1, v0, v1}, Li/j0;-><init>(Lj/j;Li/z;J)V

    return-object p0

    :cond_1
    const-string p0, "charset"

    .line 9
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "$this$toResponseBody"

    .line 10
    invoke-static {p0}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract E()Li/z;
.end method

.method public abstract G()Lj/j;
.end method

.method public final H()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/i0;->G()Lj/j;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Li/i0;->f()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Li/m0/b;->x(Lj/j;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lj/j;->B(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/i0;->G()Lj/j;

    move-result-object v0

    invoke-static {v0}, Li/m0/b;->f(Ljava/io/Closeable;)V

    return-void
.end method

.method public final d()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/i0;->G()Lj/j;

    move-result-object v0

    invoke-interface {v0}, Lj/j;->C()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/i0;->g()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 2
    invoke-virtual {p0}, Li/i0;->G()Lj/j;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2}, Lj/j;->o()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length v2, v4

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    int-to-long v5, v2

    cmp-long v3, v0, v5

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v4

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lc/a/a/b/g/h;->z(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v3, v0, v1}, Lf/b/a/a/a;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final f()Ljava/nio/charset/Charset;
    .locals 3

    .line 1
    invoke-virtual {p0}, Li/i0;->E()Li/z;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    .line 2
    :try_start_0
    iget-object v2, v0, Li/z;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Li/z;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v1, Lh/s/a;->a:Ljava/nio/charset/Charset;

    :goto_1
    return-object v1
.end method

.method public abstract g()J
.end method
