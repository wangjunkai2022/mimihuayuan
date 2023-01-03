.class public abstract Lf/i/a/a/i1/m/d;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lf/i/a/a/i1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/i1/m/d$c;,
        Lf/i/a/a/i1/m/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/i1/m/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lf/i/a/a/i1/j;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lf/i/a/a/i1/m/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lf/i/a/a/i1/m/d$b;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/d;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lf/i/a/a/i1/m/d;->a:Ljava/util/ArrayDeque;

    new-instance v4, Lf/i/a/a/i1/m/d$b;

    invoke-direct {v4, v3}, Lf/i/a/a/i1/m/d$b;-><init>(Lf/i/a/a/i1/m/d$a;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lf/i/a/a/i1/m/d$c;

    invoke-direct {v2, p0, v3}, Lf/i/a/a/i1/m/d$c;-><init>(Lf/i/a/a/i1/m/d;Lf/i/a/a/i1/m/d$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf/i/a/a/i1/m/d;->e:J

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lf/i/a/a/i1/i;

    .line 2
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->m(Z)V

    .line 3
    invoke-virtual {p1}, Lf/i/a/a/y0/a;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    invoke-virtual {p0, p1}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    iget-wide v0, p0, Lf/i/a/a/i1/m/d;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lf/i/a/a/i1/m/d;->f:J

    .line 6
    iput-wide v0, p1, Lf/i/a/a/i1/m/d$b;->g:J

    .line 7
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/i1/m/d$b;

    iget-wide v2, v0, Lf/i/a/a/y0/e;->d:J

    iget-wide v4, p0, Lf/i/a/a/i1/m/d;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 4
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/i1/m/d$b;

    .line 5
    invoke-virtual {v0}, Lf/i/a/a/y0/a;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/i1/j;

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Lf/i/a/a/y0/a;->e(I)V

    .line 8
    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->g(Lf/i/a/a/i1/i;)V

    .line 10
    invoke-virtual {p0}, Lf/i/a/a/i1/m/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lf/i/a/a/i1/m/d;->f()Lf/i/a/a/i1/e;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Lf/i/a/a/y0/a;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13
    iget-object v1, p0, Lf/i/a/a/i1/m/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/i1/j;

    .line 14
    iget-wide v3, v0, Lf/i/a/a/y0/e;->d:J

    .line 15
    iput-wide v3, v1, Lf/i/a/a/y0/f;->b:J

    .line 16
    iput-object v2, v1, Lf/i/a/a/i1/j;->c:Lf/i/a/a/i1/e;

    .line 17
    iput-wide v3, v1, Lf/i/a/a/i1/j;->d:J

    .line 18
    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/a/a/b/g/h;->v(Z)V

    .line 2
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/i1/m/d$b;

    iput-object v0, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    :goto_1
    return-object v0
.end method

.method public abstract f()Lf/i/a/a/i1/e;
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lf/i/a/a/i1/m/d;->f:J

    .line 2
    iput-wide v0, p0, Lf/i/a/a/i1/m/d;->e:J

    .line 3
    :goto_0
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/i/a/a/i1/m/d$b;

    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lf/i/a/a/i1/m/d;->i(Lf/i/a/a/i1/m/d$b;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lf/i/a/a/i1/m/d;->d:Lf/i/a/a/i1/m/d$b;

    :cond_1
    return-void
.end method

.method public abstract g(Lf/i/a/a/i1/i;)V
.end method

.method public abstract h()Z
.end method

.method public final i(Lf/i/a/a/i1/m/d$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lf/i/a/a/y0/e;->i()V

    .line 2
    iget-object v0, p0, Lf/i/a/a/i1/m/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
