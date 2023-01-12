.class public final Lf/i/a/a/e1/w;
.super Ljava/lang/Object;
.source "DownloaderConstructorHelper.java"


# instance fields
.field public final a:Lf/i/a/a/l1/k0/b;

.field public final b:Lf/i/a/a/l1/k0/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lf/i/a/a/m1/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lf/i/a/a/l1/k0/f;

.field public final e:Lf/i/a/a/l1/k0/f;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Lf/i/a/a/l1/z;

    invoke-direct {v8}, Lf/i/a/a/l1/z;-><init>()V

    .line 3
    new-instance v4, Lf/i/a/a/l1/k0/d;

    const-wide/32 v0, 0x500000

    invoke-direct {v4, p1, v0, v1}, Lf/i/a/a/l1/k0/d;-><init>(Lf/i/a/a/l1/k0/b;J)V

    .line 4
    new-instance v9, Lf/i/a/a/l1/k0/f;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/f;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k$a;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    iput-object v9, p0, Lf/i/a/a/e1/w;->d:Lf/i/a/a/l1/k0/f;

    .line 5
    new-instance p2, Lf/i/a/a/l1/k0/f;

    sget-object v2, Lf/i/a/a/l1/x;->a:Lf/i/a/a/l1/m$a;

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lf/i/a/a/l1/k0/f;-><init>(Lf/i/a/a/l1/k0/b;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/m$a;Lf/i/a/a/l1/k$a;ILf/i/a/a/l1/k0/e$a;Lf/i/a/a/l1/k0/j;)V

    iput-object p2, p0, Lf/i/a/a/e1/w;->e:Lf/i/a/a/l1/k0/f;

    .line 6
    iput-object p1, p0, Lf/i/a/a/e1/w;->a:Lf/i/a/a/l1/k0/b;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lf/i/a/a/e1/w;->c:Lf/i/a/a/m1/x;

    .line 8
    iput-object p1, p0, Lf/i/a/a/e1/w;->b:Lf/i/a/a/l1/k0/j;

    return-void
.end method
