.class public abstract Lm/o/d/j/n;
.super Lm/o/d/j/l;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm/o/d/j/l<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final g:J


# instance fields
.field public producerIndex:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm/o/d/j/n;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lm/o/d/j/o;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lm/o/d/j/n;->g:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/o/d/j/l;-><init>(I)V

    return-void
.end method
