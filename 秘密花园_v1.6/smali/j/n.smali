.class public Lj/n;
.super Lj/b0;
.source "ForwardingTimeout.kt"


# instance fields
.field public e:Lj/b0;


# direct methods
.method public constructor <init>(Lj/b0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lj/b0;-><init>()V

    iput-object p1, p0, Lj/n;->e:Lj/b0;

    return-void

    :cond_0
    const-string p1, "delegate"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public a()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0}, Lj/b0;->a()Lj/b0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0}, Lj/b0;->b()Lj/b0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0}, Lj/b0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lj/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0, p1, p2}, Lj/b0;->d(J)Lj/b0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0}, Lj/b0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0}, Lj/b0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lj/b0;
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Lj/n;->e:Lj/b0;

    invoke-virtual {v0, p1, p2, p3}, Lj/b0;->g(JLjava/util/concurrent/TimeUnit;)Lj/b0;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "unit"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
