.class public Lf/d/a/o/o/b;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/o/b$d;,
        Lf/d/a/o/o/b$a;,
        Lf/d/a/o/o/b$c;,
        Lf/d/a/o/o/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field public final a:Lf/d/a/o/o/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/d/a/o/o/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/o/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/d/a/o/o/b;->a:Lf/d/a/o/o/b$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILf/d/a/o/h;)Lf/d/a/o/o/n$a;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, [B

    .line 2
    new-instance p2, Lf/d/a/o/o/n$a;

    new-instance p3, Lf/d/a/t/d;

    invoke-direct {p3, p1}, Lf/d/a/t/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lf/d/a/o/o/b$c;

    iget-object v0, p0, Lf/d/a/o/o/b;->a:Lf/d/a/o/o/b$b;

    invoke-direct {p4, p1, v0}, Lf/d/a/o/o/b$c;-><init>([BLf/d/a/o/o/b$b;)V

    invoke-direct {p2, p3, p4}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, [B

    const/4 p1, 0x1

    return p1
.end method
