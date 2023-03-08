.class public final Lf/i/a/a/h1/u0/g$c;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Lf/i/a/a/h1/s0/d;

.field public b:Z

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/h1/u0/g$c;->a:Lf/i/a/a/h1/s0/d;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lf/i/a/a/h1/u0/g$c;->b:Z

    .line 4
    iput-object v0, p0, Lf/i/a/a/h1/u0/g$c;->c:Landroid/net/Uri;

    return-void
.end method
