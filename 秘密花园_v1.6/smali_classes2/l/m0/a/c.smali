.class public Ll/m0/a/c;
.super Ljava/lang/Object;
.source "CallEnqueueOnSubscribe.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll/m0/a/b;


# direct methods
.method public constructor <init>(Ll/m0/a/d;Ll/m0/a/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ll/m0/a/c;->a:Ll/m0/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 0
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
    iget-object p1, p0, Ll/m0/a/c;->a:Ll/m0/a/b;

    invoke-virtual {p1, p2}, Ll/m0/a/b;->f(Ll/g0;)V

    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
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
    invoke-static {p2}, Lj/b;->B(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Ll/m0/a/c;->a:Ll/m0/a/b;

    invoke-virtual {p1, p2}, Ll/m0/a/b;->e(Ljava/lang/Throwable;)V

    return-void
.end method
