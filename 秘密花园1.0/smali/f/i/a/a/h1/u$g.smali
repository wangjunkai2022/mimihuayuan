.class public final Lf/i/a/a/h1/u$g;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/h1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lf/i/a/a/h1/u$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/e0;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/h1/w;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lf/i/a/a/h1/u$c;

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lf/i/a/a/h1/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/h1/u$g;->a:Lf/i/a/a/h1/e0;

    .line 3
    invoke-interface {p1}, Lf/i/a/a/h1/e0;->a()Ljava/lang/Object;

    move-result-object p1

    .line 4
    new-instance v0, Lf/i/a/a/h1/u$c;

    new-instance v1, Lf/i/a/a/h1/u$e;

    invoke-direct {v1, p1}, Lf/i/a/a/h1/u$e;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lf/i/a/a/h1/u$c;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lf/i/a/a/h1/u$c;-><init>(Lf/i/a/a/u0;Ljava/lang/Object;)V

    .line 5
    iput-object v0, p0, Lf/i/a/a/h1/u$g;->d:Lf/i/a/a/h1/u$c;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u$g;->c:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/i/a/a/h1/u$g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/i/a/a/h1/u$g;

    .line 2
    iget v0, p0, Lf/i/a/a/h1/u$g;->g:I

    iget p1, p1, Lf/i/a/a/h1/u$g;->g:I

    sub-int/2addr v0, p1

    return v0
.end method
