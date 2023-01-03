.class public Li/m0/c/f;
.super Lj/l;
.source "FaultHidingSink.kt"


# instance fields
.field public b:Z

.field public final c:Lh/o/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/o/b/b<",
            "Ljava/io/IOException;",
            "Lh/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/y;Lh/o/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/y;",
            "Lh/o/b/b<",
            "-",
            "Ljava/io/IOException;",
            "Lh/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lj/l;-><init>(Lj/y;)V

    iput-object p2, p0, Li/m0/c/f;->c:Lh/o/b/b;

    return-void

    :cond_0
    const-string p1, "delegate"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/m0/c/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0}, Lj/l;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Li/m0/c/f;->b:Z

    .line 4
    iget-object v1, p0, Li/m0/c/f;->c:Lh/o/b/b;

    invoke-interface {v1, v0}, Lh/o/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/m0/c/f;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj/l;->a:Lj/y;

    invoke-interface {v0}, Lj/y;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Li/m0/c/f;->b:Z

    .line 4
    iget-object v1, p0, Li/m0/c/f;->c:Lh/o/b/b;

    invoke-interface {v1, v0}, Lh/o/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public j(Lj/g;J)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p0, Li/m0/c/f;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Lj/g;->skip(J)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj/l;->a:Lj/y;

    invoke-interface {v0, p1, p2, p3}, Lj/y;->j(Lj/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Li/m0/c/f;->b:Z

    .line 5
    iget-object p2, p0, Li/m0/c/f;->c:Lh/o/b/b;

    invoke-interface {p2, p1}, Lh/o/b/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string p1, "source"

    .line 6
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
