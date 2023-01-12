.class public final Lf/i/a/a/j1/j$a;
.super Ljava/lang/Object;
.source "TrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/i/a/a/h1/o0;

.field public final b:[I

.field public final c:I

.field public final d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lf/i/a/a/h1/o0;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    .line 3
    iput-object p2, p0, Lf/i/a/a/j1/j$a;->b:[I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lf/i/a/a/j1/j$a;->c:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lf/i/a/a/j1/j$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lf/i/a/a/h1/o0;[IILjava/lang/Object;)V
    .locals 0
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lf/i/a/a/j1/j$a;->a:Lf/i/a/a/h1/o0;

    .line 8
    iput-object p2, p0, Lf/i/a/a/j1/j$a;->b:[I

    .line 9
    iput p3, p0, Lf/i/a/a/j1/j$a;->c:I

    .line 10
    iput-object p4, p0, Lf/i/a/a/j1/j$a;->d:Ljava/lang/Object;

    return-void
.end method
