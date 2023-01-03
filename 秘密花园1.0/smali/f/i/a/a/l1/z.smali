.class public final Lf/i/a/a/l1/z;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/l1/m$a;


# instance fields
.field public final a:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/i/a/a/l1/z;->a:Lf/i/a/a/l1/i0;

    return-void
.end method


# virtual methods
.method public createDataSource()Lf/i/a/a/l1/m;
    .locals 2

    .line 1
    new-instance v0, Lf/i/a/a/l1/y;

    invoke-direct {v0}, Lf/i/a/a/l1/y;-><init>()V

    .line 2
    iget-object v1, p0, Lf/i/a/a/l1/z;->a:Lf/i/a/a/l1/i0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/h;->c(Lf/i/a/a/l1/i0;)V

    :cond_0
    return-object v0
.end method
