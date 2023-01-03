.class public Ll/m$b$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/m$b;->X(Ll/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/f;

.field public final synthetic b:Ll/m$b;


# direct methods
.method public constructor <init>(Ll/m$b;Ll/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m$b$a;->b:Ll/m$b;

    iput-object p2, p0, Ll/m$b$a;->a:Ll/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;",
            "Ll/g0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ll/m$b$a;->b:Ll/m$b;

    iget-object p1, p1, Ll/m$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ll/m$b$a;->a:Ll/f;

    new-instance v1, Ll/a;

    invoke-direct {v1, p0, v0, p2}, Ll/a;-><init>(Ll/m$b$a;Ll/f;Ll/g0;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ll/m$b$a;->b:Ll/m$b;

    iget-object p1, p1, Ll/m$b;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ll/m$b$a;->a:Ll/f;

    new-instance v1, Ll/b;

    invoke-direct {v1, p0, v0, p2}, Ll/b;-><init>(Ll/m$b$a;Ll/f;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic c(Ll/f;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m$b$a;->b:Ll/m$b;

    invoke-interface {p1, v0, p2}, Ll/f;->b(Ll/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic d(Ll/f;Ll/g0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/m$b$a;->b:Ll/m$b;

    iget-object v0, v0, Ll/m$b;->b:Ll/d;

    invoke-interface {v0}, Ll/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Ll/m$b$a;->b:Ll/m$b;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ll/f;->b(Ll/d;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ll/m$b$a;->b:Ll/m$b;

    invoke-interface {p1, v0, p2}, Ll/f;->a(Ll/d;Ll/g0;)V

    :goto_0
    return-void
.end method
