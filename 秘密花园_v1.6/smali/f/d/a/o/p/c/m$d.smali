.class public Lf/d/a/o/p/c/m$d;
.super Lf/d/a/o/p/c/m;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/p/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/d/a/o/p/c/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lf/d/a/o/p/c/m$e;
    .locals 0

    .line 1
    sget-object p1, Lf/d/a/o/p/c/m$e;->b:Lf/d/a/o/p/c/m$e;

    return-object p1
.end method

.method public b(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
