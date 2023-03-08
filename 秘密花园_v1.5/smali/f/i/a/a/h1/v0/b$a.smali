.class public final Lf/i/a/a/h1/v0/b$a;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lf/i/a/a/h1/v0/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/v0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/m$a;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/v0/b$a;->a:Lf/i/a/a/l1/m$a;

    return-void
.end method


# virtual methods
.method public a(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/v0/e/a;ILf/i/a/a/j1/j;Lf/i/a/a/l1/i0;)Lf/i/a/a/h1/v0/c;
    .locals 7
    .param p5    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lf/i/a/a/h1/v0/b$a;->a:Lf/i/a/a/l1/m$a;

    invoke-interface {v0}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v6

    if-eqz p5, :cond_0

    .line 2
    invoke-interface {v6, p5}, Lf/i/a/a/l1/m;->c(Lf/i/a/a/l1/i0;)V

    .line 3
    :cond_0
    new-instance p5, Lf/i/a/a/h1/v0/b;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lf/i/a/a/h1/v0/b;-><init>(Lf/i/a/a/l1/d0;Lf/i/a/a/h1/v0/e/a;ILf/i/a/a/j1/j;Lf/i/a/a/l1/m;)V

    return-object p5
.end method
