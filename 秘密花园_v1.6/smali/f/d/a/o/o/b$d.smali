.class public Lf/d/a/o/o/b$d;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "[B",
        "Ljava/io/InputStream;",
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
    .locals 1
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
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/o/o/b;

    new-instance v0, Lf/d/a/o/o/b$d$a;

    invoke-direct {v0, p0}, Lf/d/a/o/o/b$d$a;-><init>(Lf/d/a/o/o/b$d;)V

    invoke-direct {p1, v0}, Lf/d/a/o/o/b;-><init>(Lf/d/a/o/o/b$b;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
