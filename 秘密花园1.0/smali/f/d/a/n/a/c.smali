.class public Lf/d/a/n/a/c;
.super Ljava/lang/Object;
.source "OkHttpUrlLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/n/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "Lf/d/a/o/o/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Li/f$a;


# direct methods
.method public constructor <init>(Li/f$a;)V
    .locals 0
    .param p1    # Li/f$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/n/a/c;->a:Li/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/o/g;

    .line 2
    new-instance p2, Lf/d/a/o/o/n$a;

    new-instance p3, Lf/d/a/n/a/b;

    iget-object p4, p0, Lf/d/a/n/a/c;->a:Li/f$a;

    invoke-direct {p3, p4, p1}, Lf/d/a/n/a/b;-><init>(Li/f$a;Lf/d/a/o/o/g;)V

    invoke-direct {p2, p1, p3}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lf/d/a/o/o/g;

    const/4 p1, 0x1

    return p1
.end method
