.class public abstract Lm/o/d/j/k;
.super Lm/o/d/j/m;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lm/o/d/j/m<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final h:J


# instance fields
.field public consumerIndex:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lm/o/d/j/k;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lm/o/d/j/o;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lm/o/d/j/k;->h:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/o/d/j/m;-><init>(I)V

    return-void
.end method
