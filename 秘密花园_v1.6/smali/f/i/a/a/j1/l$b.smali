.class public Lf/i/a/a/j1/l$b;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lf/i/a/a/j1/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lf/i/a/a/j1/l;->a:Ljava/lang/String;

    iput-object v0, p0, Lf/i/a/a/j1/l$b;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lf/i/a/a/j1/l;->b:Ljava/lang/String;

    iput-object v0, p0, Lf/i/a/a/j1/l$b;->b:Ljava/lang/String;

    .line 4
    iget-boolean v0, p1, Lf/i/a/a/j1/l;->c:Z

    iput-boolean v0, p0, Lf/i/a/a/j1/l$b;->c:Z

    .line 5
    iget p1, p1, Lf/i/a/a/j1/l;->d:I

    iput p1, p0, Lf/i/a/a/j1/l$b;->d:I

    return-void
.end method
