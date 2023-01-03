.class public final Lf/i/a/a/h1/f0$c;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lf/i/a/a/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILf/i/a/a/b0;ILjava/lang/Object;JJ)V
    .locals 0
    .param p3    # Lf/i/a/a/b0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/h1/f0$c;->a:I

    .line 3
    iput p2, p0, Lf/i/a/a/h1/f0$c;->b:I

    .line 4
    iput-object p3, p0, Lf/i/a/a/h1/f0$c;->c:Lf/i/a/a/b0;

    .line 5
    iput p4, p0, Lf/i/a/a/h1/f0$c;->d:I

    .line 6
    iput-object p5, p0, Lf/i/a/a/h1/f0$c;->e:Ljava/lang/Object;

    .line 7
    iput-wide p6, p0, Lf/i/a/a/h1/f0$c;->f:J

    .line 8
    iput-wide p8, p0, Lf/i/a/a/h1/f0$c;->g:J

    return-void
.end method
