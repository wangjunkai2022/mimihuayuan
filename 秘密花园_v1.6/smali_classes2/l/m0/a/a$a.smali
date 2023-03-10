.class public Ll/m0/a/a$a;
.super Lm/j;
.source "BodyOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m0/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lm/j<",
        "Ll/g0<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final e:Lm/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/j<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-TR;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lm/j;-><init>(Lm/j;Z)V

    .line 2
    iput-object p1, p0, Ll/m0/a/a$a;->e:Lm/j;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll/m0/a/a$a;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/m0/a/a$a;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/m0/a/a$a;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/m0/a/a$a;->e:Lm/j;

    invoke-virtual {v0, p1}, Lm/j;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "This should never happen! Report as a Retrofit bug with the full stacktrace."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 5
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 6
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ll/g0;

    .line 2
    invoke-virtual {p1}, Ll/g0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ll/m0/a/a$a;->e:Lm/j;

    .line 4
    iget-object p1, p1, Ll/g0;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Lm/j;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ll/m0/a/a$a;->f:Z

    .line 7
    new-instance v1, Ll/m0/a/f;

    invoke-direct {v1, p1}, Ll/m0/a/f;-><init>(Ll/g0;)V

    const/4 p1, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Ll/m0/a/a$a;->e:Lm/j;

    invoke-virtual {v2, v1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lm/m/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lm/m/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lm/m/e; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    invoke-static {v2}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 10
    new-instance v3, Lm/m/a;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lm/m/a;-><init>([Ljava/lang/Throwable;)V

    .line 11
    sget-object v0, Lm/q/o;->f:Lm/q/o;

    .line 12
    invoke-virtual {v0}, Lm/q/o;->b()Lm/q/b;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    throw p1

    :catch_0
    nop

    .line 14
    sget-object v0, Lm/q/o;->f:Lm/q/o;

    .line 15
    invoke-virtual {v0}, Lm/q/o;->b()Lm/q/b;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 16
    :cond_2
    throw p1
.end method
