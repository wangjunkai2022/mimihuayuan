.class public final Lf/i/a/a/j1/b$c;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lf/i/a/a/j1/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/l1/g;

.field public final b:F

.field public c:J

.field public d:[[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/i/a/a/l1/g;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/j1/b$c;->a:Lf/i/a/a/l1/g;

    .line 3
    iput p2, p0, Lf/i/a/a/j1/b$c;->b:F

    return-void
.end method
