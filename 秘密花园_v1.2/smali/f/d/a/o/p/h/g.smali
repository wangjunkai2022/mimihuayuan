.class public Lf/d/a/o/p/h/g;
.super Ljava/lang/Object;
.source "UnitTranscoder.java"

# interfaces
.implements Lf/d/a/o/p/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/p/h/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Lf/d/a/o/p/h/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/p/h/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/p/h/g;

    invoke-direct {v0}, Lf/d/a/o/p/h/g;-><init>()V

    sput-object v0, Lf/d/a/o/p/h/g;->a:Lf/d/a/o/p/h/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/d/a/o/n/w;Lf/d/a/o/h;)Lf/d/a/o/n/w;
    .locals 0
    .param p1    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/d/a/o/n/w<",
            "TZ;>;",
            "Lf/d/a/o/h;",
            ")",
            "Lf/d/a/o/n/w<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
