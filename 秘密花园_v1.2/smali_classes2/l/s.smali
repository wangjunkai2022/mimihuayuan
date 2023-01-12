.class public final Ll/s;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

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
.field public final synthetic a:Lkotlinx/coroutines/CancellableContinuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/s;->a:Lkotlinx/coroutines/CancellableContinuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;",
            "Ll/g0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Ll/g0;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object p2, p2, Ll/g0;->b:Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 3
    invoke-interface {p1}, Ll/d;->S()Li/e0;

    move-result-object p1

    const-class p2, Ll/p;

    .line 4
    iget-object p1, p1, Li/e0;->f:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "call.request().tag(Invocation::class.java)!!"

    .line 5
    invoke-static {p1, p2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ll/p;

    .line 6
    iget-object p1, p1, Ll/p;->a:Ljava/lang/reflect/Method;

    .line 7
    new-instance p2, Lh/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "method"

    .line 8
    invoke-static {p1, v1}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "method.declaringClass"

    invoke-static {v1, v2}, Lh/o/c/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Lh/a;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Ll/s;->a:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lh/m/a;

    invoke-static {p2}, Lc/a/a/b/g/h;->B(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lh/m/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lh/o/c/g;->e()V

    throw v0

    .line 13
    :cond_1
    iget-object p1, p0, Ll/s;->a:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lh/m/a;

    invoke-interface {p1, p2}, Lh/m/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Ll/s;->a:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lh/m/a;

    new-instance v0, Ll/n;

    invoke-direct {v0, p2}, Ll/n;-><init>(Ll/g0;)V

    invoke-static {v0}, Lc/a/a/b/g/h;->B(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lh/m/a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    const-string p1, "response"

    .line 15
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Ll/s;->a:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lh/m/a;

    invoke-static {p2}, Lc/a/a/b/g/h;->B(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lh/m/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "t"

    .line 2
    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "call"

    invoke-static {p1}, Lh/o/c/g;->f(Ljava/lang/String;)V

    throw v0
.end method
