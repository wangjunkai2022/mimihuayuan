.class public final Lf/i/a/a/i1/t/f$b;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/i1/t/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lf/i/a/a/i1/t/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lf/i/a/a/i1/t/d;


# direct methods
.method public constructor <init>(ILf/i/a/a/i1/t/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lf/i/a/a/i1/t/f$b;->a:I

    .line 3
    iput-object p2, p0, Lf/i/a/a/i1/t/f$b;->b:Lf/i/a/a/i1/t/d;

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
    check-cast p1, Lf/i/a/a/i1/t/f$b;

    .line 2
    iget v0, p0, Lf/i/a/a/i1/t/f$b;->a:I

    iget p1, p1, Lf/i/a/a/i1/t/f$b;->a:I

    sub-int/2addr v0, p1

    return v0
.end method
