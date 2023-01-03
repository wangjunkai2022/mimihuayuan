.class public abstract Lh/o/c/b;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lh/q/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/o/c/b$a;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field public transient a:Lh/q/a;

.field public final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lh/o/c/b$a;->a:Lh/o/c/b$a;

    .line 2
    sput-object v0, Lh/o/c/b;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lh/o/c/b;->c:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lh/o/c/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lh/q/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lh/o/c/b;->a:Lh/q/a;

    if-nez v0, :cond_1

    .line 2
    move-object v0, p0

    check-cast v0, Lh/o/c/i;

    .line 3
    sget-object v1, Lh/o/c/l;->a:Lh/o/c/m;

    if-eqz v1, :cond_0

    .line 4
    iput-object v0, p0, Lh/o/c/b;->a:Lh/q/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Lh/o/c/k;

    .line 2
    invoke-virtual {v0}, Lh/o/c/b;->a()Lh/q/a;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 3
    check-cast v1, Lh/q/e;

    .line 4
    invoke-interface {v1, p1}, Lh/q/a;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lh/o/a;

    invoke-direct {p1}, Lh/o/a;-><init>()V

    throw p1
.end method
