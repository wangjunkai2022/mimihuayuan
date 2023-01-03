.class public final Lm/o/c/d;
.super Lm/g;
.source "NewThreadScheduler.java"


# instance fields
.field public final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/g;-><init>()V

    .line 2
    iput-object p1, p0, Lm/o/c/d;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public a()Lm/g$a;
    .locals 2

    .line 1
    new-instance v0, Lm/o/c/f;

    iget-object v1, p0, Lm/o/c/d;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lm/o/c/f;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
