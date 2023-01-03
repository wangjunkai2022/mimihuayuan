.class public Lf/d/a/o/o/y/a$a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/y/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "Lf/d/a/o/o/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/m<",
            "Lf/d/a/o/o/g;",
            "Lf/d/a/o/o/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/o/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lf/d/a/o/o/m;-><init>(J)V

    iput-object v0, p0, Lf/d/a/o/o/y/a$a;->a:Lf/d/a/o/o/m;

    return-void
.end method


# virtual methods
.method public b(Lf/d/a/o/o/r;)Lf/d/a/o/o/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/r;",
            ")",
            "Lf/d/a/o/o/n<",
            "Lf/d/a/o/o/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/o/o/y/a;

    iget-object v0, p0, Lf/d/a/o/o/y/a$a;->a:Lf/d/a/o/o/m;

    invoke-direct {p1, v0}, Lf/d/a/o/o/y/a;-><init>(Lf/d/a/o/o/m;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
