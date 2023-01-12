.class public Lf/a/a/a/k$a;
.super Ljava/lang/Object;
.source "RangeLayoutHelperFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lf/a/a/a/k$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/a/a/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/a/k$b;

    check-cast p2, Lf/a/a/a/k$b;

    .line 2
    invoke-virtual {p1}, Lf/a/a/a/k$b;->a()I

    move-result p1

    invoke-virtual {p2}, Lf/a/a/a/k$b;->a()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
