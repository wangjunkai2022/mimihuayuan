.class public abstract Lf/i/a/a/h1/s0/d;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lf/i/a/a/l1/c0$e;


# instance fields
.field public final a:Lf/i/a/a/l1/p;

.field public final b:I

.field public final c:Lf/i/a/a/b0;

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:J

.field public final g:J

.field public final h:Lf/i/a/a/l1/g0;


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/m;Lf/i/a/a/l1/p;ILf/i/a/a/b0;ILjava/lang/Object;JJ)V
    .locals 1
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/i/a/a/l1/g0;

    invoke-direct {v0, p1}, Lf/i/a/a/l1/g0;-><init>(Lf/i/a/a/l1/m;)V

    iput-object v0, p0, Lf/i/a/a/h1/s0/d;->h:Lf/i/a/a/l1/g0;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lf/i/a/a/h1/s0/d;->a:Lf/i/a/a/l1/p;

    .line 4
    iput p3, p0, Lf/i/a/a/h1/s0/d;->b:I

    .line 5
    iput-object p4, p0, Lf/i/a/a/h1/s0/d;->c:Lf/i/a/a/b0;

    .line 6
    iput p5, p0, Lf/i/a/a/h1/s0/d;->d:I

    .line 7
    iput-object p6, p0, Lf/i/a/a/h1/s0/d;->e:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lf/i/a/a/h1/s0/d;->f:J

    .line 9
    iput-wide p9, p0, Lf/i/a/a/h1/s0/d;->g:J

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
