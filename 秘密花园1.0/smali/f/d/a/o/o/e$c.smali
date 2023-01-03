.class public final Lf/d/a/o/o/e$c;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Lf/d/a/o/o/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/d/a/o/o/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/o<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/e$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/d/a/o/o/e$c$a;

    invoke-direct {v0, p0}, Lf/d/a/o/o/e$c$a;-><init>(Lf/d/a/o/o/e$c;)V

    iput-object v0, p0, Lf/d/a/o/o/e$c;->a:Lf/d/a/o/o/e$a;

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
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lf/d/a/o/o/e;

    iget-object v0, p0, Lf/d/a/o/o/e$c;->a:Lf/d/a/o/o/e$a;

    invoke-direct {p1, v0}, Lf/d/a/o/o/e;-><init>(Lf/d/a/o/o/e$a;)V

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
