.class public Lf/a/a/a/k$b;
.super Ljava/lang/Object;
.source "RangeLayoutHelperFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lf/a/a/a/a;


# direct methods
.method public constructor <init>(Lf/a/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/k$b;->a:Lf/a/a/a/a;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/k$b;->a:Lf/a/a/a/a;

    .line 2
    iget-object v0, v0, Lf/a/a/a/a;->a:Lf/a/a/a/j;

    .line 3
    iget-object v0, v0, Lf/a/a/a/j;->a:Ljava/lang/Comparable;

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
