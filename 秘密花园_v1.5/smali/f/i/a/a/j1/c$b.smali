.class public final Lf/i/a/a/j1/c$b;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lf/i/a/a/b0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/j1/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lf/i/a/a/b0;

    check-cast p2, Lf/i/a/a/b0;

    .line 2
    iget p2, p2, Lf/i/a/a/b0;->e:I

    iget p1, p1, Lf/i/a/a/b0;->e:I

    sub-int/2addr p2, p1

    return p2
.end method
