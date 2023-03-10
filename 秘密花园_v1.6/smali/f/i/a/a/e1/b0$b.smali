.class public Lf/i/a/a/e1/b0$b;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/e1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lf/i/a/a/e1/b0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lf/i/a/a/l1/p;


# direct methods
.method public constructor <init>(JLf/i/a/a/l1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lf/i/a/a/e1/b0$b;->a:J

    .line 3
    iput-object p3, p0, Lf/i/a/a/e1/b0$b;->b:Lf/i/a/a/l1/p;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/i/a/a/e1/b0$b;

    .line 2
    iget-wide v0, p0, Lf/i/a/a/e1/b0$b;->a:J

    iget-wide v2, p1, Lf/i/a/a/e1/b0$b;->a:J

    invoke-static {v0, v1, v2, v3}, Lf/i/a/a/m1/h0;->m(JJ)I

    move-result p1

    return p1
.end method
