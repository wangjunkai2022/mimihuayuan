.class public final Lf/d/a/u/j/a;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/u/j/a$c;,
        Lf/d/a/u/j/a$d;,
        Lf/d/a/u/j/a$e;,
        Lf/d/a/u/j/a$b;
    }
.end annotation


# static fields
.field public static final a:Lf/d/a/u/j/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/u/j/a$e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/u/j/a$a;

    invoke-direct {v0}, Lf/d/a/u/j/a$a;-><init>()V

    sput-object v0, Lf/d/a/u/j/a;->a:Lf/d/a/u/j/a$e;

    return-void
.end method

.method public static a(ILf/d/a/u/j/a$b;)Landroidx/core/util/Pools$Pool;
    .locals 2
    .param p1    # Lf/d/a/u/j/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lf/d/a/u/j/a$d;",
            ">(I",
            "Lf/d/a/u/j/a$b<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 2
    sget-object p0, Lf/d/a/u/j/a;->a:Lf/d/a/u/j/a$e;

    .line 3
    new-instance v1, Lf/d/a/u/j/a$c;

    invoke-direct {v1, v0, p1, p0}, Lf/d/a/u/j/a$c;-><init>(Landroidx/core/util/Pools$Pool;Lf/d/a/u/j/a$b;Lf/d/a/u/j/a$e;)V

    return-object v1
.end method
