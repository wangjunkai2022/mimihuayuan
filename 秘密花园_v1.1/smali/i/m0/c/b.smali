.class public final Li/m0/c/b;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lj/a0;


# instance fields
.field public a:Z

.field public final synthetic b:Lj/j;

.field public final synthetic c:Li/m0/c/c;

.field public final synthetic d:Lj/i;


# direct methods
.method public constructor <init>(Lj/j;Li/m0/c/c;Lj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/m0/c/b;->b:Lj/j;

    iput-object p2, p0, Li/m0/c/b;->c:Li/m0/c/c;

    iput-object p3, p0, Li/m0/c/b;->d:Lj/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lj/g;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Li/m0/c/b;->b:Lj/j;

    invoke-interface {v1, p1, p2, p3}, Lj/a0;->c(Lj/g;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Li/m0/c/b;->a:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Li/m0/c/b;->a:Z

    .line 4
    iget-object p1, p0, Li/m0/c/b;->d:Lj/i;

    invoke-interface {p1}, Lj/y;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Li/m0/c/b;->d:Lj/i;

    invoke-interface {v0}, Lj/i;->h()Lj/g;

    move-result-object v3

    .line 6
    iget-wide v0, p1, Lj/g;->b:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v2 .. v7}, Lj/g;->e(Lj/g;JJ)Lj/g;

    .line 8
    iget-object p1, p0, Li/m0/c/b;->d:Lj/i;

    invoke-interface {p1}, Lj/i;->t()Lj/i;

    return-wide p2

    :catch_0
    move-exception p1

    .line 9
    iget-boolean p2, p0, Li/m0/c/b;->a:Z

    if-nez p2, :cond_2

    .line 10
    iput-boolean v0, p0, Li/m0/c/b;->a:Z

    .line 11
    iget-object p2, p0, Li/m0/c/b;->c:Li/m0/c/c;

    invoke-interface {p2}, Li/m0/c/c;->b()V

    .line 12
    :cond_2
    throw p1

    :cond_3
    const-string p1, "sink"

    .line 13
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/m0/c/b;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Li/m0/b;->k(Lj/a0;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/m0/c/b;->a:Z

    .line 3
    iget-object v0, p0, Li/m0/c/b;->c:Li/m0/c/c;

    invoke-interface {v0}, Li/m0/c/c;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Li/m0/c/b;->b:Lj/j;

    invoke-interface {v0}, Lj/a0;->close()V

    return-void
.end method

.method public i()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Li/m0/c/b;->b:Lj/j;

    invoke-interface {v0}, Lj/a0;->i()Lj/b0;

    move-result-object v0

    return-object v0
.end method
