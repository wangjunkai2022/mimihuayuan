.class public Lf/d/a/m/c;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field public a:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Lf/d/a/m/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/d/a/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/d/a/m/c;->a:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lf/d/a/m/c;->b:I

    .line 4
    iput v0, p0, Lf/d/a/m/c;->c:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/d/a/m/c;->e:Ljava/util/List;

    return-void
.end method
