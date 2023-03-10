.class public Lf/d/a/o/o/u$b;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
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
.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 3
    .param p1    # Lf/d/a/o/o/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/d/a/o/o/u;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Lf/d/a/o/o/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Lf/d/a/o/o/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/d/a/o/o/u;-><init>(Lf/d/a/o/o/n;)V

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
