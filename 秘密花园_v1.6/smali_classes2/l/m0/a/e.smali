.class public final Ll/m0/a/e;
.super Ljava/lang/Object;
.source "CallExecuteOnSubscribe.java"

# interfaces
.implements Lm/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/e$a<",
        "Ll/g0<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/m0/a/e;->a:Ll/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lm/j;

    .line 2
    iget-object v0, p0, Ll/m0/a/e;->a:Ll/d;

    invoke-interface {v0}, Ll/d;->V()Ll/d;

    move-result-object v0

    .line 3
    new-instance v1, Ll/m0/a/b;

    invoke-direct {v1, v0, p1}, Ll/m0/a/b;-><init>(Ll/d;Lm/j;)V

    .line 4
    invoke-virtual {p1, v1}, Lm/j;->b(Lm/k;)V

    .line 5
    invoke-virtual {p1, v1}, Lm/j;->i(Lm/f;)V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ll/d;->T()Ll/g0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1, p1}, Ll/m0/a/b;->f(Ll/g0;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {v1, p1}, Ll/m0/a/b;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
