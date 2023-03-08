.class public abstract Lm/o/d/j/h;
.super Lm/o/d/j/f;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm/o/d/j/f<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final f:J


# instance fields
.field public volatile producerIndex:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm/o/d/j/h;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lm/o/d/j/o;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lm/o/d/j/h;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/o/d/j/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(J)V
    .locals 6

    .line 1
    sget-object v0, Lm/o/d/j/o;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lm/o/d/j/h;->f:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    return-void
.end method
