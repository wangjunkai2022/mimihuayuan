.class public Ll/m0/a/h$a;
.super Lm/j;
.source "ResultOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m0/a/h;
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
            "-",
            "Ll/m0/a/g<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/j<",
            "-",
            "Ll/m0/a/g<",
            "TR;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lm/j;-><init>(Lm/j;Z)V

    .line 2
    iput-object p1, p0, Ll/m0/a/h$a;->e:Lm/j;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m0/a/h$a;->e:Lm/j;

    invoke-virtual {v0}, Lm/j;->d()V

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ll/m0/a/h$a;->e:Lm/j;

    if-eqz p1, :cond_0

    .line 2
    new-instance v2, Ll/m0/a/g;

    invoke-direct {v2, v0, p1}, Ll/m0/a/g;-><init>(Ll/g0;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {v1, v2}, Lm/j;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Ll/m0/a/h$a;->e:Lm/j;

    invoke-virtual {p1}, Lm/j;->d()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "error == null"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    :try_start_2
    iget-object v1, p0, Ll/m0/a/h$a;->e:Lm/j;

    invoke-virtual {v1, p1}, Lm/j;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lm/m/c; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lm/m/d; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lm/m/e; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 7
    invoke-static {v1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 8
    new-instance v2, Lm/m/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-direct {v2, v3}, Lm/m/a;-><init>([Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 10
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    throw v0

    .line 12
    :catch_0
    sget-object p1, Lm/q/o;->f:Lm/q/o;

    .line 13
    invoke-virtual {p1}, Lm/q/o;->b()Lm/q/b;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_1
    return-void

    .line 14
    :cond_2
    throw v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ll/g0;

    .line 2
    iget-object v0, p0, Ll/m0/a/h$a;->e:Lm/j;

    if-eqz p1, :cond_0

    .line 3
    new-instance v1, Ll/m0/a/g;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ll/m0/a/g;-><init>(Ll/g0;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0, v1}, Lm/j;->f(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "response == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
