.class public final Ll/m0/a/i;
.super Ljava/lang/Object;
.source "RxJavaCallAdapter.java"

# interfaces
.implements Ll/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/e<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Lm/g;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lm/g;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/m0/a/i;->a:Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Ll/m0/a/i;->b:Lm/g;

    .line 4
    iput-boolean p3, p0, Ll/m0/a/i;->c:Z

    .line 5
    iput-boolean p4, p0, Ll/m0/a/i;->d:Z

    .line 6
    iput-boolean p5, p0, Ll/m0/a/i;->e:Z

    .line 7
    iput-boolean p6, p0, Ll/m0/a/i;->f:Z

    .line 8
    iput-boolean p7, p0, Ll/m0/a/i;->g:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m0/a/i;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Ll/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll/m0/a/i;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ll/m0/a/d;

    invoke-direct {v0, p1}, Ll/m0/a/d;-><init>(Ll/d;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ll/m0/a/e;

    invoke-direct {v0, p1}, Ll/m0/a/e;-><init>(Ll/d;)V

    .line 4
    :goto_0
    iget-boolean p1, p0, Ll/m0/a/i;->d:Z

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ll/m0/a/h;

    invoke-direct {p1, v0}, Ll/m0/a/h;-><init>(Lm/e$a;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean p1, p0, Ll/m0/a/i;->e:Z

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Ll/m0/a/a;

    invoke-direct {p1, v0}, Ll/m0/a/a;-><init>(Lm/e$a;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    new-instance p1, Lm/e;

    .line 9
    sget-object v1, Lm/q/l;->b:Lm/n/c;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1, v0}, Lm/n/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/e$a;

    .line 11
    :cond_3
    invoke-direct {p1, v0}, Lm/e;-><init>(Lm/e$a;)V

    .line 12
    iget-object v0, p0, Ll/m0/a/i;->b:Lm/g;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Lm/e;->d(Lm/g;)Lm/e;

    move-result-object p1

    .line 14
    :cond_4
    iget-boolean v0, p0, Ll/m0/a/i;->f:Z

    if-eqz v0, :cond_5

    .line 15
    new-instance v0, Lm/h;

    .line 16
    new-instance v1, Lm/o/a/f;

    invoke-direct {v1, p1}, Lm/o/a/f;-><init>(Lm/e;)V

    .line 17
    invoke-direct {v0, v1}, Lm/h;-><init>(Lm/h$a;)V

    return-object v0

    .line 18
    :cond_5
    iget-boolean v0, p0, Ll/m0/a/i;->g:Z

    if-eqz v0, :cond_6

    .line 19
    new-instance v0, Lm/b;

    invoke-direct {v0, p1}, Lm/b;-><init>(Lm/e;)V

    .line 20
    :try_start_0
    new-instance p1, Lm/c;

    invoke-direct {p1, v0}, Lm/c;-><init>(Lm/c$a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lm/q/l;->a(Ljava/lang/Throwable;)V

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    throw v0

    :catch_0
    move-exception p1

    .line 25
    throw p1

    :cond_6
    return-object p1
.end method
