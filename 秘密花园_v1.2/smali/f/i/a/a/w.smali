.class public final Lf/i/a/a/w;
.super Ljava/lang/Exception;
.source "ExoPlaybackException.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Throwable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Lf/i/a/a/w;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/w;->b:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Exception;I)Lf/i/a/a/w;
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/w;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lf/i/a/a/w;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method
