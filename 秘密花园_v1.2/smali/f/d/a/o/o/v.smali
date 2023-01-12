.class public Lf/d/a/o/o/v;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lf/d/a/o/o/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/d/a/o/o/v$a;,
        Lf/d/a/o/o/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/o/n<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lf/d/a/o/o/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/o/v<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/o/v;

    invoke-direct {v0}, Lf/d/a/o/o/v;-><init>()V

    sput-object v0, Lf/d/a/o/o/v;->a:Lf/d/a/o/o/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lf/d/a/o/h;",
            ")",
            "Lf/d/a/o/o/n$a<",
            "TModel;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Lf/d/a/o/o/n$a;

    new-instance p3, Lf/d/a/t/d;

    invoke-direct {p3, p1}, Lf/d/a/t/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lf/d/a/o/o/v$b;

    invoke-direct {p4, p1}, Lf/d/a/o/o/v$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lf/d/a/o/o/n$a;-><init>(Lf/d/a/o/f;Lf/d/a/o/m/d;)V

    return-object p2
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
