.class public abstract Lf/i/a/a/b1/r/d;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/r/d$a;
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/b1/p;


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/b1/r/d;->a:Lf/i/a/a/b1/p;

    return-void
.end method


# virtual methods
.method public final a(Lf/i/a/a/m1/u;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lf/i/a/a/b1/r/d;->b(Lf/i/a/a/m1/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lf/i/a/a/b1/r/d;->c(Lf/i/a/a/m1/u;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Lf/i/a/a/m1/u;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation
.end method

.method public abstract c(Lf/i/a/a/m1/u;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf/i/a/a/h0;
        }
    .end annotation
.end method
