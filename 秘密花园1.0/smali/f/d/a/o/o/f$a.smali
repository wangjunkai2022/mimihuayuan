.class public Lf/d/a/o/o/f$a;
.super Ljava/lang/Object;
.source "FileLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/o/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/f$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/o/f$a;->a:Lf/d/a/o/o/f$d;

    return-void
.end method


# virtual methods
.method public final b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/o/o/f;

    iget-object v0, p0, Lf/d/a/o/o/f$a;->a:Lf/d/a/o/o/f$d;

    invoke-direct {p1, v0}, Lf/d/a/o/o/f;-><init>(Lf/d/a/o/o/f$d;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
