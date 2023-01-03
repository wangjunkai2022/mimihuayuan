.class public abstract Lh/o/c/i;
.super Lh/o/c/k;
.source "PropertyReference1.java"

# interfaces
.implements Lh/q/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/o/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lh/q/d$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/o/c/b;->a()Lh/q/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 2
    check-cast v0, Lh/q/e;

    .line 3
    check-cast v0, Lh/q/d;

    invoke-interface {v0}, Lh/q/d;->c()Lh/q/d$a;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lh/o/a;

    invoke-direct {v0}, Lh/o/a;-><init>()V

    throw v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lh/q/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
