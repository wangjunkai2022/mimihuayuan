.class public final Lf/d/a/o/n/b0/f;
.super Ljava/lang/Object;
.source "ByteArrayAdapter.java"

# interfaces
.implements Lf/d/a/o/n/b0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/n/b0/a<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteArrayPool"

    return-object v0
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    array-length p1, p1

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p1, p1, [B

    return-object p1
.end method
