.class public Lf/d/a/o/o/f$e;
.super Lf/d/a/o/o/f$a;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/d/a/o/o/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/o/f$e$a;

    invoke-direct {v0}, Lf/d/a/o/o/f$e$a;-><init>()V

    invoke-direct {p0, v0}, Lf/d/a/o/o/f$a;-><init>(Lf/d/a/o/o/f$d;)V

    return-void
.end method
