.class public final Lm/o/c/c$a;
.super Lm/g$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/o/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lm/o/d/g;

.field public final b:Lm/s/a;

.field public final c:Lm/o/d/g;

.field public final d:Lm/o/c/c$c;


# direct methods
.method public constructor <init>(Lm/o/c/c$c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lm/g$a;-><init>()V

    .line 2
    new-instance v0, Lm/o/d/g;

    invoke-direct {v0}, Lm/o/d/g;-><init>()V

    iput-object v0, p0, Lm/o/c/c$a;->a:Lm/o/d/g;

    .line 3
    new-instance v0, Lm/s/a;

    invoke-direct {v0}, Lm/s/a;-><init>()V

    iput-object v0, p0, Lm/o/c/c$a;->b:Lm/s/a;

    .line 4
    new-instance v1, Lm/o/d/g;

    const/4 v2, 0x2

    new-array v2, v2, [Lm/k;

    iget-object v3, p0, Lm/o/c/c$a;->a:Lm/o/d/g;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lm/o/d/g;-><init>([Lm/k;)V

    iput-object v1, p0, Lm/o/c/c$a;->c:Lm/o/d/g;

    .line 5
    iput-object p1, p0, Lm/o/c/c$a;->d:Lm/o/c/c$c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/c$a;->c:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    return v0
.end method

.method public b(Lm/n/a;)Lm/k;
    .locals 3

    .line 1
    iget-object v0, p0, Lm/o/c/c$a;->c:Lm/o/d/g;

    .line 2
    iget-boolean v0, v0, Lm/o/d/g;->b:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lm/s/b;->a:Lm/s/b$a;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lm/o/c/c$a;->d:Lm/o/c/c$c;

    new-instance v1, Lm/o/c/c$a$a;

    invoke-direct {v1, p0, p1}, Lm/o/c/c$a$a;-><init>(Lm/o/c/c$a;Lm/n/a;)V

    iget-object p1, p0, Lm/o/c/c$a;->a:Lm/o/d/g;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v1}, Lm/q/l;->c(Lm/n/a;)Lm/n/a;

    move-result-object v1

    .line 6
    new-instance v2, Lm/o/c/g;

    invoke-direct {v2, v1, p1}, Lm/o/c/g;-><init>(Lm/n/a;Lm/o/d/g;)V

    .line 7
    invoke-virtual {p1, v2}, Lm/o/d/g;->b(Lm/k;)V

    .line 8
    iget-object p1, v0, Lm/o/c/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 9
    iget-object v0, v2, Lm/o/c/g;->a:Lm/o/d/g;

    new-instance v1, Lm/o/c/g$a;

    invoke-direct {v1, v2, p1}, Lm/o/c/g$a;-><init>(Lm/o/c/g;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lm/o/d/g;->b(Lm/k;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/o/c/c$a;->c:Lm/o/d/g;

    invoke-virtual {v0}, Lm/o/d/g;->c()V

    return-void
.end method
