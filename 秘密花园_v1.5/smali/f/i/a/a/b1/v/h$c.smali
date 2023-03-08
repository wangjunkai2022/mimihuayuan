.class public final Lf/i/a/a/b1/v/h$c;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lf/i/a/a/b1/v/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/v/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/b1/v/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lf/i/a/a/b1/n;
    .locals 5

    .line 1
    new-instance v0, Lf/i/a/a/b1/n$b;

    const-wide/16 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {v0, v3, v4, v1, v2}, Lf/i/a/a/b1/n$b;-><init>(JJ)V

    return-object v0
.end method

.method public c(Lf/i/a/a/b1/d;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    return-void
.end method
