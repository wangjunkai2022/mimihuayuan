.class public abstract Lm/o/d/j/e;
.super Lm/o/d/j/g;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm/o/d/j/g<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final g:J


# instance fields
.field public volatile consumerIndex:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm/o/d/j/e;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lm/o/d/j/o;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lm/o/d/j/e;->g:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/o/d/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(JJ)Z
    .locals 8

    .line 1
    sget-object v0, Lm/o/d/j/o;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lm/o/d/j/e;->g:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
