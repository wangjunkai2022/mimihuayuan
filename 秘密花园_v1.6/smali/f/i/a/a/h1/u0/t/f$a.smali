.class public final Lf/i/a/a/h1/u0/t/f$a;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u0/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lf/i/a/a/h1/u0/t/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:J

.field public final d:I

.field public final e:J

.field public final f:Lf/i/a/a/z0/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:J

.field public final j:J

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf/i/a/a/h1/u0/t/f$a;Ljava/lang/String;JIJLf/i/a/a/z0/e;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 3
    .param p2    # Lf/i/a/a/h1/u0/t/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lf/i/a/a/z0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f$a;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f$a;->b:Lf/i/a/a/h1/u0/t/f$a;

    move-wide v1, p4

    .line 4
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f$a;->c:J

    move v1, p6

    .line 5
    iput v1, v0, Lf/i/a/a/h1/u0/t/f$a;->d:I

    move-wide v1, p7

    .line 6
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f$a;->e:J

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f$a;->f:Lf/i/a/a/z0/e;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f$a;->g:Ljava/lang/String;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lf/i/a/a/h1/u0/t/f$a;->h:Ljava/lang/String;

    move-wide v1, p12

    .line 10
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f$a;->i:J

    move-wide/from16 v1, p14

    .line 11
    iput-wide v1, v0, Lf/i/a/a/h1/u0/t/f$a;->j:J

    move/from16 v1, p16

    .line 12
    iput-boolean v1, v0, Lf/i/a/a/h1/u0/t/f$a;->k:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Long;

    .line 2
    iget-wide v0, p0, Lf/i/a/a/h1/u0/t/f$a;->e:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lf/i/a/a/h1/u0/t/f$a;->e:J

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
