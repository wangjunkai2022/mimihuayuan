.class public final Lf/d/a/u/d;
.super Ljava/lang/Object;
.source "Executors.java"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/u/d$a;

    invoke-direct {v0}, Lf/d/a/u/d$a;-><init>()V

    sput-object v0, Lf/d/a/u/d;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lf/d/a/u/d$b;

    invoke-direct {v0}, Lf/d/a/u/d$b;-><init>()V

    sput-object v0, Lf/d/a/u/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
