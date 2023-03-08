.class public final Ll/m$b;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Ll/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ll/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ll/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ll/d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll/m$b;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Ll/m$b;->b:Ll/d;

    return-void
.end method


# virtual methods
.method public S()Li/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m$b;->b:Ll/d;

    invoke-interface {v0}, Ll/d;->S()Li/e0;

    move-result-object v0

    return-object v0
.end method

.method public T()Ll/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/g0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/m$b;->b:Ll/d;

    invoke-interface {v0}, Ll/d;->T()Ll/g0;

    move-result-object v0

    return-object v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m$b;->b:Ll/d;

    invoke-interface {v0}, Ll/d;->U()Z

    move-result v0

    return v0
.end method

.method public V()Ll/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll/m$b;

    iget-object v1, p0, Ll/m$b;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ll/m$b;->b:Ll/d;

    invoke-interface {v2}, Ll/d;->V()Ll/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ll/m$b;-><init>(Ljava/util/concurrent/Executor;Ll/d;)V

    return-object v0
.end method

.method public X(Ll/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/f<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll/m$b;->b:Ll/d;

    new-instance v1, Ll/m$b$a;

    invoke-direct {v1, p0, p1}, Ll/m$b$a;-><init>(Ll/m$b;Ll/f;)V

    invoke-interface {v0, v1}, Ll/d;->X(Ll/f;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/m$b;->b:Ll/d;

    invoke-interface {v0}, Ll/d;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll/m$b;->V()Ll/d;

    move-result-object v0

    return-object v0
.end method
