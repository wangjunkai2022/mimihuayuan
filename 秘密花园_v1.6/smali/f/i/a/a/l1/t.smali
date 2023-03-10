.class public final Lf/i/a/a/l1/t;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lf/i/a/a/l1/m$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lf/i/a/a/l1/i0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lf/i/a/a/l1/m$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/l1/i0;Lf/i/a/a/l1/m$a;)V
    .locals 0
    .param p2    # Lf/i/a/a/l1/i0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/t;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lf/i/a/a/l1/t;->b:Lf/i/a/a/l1/i0;

    .line 14
    iput-object p3, p0, Lf/i/a/a/l1/t;->c:Lf/i/a/a/l1/m$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/l1/m$a;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/t;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lf/i/a/a/l1/t;->b:Lf/i/a/a/l1/i0;

    .line 10
    iput-object p2, p0, Lf/i/a/a/l1/t;->c:Lf/i/a/a/l1/m$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lf/i/a/a/l1/v;

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lf/i/a/a/l1/v;-><init>(Ljava/lang/String;Lf/i/a/a/l1/i0;IIZ)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lf/i/a/a/l1/t;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lf/i/a/a/l1/t;->b:Lf/i/a/a/l1/i0;

    .line 6
    iput-object v6, p0, Lf/i/a/a/l1/t;->c:Lf/i/a/a/l1/m$a;

    return-void
.end method


# virtual methods
.method public createDataSource()Lf/i/a/a/l1/m;
    .locals 3

    .line 1
    new-instance v0, Lf/i/a/a/l1/s;

    iget-object v1, p0, Lf/i/a/a/l1/t;->a:Landroid/content/Context;

    iget-object v2, p0, Lf/i/a/a/l1/t;->c:Lf/i/a/a/l1/m$a;

    .line 2
    invoke-interface {v2}, Lf/i/a/a/l1/m$a;->createDataSource()Lf/i/a/a/l1/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/i/a/a/l1/s;-><init>(Landroid/content/Context;Lf/i/a/a/l1/m;)V

    .line 3
    iget-object v1, p0, Lf/i/a/a/l1/t;->b:Lf/i/a/a/l1/i0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lf/i/a/a/l1/s;->c(Lf/i/a/a/l1/i0;)V

    :cond_0
    return-object v0
.end method
